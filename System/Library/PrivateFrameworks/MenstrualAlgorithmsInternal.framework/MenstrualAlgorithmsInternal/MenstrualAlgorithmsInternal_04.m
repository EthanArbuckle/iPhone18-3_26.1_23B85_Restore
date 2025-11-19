void *std::vector<unsigned long>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<Nightingale::PhaseSet>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::lunaMTSpecs>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x3333333333333334)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<Nightingale::lunaMTSpecs>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x3333333333333334)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::lunaMTSpecs>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<Nightingale::lunaMTPreparedData>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 15;
        std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:nn200100]<Nightingale::lunaMTPreparedData,void,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:nn200100]<Nightingale::lunaMTPreparedData,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[10];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a2[7];
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;
    operator delete(v5);
  }

  v6 = a2[1];
  if (v6)
  {
    a2[2] = v6;

    operator delete(v6);
  }
}

char *std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t std::vector<BOOL>::__init_with_size[abi:nn200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void *std::vector<BOOL>::__construct_at_end<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(void *result, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*result + 8 * v6) = 0;
  }

  if (a2 != a3)
  {
    v7 = v4 & 0x3F;
    v8 = (*result + 8 * (v4 >> 6));
    do
    {
      v9 = 1 << v7;
      if (*a2)
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      ++a2;
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t std::vector<Nightingale::lunaMTPreparedData>::__emplace_back_slow_path<Nightingale::lunaMTPreparedData const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::lunaMTPreparedData>>(a1, v6);
  }

  v7 = 120 * v2;
  *v7 = *a2;
  std::vector<int>::vector[abi:nn200100]((v7 + 8), (a2 + 8));
  std::vector<int>::vector[abi:nn200100]((v7 + 32), (a2 + 32));
  std::vector<BOOL>::vector((v7 + 56), a2 + 56);
  std::vector<BOOL>::vector((v7 + 80), a2 + 80);
  *(v7 + 104) = *(a2 + 104);
  v8 = v7 + 120;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::lunaMTPreparedData>,Nightingale::lunaMTPreparedData*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<Nightingale::lunaMTPreparedData>::~__split_buffer(v14);
  return v8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::lunaMTPreparedData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::lunaMTPreparedData>,Nightingale::lunaMTPreparedData*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v7 + 1);
      *(a4 + 24) = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 2);
      v8 = v7[7];
      *(a4 + 48) = v7[6];
      v7[5] = 0;
      v7[6] = 0;
      v7[4] = 0;
      *(a4 + 56) = v8;
      *(a4 + 64) = *(v7 + 4);
      v7[8] = 0;
      v7[9] = 0;
      v7[7] = 0;
      *(a4 + 80) = v7[10];
      *(a4 + 88) = *(v7 + 11);
      v7[10] = 0;
      v7[11] = 0;
      v7[12] = 0;
      *(a4 + 104) = *(v7 + 13);
      v7 += 15;
      a4 += 120;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:nn200100]<Nightingale::lunaMTPreparedData,void,0>(a1, v5);
      v5 += 15;
    }
  }
}

void **std::__split_buffer<Nightingale::lunaMTPreparedData>::~__split_buffer(void **a1)
{
  std::__split_buffer<Nightingale::lunaMTPreparedData>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::lunaMTPreparedData>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 120;
    std::allocator_traits<std::allocator<Nightingale::lunaMTPreparedData>>::destroy[abi:nn200100]<Nightingale::lunaMTPreparedData,void,0>(v4, (i - 120));
  }
}

BOOL Nightingale::FwPredictorWrapper_t::init(Nightingale::FwPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  if ((*(a2 + 200) & 1) == 0 || ((v3 = a2, v4 = 0x277CCA000, v7 = a2 + 176, v6 = *(a2 + 22), *(a2 + 199) >= 0) ? (v8 = a2 + 176) : (v8 = *(a2 + 22)), [MEMORY[0x277CCACA8] stringWithUTF8String:v8], v9 = objc_claimAutoreleasedReturnValue(), (v7[56] & 1) == 0))
  {
    v43 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v43);
  }

  v10 = v9;
  v13 = *(v3 + 26);
  v12 = v3 + 208;
  v11 = v13;
  if (v12[23] >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
  v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
  v18 = objc_opt_new();
  v19 = *(this + 3);
  *(this + 3) = v18;

  if (!*(this + 3))
  {
    goto LABEL_18;
  }

  v20 = objc_opt_new();
  v21 = *(this + 2);
  *(this + 2) = v20;

  if (!*(this + 2))
  {
    goto LABEL_18;
  }

  [*(this + 3) setComputeUnits:0];
  v47 = 0;
  v22 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9EB0 dataType:65600 error:&v47];
  v23 = v47;
  v24 = *(this + 1);
  *(this + 1) = v22;

  if (!*(this + 1))
  {
    goto LABEL_20;
  }

  v25 = [fwEnddet_lstm alloc];
  v26 = *(this + 3);
  v46 = v23;
  v27 = [(fwEnddet_lstm *)v25 initWithContentsOfURL:v16 configuration:v26 error:&v46];
  v28 = v46;

  v29 = *(this + 7);
  *(this + 7) = v27;

  if (!v28)
  {
    v31 = objc_opt_new();
    v32 = *(this + 3);
    *(this + 3) = v31;

    if (*(this + 3))
    {
      v33 = objc_opt_new();
      v34 = *(this + 2);
      *(this + 2) = v33;

      if (*(this + 2))
      {
        [*(this + 3) setComputeUnits:0];
        v45 = 0;
        v35 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9EC8 dataType:65600 error:&v45];
        v23 = v45;
        v36 = *this;
        *this = v35;

        if (*this)
        {
          v37 = [fwEnddet_rf alloc];
          v38 = *(this + 3);
          v44 = v23;
          v39 = [(fwEnddet_rf *)v37 initWithContentsOfURL:v17 configuration:v38 error:&v44];
          v40 = v44;

          v41 = *(this + 5);
          *(this + 5) = v39;

          v30 = v40 == 0;
          v23 = v40;
          goto LABEL_19;
        }

LABEL_20:
        v30 = 0;
        goto LABEL_19;
      }
    }

LABEL_18:
    v30 = 0;
    v23 = 0;
    goto LABEL_19;
  }

  v30 = 0;
  v23 = v28;
LABEL_19:

  return v30;
}

id **std::unique_ptr<Nightingale::FwPredictorWrapper_t>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x259C8E7C0](v2, 0x80C40A284212CLL);
  }

  return a1;
}

BOOL Nightingale::PeriodPredictorWrapper_t::init(Nightingale::PeriodPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  if ((*(a2 + 168) & 1) == 0)
  {
    v24 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v24);
  }

  v6 = *(a2 + 18);
  v4 = a2 + 144;
  v5 = v6;
  if (v4[23] >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v10 = objc_opt_new();
  v11 = *(this + 2);
  *(this + 2) = v10;

  if (*(this + 2) && (v12 = objc_opt_new(), v13 = *(this + 1), *(this + 1) = v12, v13, *(this + 1)))
  {
    [*(this + 2) setComputeUnits:0];
    v26 = 0;
    v14 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9EE0 dataType:65600 error:&v26];
    v15 = v26;
    v16 = *this;
    *this = v14;

    if (*this)
    {
      v17 = [period_lstm alloc];
      v18 = *(this + 2);
      v25 = v15;
      v19 = [(period_lstm *)v17 initWithContentsOfURL:v9 configuration:v18 error:&v25];
      v20 = v25;

      v21 = *(this + 4);
      *(this + 4) = v19;

      v22 = v20 == 0;
      v15 = v20;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v15 = 0;
  }

  return v22;
}

double Nightingale::FwPredictorWrapper_t::FwPredictorWrapper_t(Nightingale::FwPredictorWrapper_t *this)
{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

double Nightingale::PeriodPredictorWrapper_t::PeriodPredictorWrapper_t(Nightingale::PeriodPredictorWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

BOOL Nightingale::periodPredictorWrapper_t::init(Nightingale::periodPredictorWrapper_t *this, const Nightingale::ngt_Config *a2)
{
  if ((*(a2 + 264) & 1) == 0)
  {
    v31 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v31);
  }

  v8 = *(a2 + 30);
  v6 = a2 + 240;
  v7 = v8;
  if (v6[23] >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v12 = objc_opt_new();
  v13 = *(this + 2);
  *(this + 2) = v12;

  v14 = *(this + 2);
  if (!v14)
  {
    v17 = 0;
    goto LABEL_14;
  }

  [v14 setComputeUnits:0];
  v15 = *(this + 2);
  v33 = 0;
  v16 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v11 configuration:v15 error:&v33];
  v17 = v33;
  v18 = *(this + 4);
  *(this + 4) = v16;

  if (v17)
  {
LABEL_14:
    v27 = 0;
    goto LABEL_15;
  }

  v19 = [*(this + 4) modelDescription];
  v20 = [v19 inputDescriptionsByName];
  v21 = [v20 objectForKeyedSubscript:@"in"];
  v22 = [v21 multiArrayConstraint];
  v23 = [v22 shape];

  v24 = [v23 objectAtIndexedSubscript:0];
  if ([v23 count] == 1 && objc_msgSend(v24, "intValue") == 5)
  {

    v23 = &unk_2869C9EF8;
  }

  v32 = 0;
  v25 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v23 dataType:65600 error:&v32];
  v17 = v32;
  v26 = *this;
  *this = v25;

  v27 = *this != 0;
  if (*this)
  {
    v28 = [[model_period_LstmInput alloc] initWithIn:*this lstm_1_h_in:0 lstm_1_c_in:0];
    v29 = *(this + 3);
    *(this + 3) = v28;
  }

LABEL_15:
  return v27;
}

double Nightingale::periodPredictorWrapper_t::periodPredictorWrapper_t(Nightingale::periodPredictorWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t Nightingale::periodPredictorTransformerWrapper_t::init(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = objc_opt_new();
  v7 = a1[2];
  a1[2] = v6;

  v8 = a1[2];
  if (v8)
  {
    [v8 setComputeUnits:0];
    v9 = a1[2];
    v20 = 0;
    v10 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v5 configuration:v9 error:&v20];
    v11 = v20;
    v12 = a1[4];
    a1[4] = v10;

    if (v11 || (v19 = 0, v14 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9F10 dataType:65568 error:&v19], v11 = v19, v15 = *a1, *a1 = v14, v15, !*a1))
    {
      v13 = 0;
    }

    else
    {
      v16 = [[model_period_TFInput alloc] initWithIn:*a1];
      v17 = a1[3];
      a1[3] = v16;

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  return v13;
}

double Nightingale::periodPredictorTransformerWrapper_t::periodPredictorTransformerWrapper_t(Nightingale::periodPredictorTransformerWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t Nightingale::periodPredictorEnsembleWrapper_t::init(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = objc_opt_new();
  v7 = a1[2];
  a1[2] = v6;

  v8 = a1[2];
  if (v8)
  {
    [v8 setComputeUnits:0];
    v9 = a1[2];
    v20 = 0;
    v10 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v5 configuration:v9 error:&v20];
    v11 = v20;
    v12 = a1[4];
    a1[4] = v10;

    if (v11 || (v19 = 0, v14 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2869C9F28 dataType:65568 error:&v19], v11 = v19, v15 = *a1, *a1 = v14, v15, !*a1))
    {
      v13 = 0;
    }

    else
    {
      v16 = [[model_period_EnsembleInput alloc] initWithIn:*a1];
      v17 = a1[3];
      a1[3] = v16;

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  return v13;
}

uint64_t Nightingale::periodPredictorEnsembleWrapper_t::predictPeriod(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = [*a1 dataPointer];
  if (v6 != v5)
  {
    memmove(v7, v5, v6 - v5);
  }

  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v19 = 0;
  v10 = [v8 predictionFromFeatures:v9 error:&v19];
  v11 = v19;
  v12 = [model_period_TFOutput alloc];
  v13 = [v10 featureValueForName:@"out"];
  v14 = [v13 multiArrayValue];
  v15 = [(model_period_TFOutput *)v12 initWithOut:v14];

  v16 = [(model_period_TFOutput *)v15 out];
  v17 = [v16 objectAtIndexedSubscript:0];
  *a3 = [v17 intValue];

  return 0;
}

double Nightingale::periodPredictorEnsembleWrapper_t::periodPredictorEnsembleWrapper_t(Nightingale::periodPredictorEnsembleWrapper_t *this)
{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 4) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

double Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(Nightingale::wristTemperatureInputAcquisition *this)
{
  v1 = Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *(v1 + 64) = 0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

{
  v1 = Nightingale::sensorInputProcessBase::sensorInputProcessBase(this);
  *(v1 + 64) = 0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(Nightingale::wristTemperatureInputAcquisition *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = this;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  Nightingale::sensorInputProcessBase::~sensorInputProcessBase(this);
}

uint64_t Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v3 >>= 6;
    if (v3 <= 1)
    {
      v3 = 1;
    }

    while ((v2[60] & 1) == 0)
    {
      ++v4;
      v2 += 64;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    v5 = *v2;
    v3 = v4;
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  return v5 | (v3 << 32);
}

uint64_t Nightingale::wristTemperatureInputAcquisition::getAWTmpEntryDailyData(uint64_t a1, void *a2, int *a3, int a4)
{
  v4 = *a3;
  v5 = (a2[1] - *a2) >> 6;
  if (v5 <= v4)
  {
    return 0;
  }

  v6 = v4 + 1;
  for (i = (*a2 + (v4 << 6) + 60); *(i - 15) != a4; i += 64)
  {
    ++v4;
    ++v6;
    if (v5 <= v4)
    {
      return 0;
    }
  }

  if (*i == 1)
  {
    result = *(i - 1);
  }

  else
  {
    result = 0;
  }

  *a3 = v6;
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(void *a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, unint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  *(a6 + 16) = 0;
  *a6 = 0u;
  *(a6 + 24) = -1;
  *(a6 + 32) = 0u;
  v7 = (a6 + 32);
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  if ((a5 & 1) == 0 || a3 == -1 || a2 == -1 || a3 < a2)
  {
    return;
  }

  v52 = v7;
  v50 = a4;
  v10 = HIDWORD(a4);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v62 = 0;
  v63 = 0;
  v11 = 0xFFFFFFFFLL;
  v64 = 0;
  __src = 0;
  v60 = 0;
  v51 = a2;
  v12 = a2;
  v61 = 0;
  do
  {
    v13 = (a1[1] - *a1) >> 6;
    if (v13 <= v10)
    {
      goto LABEL_37;
    }

    v14 = (*a1 + (v10 << 6) + 60);
    v15 = v13 - v10;
    v16 = -1;
    while (*(v14 - 15) != v12)
    {
      --v16;
      v14 += 64;
      if (!--v15)
      {
        goto LABEL_37;
      }
    }

    if ((*v14 & 1) == 0)
    {
      LODWORD(v10) = v10 - v16;
LABEL_37:
      v57 = 0;
      v58 = 0;
      if (v65 != v66 && v60 != __src)
      {
        v32 = 0;
        v33 = 0;
        while (0xAAAAAAAAAAAAAAABLL * (v66 - v65) > v33)
        {
          std::vector<float>::push_back[abi:nn200100](&v65[v32], &Nightingale::INVALID_TMP);
          ++v33;
          v32 += 3;
          if (v60 - __src <= v33)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_91;
      }

      goto LABEL_42;
    }

    v17 = *(v14 - 1);
    v57 = v17;
    v58 = 1;
    if (v11 == -1)
    {
      *(a6 + 24) = v12;
      v11 = v12;
    }

    LODWORD(v10) = v10 - v16;
    v19 = __src;
    v18 = v60;
    if (__src == v60)
    {
      std::vector<char>::push_back[abi:nn200100](&__src, &v57);
LABEL_51:
      if ((v58 & 1) == 0)
      {
        goto LABEL_92;
      }

      std::vector<float>::push_back[abi:nn200100](&v62, &v57 + 1);
      std::vector<std::vector<float>>::push_back[abi:nn200100](&v65, &v62);
      goto LABEL_42;
    }

    v53 = v11;
    v20 = memchr(__src, v17, v60 - __src);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18;
    }

    if (v21 == v18)
    {
      v35 = 0;
      v36 = 0;
      v11 = v53;
      do
      {
        if (0xAAAAAAAAAAAAAAABLL * (v66 - v65) <= v36)
        {
          goto LABEL_91;
        }

        std::vector<float>::push_back[abi:nn200100](&v65[v35], &Nightingale::INVALID_TMP);
        ++v36;
        v35 += 3;
      }

      while (v60 - __src > v36);
      if ((v58 & 1) == 0)
      {
LABEL_92:
        v48 = std::__throw_bad_optional_access[abi:nn200100]();
        std::vector<std::vector<float>>::push_back[abi:nn200100](v48, v49);
        return;
      }

      std::vector<char>::push_back[abi:nn200100](&__src, &v57);
      v63 = v62;
      std::vector<float>::assign(&v62, ((v65[1] - *v65) >> 2) - 1, &Nightingale::INVALID_TMP, v37);
      goto LABEL_51;
    }

    v22 = v65;
    v23 = v66;
    if (v65 == v66)
    {
      v24 = 0;
      __p = 0;
      __b = 0;
      v56 = 0;
      do
      {
        std::vector<std::vector<float>>::push_back[abi:nn200100](&v65, &__p);
        ++v24;
        v19 = __src;
      }

      while (v60 - __src > v24);
      if (__p)
      {
        __b = __p;
        operator delete(__p);
        v19 = __src;
      }

      v22 = v65;
      v23 = v66;
    }

    if (0xAAAAAAAAAAAAAAABLL * (v23 - v22) <= v21 - v19)
    {
      goto LABEL_91;
    }

    if ((v58 & 1) == 0)
    {
      goto LABEL_92;
    }

    std::vector<float>::push_back[abi:nn200100](&v22[3 * (v21 - v19)], &v57 + 1);
    v25 = __src;
    v26 = v21 - __src;
    if (v21 - __src >= 1)
    {
      v27 = 0;
      v28 = 0;
      while (0xAAAAAAAAAAAAAAABLL * (v66 - v65) > v28)
      {
        std::vector<float>::push_back[abi:nn200100](&v65[v27], &Nightingale::INVALID_TMP);
        ++v28;
        v25 = __src;
        v26 = v21 - __src;
        v27 += 3;
        if (v28 >= v21 - __src)
        {
          goto LABEL_31;
        }
      }

LABEL_91:
      std::string::__throw_length_error[abi:nn200100]();
    }

LABEL_31:
    v11 = v53;
    if (v60 - v25 > (v26 + 1))
    {
      v29 = v26 + 1;
      v30 = v26 + 2;
      while (0xAAAAAAAAAAAAAAABLL * (v66 - v65) > v29)
      {
        std::vector<float>::push_back[abi:nn200100](&v65[3 * v29], &Nightingale::INVALID_TMP);
        v29 = v30;
        if (v60 - __src <= v30++)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_91;
    }

LABEL_42:
    v34 = v12 == a3;
    v12 = (v12 + 1);
  }

  while (!v34);
  *(a6 + 28) = a3;
  v39 = v65;
  v38 = v66;
  if (__src == v60)
  {
    v40 = v65;
    if (v66 != v65)
    {
      v41 = v66;
      do
      {
        v43 = *(v41 - 3);
        v41 -= 3;
        v42 = v43;
        if (v43)
        {
          *(v38 - 2) = v42;
          operator delete(v42);
        }

        v38 = v41;
      }

      while (v41 != v39);
      v40 = v65;
    }

    v66 = v39;
    v38 = v39;
    v39 = v40;
  }

  if (v39 == v38)
  {
    if (v11 > v51 && v50 <= v51)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v44 = v39;
    do
    {
      v45 = *v44;
      v46 = v44[1];
      while (v45 != v46)
      {
        if (*v45 > 38.5)
        {
          *v45 = -1082130432;
        }

        v45 += 4;
      }

      v44 += 3;
    }

    while (v44 != v38);
    if (v11 > v51 && v50 <= v51)
    {
      for (; v39 != v38; v39 += 3)
      {
        __p = 0;
        __b = 0;
        v56 = 0;
        if (v11 != v51)
        {
          std::vector<int>::__vallocate[abi:nn200100](&__p, v11 - v51);
        }

        std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v39, *v39, 0, 0, 0);
        if (__p)
        {
          __b = __p;
          operator delete(__p);
        }
      }

LABEL_80:
      *(a6 + 24) = v51;
    }
  }

  if (&v65 != a6)
  {
    std::vector<std::vector<float>>::__assign_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(a6, v65, v66, 0xAAAAAAAAAAAAAAABLL * (v66 - v65));
  }

  v47 = __src;
  if (v52 != &__src)
  {
    std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(v52, __src, v60, v60 - __src);
    v47 = __src;
  }

  if (v47)
  {
    v60 = v47;
    operator delete(v47);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  v62 = &v65;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v62);
}

uint64_t std::vector<std::vector<float>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<float>>>(a1, v11);
    }

    v12 = 24 * v8;
    std::vector<int>::vector[abi:nn200100](v12, a2);
    v7 = v12 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v12 - v13;
    memcpy((v12 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12 + 24;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::vector<std::pair<BOOL,float>>>::~__split_buffer(v17);
  }

  else
  {
    result = std::vector<int>::vector[abi:nn200100](v4, a2);
    v7 = result + 24;
  }

  *(a1 + 8) = v7;
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::removeOutlierUsingSlidingWin(float a1, uint64_t a2, void *a3, int a4, int a5)
{
  v13 = a4;
  if (a4 < ((a3[1] - *a3) >> 2))
  {
    v9 = 0;
    v10 = a4;
    v12 = a5;
    do
    {
      v17 = 0;
      __dst = 0;
      v19 = 0;
      if (a4)
      {
        std::vector<int>::__vallocate[abi:nn200100](&v17, v13);
      }

      __p = 0;
      v15 = 0;
      v16 = 0;
      if (a5)
      {
        std::vector<int>::__vallocate[abi:nn200100](&__p, v12);
      }

      MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(&v17, &__p, -1.0);
      if ((MeanDiffOf2Windows & 0x100000000) != 0 && COERCE_FLOAT(MeanDiffOf2Windows & 0x7FFFFFFF) >= a1)
      {
        if (v10 >= (a3[1] - *a3) >> 2)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        *(*a3 + 4 * v10) = -1082130432;
      }

      if (__p)
      {
        v15 = __p;
        operator delete(__p);
      }

      if (v17)
      {
        __dst = v17;
        operator delete(v17);
      }

      ++v10;
      v9 += 4;
    }

    while (v10 < (a3[1] - *a3) >> 2);
  }
}

uint64_t Nightingale::wristTemperatureInputAcquisition::getOutlierRmvSegLen(Nightingale::wristTemperatureInputAcquisition *this, int a2, int a3)
{
  if (a3 - a2 < 30)
  {
    return 30;
  }

  LODWORD(result) = 31;
  do
  {
    result = (result - 1);
  }

  while ((a3 - a2) % result < 7);
  return result;
}

void Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf_fromCycleOffset(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, signed int a4@<W3>, void *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v14 = HIDWORD(a6);
  std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](a1);
  a1[4] = a1[3];
  a1[7] = a1[6];
  v15 = ((a5[1] - *a5) >> 6);
  while (v15 >= 1)
  {
    if (*(*a5 + (--v15 << 6)) <= a4)
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_6:
  if (v7 <= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = v7;
  }

  if (v7 > a4)
  {
    v15 = v14;
  }

  v17 = v16 | (v15 << 32);
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(a1, a3 - a2 + 1 - v16, a3 - a2, a5, v17, v18);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  v23 = v18;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v23);
  Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(a1, a2, a3, a5, v17, a7);
}

void Nightingale::wristTemperatureInputAcquisition::reset(Nightingale::wristTemperatureInputAcquisition *this)
{
  std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](this);
  *(this + 4) = *(this + 3);
  *(this + 7) = *(this + 6);
}

void Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(a4, (a3 - a2 + 1), a3, a5, 1, a6);
  v9 = *a6;
  v10 = *(a6 + 8);
  if (*a6 != v10 && *v9 != v9[1])
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    if (a1[3] != a1[4])
    {
      v11 = *(a6 + 32);
      v12 = *(a6 + 40);
      if (v11 != v12)
      {
        v13 = 0;
        do
        {
          v14 = a1[3];
          v15 = a1[4];
          v16 = memchr(v14, *v11, v15 - v14);
          if (v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v15;
          }

          if (v17 == v15)
          {
            LODWORD(__p) = 0;
          }

          else
          {
            if (0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3) <= v13 || (v18 = v17 - v14, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v18) || (std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(*a6 + 24 * v13, *(*a6 + 24 * v13), *(*a1 + 24 * v18), *(*a1 + 24 * v18 + 8), (*(*a1 + 24 * v18 + 8) - *(*a1 + 24 * v18)) >> 2), 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v18))
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            LODWORD(__p) = (*(*a1 + 24 * v18 + 8) - *(*a1 + 24 * v18)) >> 2;
          }

          std::vector<int>::push_back[abi:nn200100](&v48, &__p);
          ++v13;
          ++v11;
        }

        while (v11 != v12);
        v9 = *a6;
        v10 = *(a6 + 8);
      }
    }

    if (v9 != v10)
    {
      v19 = 0;
      do
      {
        if (v48 == v49)
        {
          goto LABEL_23;
        }

        v20 = (v49 - v48) >> 2;
        if (v20 - 1 < v19)
        {
          goto LABEL_23;
        }

        if (v20 <= v19)
        {
          goto LABEL_70;
        }

        if (*(v48 + v19) || (v29 = *v9, v30 = v9[1], *v9 == v30))
        {
LABEL_23:
          v21 = 0;
        }

        else
        {
          v31 = 0;
          do
          {
            if (*v29 >= 0.0)
            {
              break;
            }

            ++v31;
            ++v29;
          }

          while (v29 != v30);
          v21 = v31;
        }

        v22 = v9[1];
        v23 = &(*v9)[v21];
        __p = 0;
        __dst = 0;
        v47 = 0;
        if (v23 != v22)
        {
          std::vector<int>::__vallocate[abi:nn200100](&__p, v22 - v23);
        }

        Nightingale::wristTemperatureInputAcquisition::removeOutlierUsingSlidingWin(1.0, v8, &__p, 7, 1);
        if (__dst != __p)
        {
          memmove(&(*v9)[v21], __p, __dst - __p);
        }

        if (v48 != v49)
        {
          if (v19 >= ((v49 - v48) >> 2))
          {
LABEL_70:
            std::string::__throw_length_error[abi:nn200100]();
          }

          v24 = *(v48 + v19);
          if (v24)
          {
            v26 = *v9;
            v25 = v9[1];
            v27 = &(*v9)[v24];
            v28 = v25 - v27;
            if (v25 != v27)
            {
              memmove(*v9, v27, v25 - v27);
            }

            v9[1] = (v26 + v28);
          }
        }

        v8 = __p;
        if (__p)
        {
          __dst = __p;
          operator delete(__p);
        }

        ++v19;
        v9 += 3;
      }

      while (v9 != v10);
    }

    LOBYTE(v44) = 0;
    BYTE4(v44) = 0;
    v32 = a1[6];
    v33 = a1[7];
    if (v32 == v33)
    {
      if (*(a6 + 56) == *(a6 + 64))
      {
        v8 = std::vector<std::optional<float>>::assign((a6 + 56), *(a6 + 40) - *(a6 + 32), &v44);
      }

      else
      {
        log = ha_get_log();
        v8 = os_log_type_enabled(log, OS_LOG_TYPE_FAULT);
        if (v8)
        {
          Nightingale::wristTemperatureInputAcquisition::extractWTmp_removeOutlier_withBuf(log);
        }
      }
    }

    else
    {
      if ((a6 + 56) != a1 + 6)
      {
        v8 = std::vector<std::optional<float>>::__assign_with_size[abi:nn200100]<std::optional<float>*,std::optional<float>*>((a6 + 56), v32, v33, (v33 - v32) >> 3);
      }

      v34 = 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3);
      v36 = *(a6 + 56);
      v35 = *(a6 + 64);
      v37 = &v35[-v36] >> 3;
      v38 = v37 >= v34;
      v39 = v37 - v34;
      if (v39 != 0 && v38)
      {
        v40 = (v36 + 8 * v39);
        v41 = v35 - v40;
        if (v35 != v40)
        {
          v8 = memmove(*(a6 + 56), v40, v41 - 3);
        }

        *(a6 + 64) = v36 + v41;
      }

      else if (v39)
      {
        do
        {
          std::vector<std::optional<float>>::push_back[abi:nn200100](a6 + 56, &v44);
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3) != (*(a6 + 64) - *(a6 + 56)) >> 3);
      }
    }

    Nightingale::wristTemperatureInputAcquisition::getLastValidSamplesFromRawTmp(v8, a6, a1 + 6);
    if (*(*a6 + 8) - **a6 > 0x1BuLL)
    {
      std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](a1);
      if (*a6 != *(a6 + 8))
      {
        v43 = *(*a6 + 8);
        __p = 0;
        __dst = 0;
        v47 = 0;
        std::vector<int>::__vallocate[abi:nn200100](&__p, 7uLL);
      }
    }

    else if (*a1 == a1[1] && a1 != a6)
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(a1, *a6, *(a6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3));
    }

    if (a1 + 3 != (a6 + 32))
    {
      std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(a1 + 3, *(a6 + 32), *(a6 + 40), *(a6 + 40) - *(a6 + 32));
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }
  }
}

_BYTE *std::vector<std::optional<float>>::assign(void *a1, unint64_t a2, int *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::optional<float>>::__vallocate[abi:nn200100](a1, v8);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = (a1[1] - result) >> 3;
  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = (a1[1] - result) >> 3;
  }

  for (; v10; --v10)
  {
    v11 = *a3;
    result[4] = *(a3 + 4);
    *result = v11;
    result += 8;
  }

  if (a2 <= v9)
  {
    a1[1] = *a1 + 8 * a2;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[a2 - v9];
    v14 = 8 * a2 - 8 * v9;
    do
    {
      *v12++ = *a3;
      v14 -= 8;
    }

    while (v14);
    a1[1] = v13;
  }

  return result;
}

void Nightingale::wristTemperatureInputAcquisition::getLastValidSamplesFromRawTmp(Nightingale *a1, float ***a2, void *a3)
{
  if (*a2 != a2[1] && **a2 != (*a2)[1])
  {
    v4 = a2[4];
    v5 = a2[5];
    if (v4 != v5)
    {
      LOBYTE(v17) = 0;
      BYTE4(v17) = 0;
      v7 = a3[1];
      if (*a3 == v7)
      {
        a1 = std::vector<std::optional<float>>::assign(a3, v5 - v4, &v17);
      }

      else
      {
        v8 = v7 - *a3;
        if (v5 - v4 > (v8 >> 3))
        {
          v9 = (v8 >> 3);
          do
          {
            std::vector<std::optional<float>>::push_back[abi:nn200100](a3, &v17);
            ++v9;
          }

          while (a2[5] - a2[4] > v9);
        }
      }

      v10 = *a2;
      v11 = a2[1];
      if (0xAAAAAAAAAAAAAAABLL * (v11 - *a2) > (a3[1] - *a3) >> 3)
      {
        log = ha_get_log();
        if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
        {
          Nightingale::wristTemperatureInputAcquisition::getLastValidSamplesFromRawTmp(log);
        }

        a3[1] = *a3;
        a1 = std::vector<std::optional<float>>::assign(a3, 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2), &v17);
        v10 = *a2;
        v11 = a2[1];
      }

      if (v10 != v11)
      {
        v13 = 0;
        do
        {
          v14 = v10[1];
          while (v14 != *v10)
          {
            v15 = *--v14;
            LOBYTE(a1) = Nightingale::check2Real_t_equal(a1, v15, -1.0);
            if ((a1 & 1) == 0)
            {
              if (v13 >= (a3[1] - *a3) >> 3)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v16 = *a3 + 8 * v13;
              *v16 = *v14;
              *(v16 + 4) = 1;
              break;
            }
          }

          ++v13;
          v10 += 3;
        }

        while (v10 != v11);
      }
    }
  }
}

void Nightingale::wristTemperatureInputProcess::constructVectorOfSlicesFromMultipleWatches(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X8>)
{
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (Nightingale::assertVectorOfVectors(a1))
  {
    v9 = *(a1 + 24);
    if (v9 != -1 && *(a1 + 28) != -1)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      if (v11 != v12)
      {
        v13 = v12 - v11;
        if (v13 == 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) && v13 == (*(a1 + 64) - *(a1 + 56)) >> 3)
        {
          v14 = (v9 - a4);
          if (v14 >= 1)
          {
            __p = 0;
            __b = 0;
            v37 = 0;
            std::vector<int>::__vallocate[abi:nn200100](&__p, v14);
          }

          if (a3 >= 1)
          {
            v15 = 0;
            while (1)
            {
              __p = 0;
              __b = 0;
              v37 = 0;
              v16 = *a1;
              v17 = *(a1 + 8);
              if (*a1 == v17)
              {
                v18 = 0;
                v20 = 0;
              }

              else
              {
                do
                {
                  std::vector<float>::vector[abi:nn200100]<float const*,0>(&v32, 4 * v15 + *v16, 4 * (a2 + v15) + *v16);
                  LODWORD(v29[0]) = Nightingale::getMissingCnt(&v32);
                  std::vector<int>::push_back[abi:nn200100](&__p, v29);
                  if (v32)
                  {
                    __dst = v32;
                    operator delete(v32);
                  }

                  v16 += 3;
                }

                while (v16 != v17);
                v18 = __p;
                if (__p == __b)
                {
                  v20 = __p;
                }

                else
                {
                  v19 = __p + 4;
                  v20 = __p;
                  if (__p + 4 != __b)
                  {
                    v21 = *__p;
                    v20 = __p;
                    v22 = (__p + 4);
                    do
                    {
                      v24 = *v22++;
                      v23 = v24;
                      if (v24 < v21)
                      {
                        v21 = v23;
                        v20 = v19;
                      }

                      v19 = v22;
                    }

                    while (v22 != __b);
                  }
                }
              }

              v31 = (v20 - v18) >> 2;
              std::vector<char>::push_back[abi:nn200100](a5 + 24, &v31);
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) <= v31)
              {
                goto LABEL_41;
              }

              v25 = *(*a1 + 24 * v31);
              v32 = 0;
              __dst = 0;
              v34 = 0;
              if (a2)
              {
                std::vector<int>::__vallocate[abi:nn200100](&v32, a2);
              }

              std::vector<std::vector<float>>::push_back[abi:nn200100](&v38, &v32);
              v26 = *(a1 + 56);
              if (v31 >= ((*(a1 + 64) - v26) >> 3))
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v30 = *(v26 + 8 * v31);
              if (v15 > 0)
              {
                break;
              }

              std::vector<std::optional<float>>::push_back[abi:nn200100](a5 + 48, &v30);
              if (v32)
              {
                __dst = v32;
                operator delete(v32);
              }

              if (__p)
              {
                __b = __p;
                operator delete(__p);
              }

              if (a3 <= ++v15)
              {
                goto LABEL_38;
              }
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) > v31)
            {
              v27 = *(*a1 + 24 * v31);
              memset(v29, 0, sizeof(v29));
              std::vector<int>::__vallocate[abi:nn200100](v29, v15);
            }

LABEL_41:
            std::string::__throw_length_error[abi:nn200100]();
          }

LABEL_38:
          if (&v38 != a5)
          {
            std::vector<std::vector<float>>::__assign_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(a5, v38, v39, 0xAAAAAAAAAAAAAAABLL * (v39 - v38));
          }
        }
      }
    }
  }

  __p = &v38;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&__p);
}

void Nightingale::wristTemperatureInputProcess::clearDLSlices(uint64_t a1, uint64_t *a2)
{
  std::vector<std::vector<std::pair<BOOL,float>>>::clear[abi:nn200100](a2);
  a2[19] = a2[18];
  a2[4] = a2[3];
  a2[10] = 0;
  a2[16] = 0;
  a2[13] = 0;
  a2[7] = a2[6];
  a2[22] = a2[21];
}

void Nightingale::addEntryToNewextractedLunaDayStreamSlice(const void **a1, void *a2, int a3)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= a3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a3;
  std::vector<std::vector<float>>::push_back[abi:nn200100](a1, (*a2 + 24 * a3));
  v6 = a2[18];
  if (v5 >= (a2[19] - v6) >> 2)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  std::vector<float>::push_back[abi:nn200100](a1 + 18, (v6 + 4 * v5));
  v7 = a2[3];
  if (a2[4] - v7 <= v5)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  std::vector<char>::push_back[abi:nn200100]((a1 + 3), (v7 + v5));
  if (a2[10] <= v5 || (v8 = v5 >> 6, v9 = 1 << v5, v14 = (*(a2[9] + 8 * (v5 >> 6)) & (1 << v5)) != 0, std::vector<BOOL>::push_back((a1 + 9), &v14), a2[16] <= v5) || (v13 = (*(a2[15] + 8 * v8) & v9) != 0, std::vector<BOOL>::push_back((a1 + 15), &v13), a2[13] <= v5))
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = (*(a2[12] + 8 * v8) & v9) != 0;
  std::vector<BOOL>::push_back((a1 + 12), &v12);
  v10 = a2[6];
  if (v5 >= (a2[7] - v10) >> 2 || (std::vector<int>::push_back[abi:nn200100](a1 + 6, (v10 + 4 * v5)), v11 = a2[21], v5 >= (a2[22] - v11) >> 2))
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  std::vector<int>::push_back[abi:nn200100](a1 + 21, (v11 + 4 * v5));
}

uint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::computeDay2DayNoise(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  if (v1 == *a1 || (v1 - *a1) < 9)
  {
    result = 2143289344;
    goto LABEL_29;
  }

  __p = 0x3F800000BF000000;
  LODWORD(v24) = -1090519040;
  std::vector<float>::vector[abi:nn200100](v21, &__p, 3uLL);
  v5 = *a1;
  v6 = a1[1] - *a1;
  if (!v6 || (v22[0] = *v5, v6 <= 4) || (v22[1] = v5[1], v6 == 8))
  {
LABEL_30:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v22[2] = v5[2];
  std::vector<float>::vector[abi:nn200100](&__p, v22, 3uLL);
  if (a1[1] - *a1 < 9uLL)
  {
    v18 = 0;
LABEL_23:
    v19 = 2143289344;
    goto LABEL_24;
  }

  v7 = 0;
  LODWORD(v8) = 0;
  v9 = 0.0;
  v10 = 2;
  do
  {
    SmoothedPow_aSample = Nightingale::getSmoothedPow_aSample(&__p, v21);
    v13 = Nightingale::check2Real_t_equal(v12, SmoothedPow_aSample, -1.0);
    if (!v13)
    {
      v9 = v9 + SmoothedPow_aSample;
    }

    v14 = *a1;
    v15 = (a1[1] - *a1) >> 2;
    if (v15 - 1 <= v10)
    {
      ++v10;
    }

    else
    {
      v16 = __p;
      v17 = v24 - (__p + 4);
      if (v24 != __p + 4)
      {
        memmove(__p, __p + 4, v24 - (__p + 4));
        v14 = *a1;
        v15 = (a1[1] - *a1) >> 2;
      }

      v24 = &v16[v17];
      if (v15 <= ++v10)
      {
        goto LABEL_30;
      }

      std::vector<float>::push_back[abi:nn200100](&__p, &v14[v10]);
      v15 = (a1[1] - *a1) >> 2;
    }

    v8 = (v8 + v13);
    v7 += !v13;
  }

  while (v15 > v10);
  v18 = v8 << 32;
  if (!v7)
  {
    goto LABEL_23;
  }

  v19 = COERCE_UNSIGNED_INT(v9 / (v7 * 1.5));
LABEL_24:
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  result = v18 | v19;
LABEL_29:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpDay2dayNoiseHigh(float a1, uint64_t a2, void *a3)
{
  if (a1 < 0.0 || *a3 == a3[1])
  {
    v4 = 0;
    v7 = 2143289344;
  }

  else
  {
    v7 = Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::computeDay2DayNoise(a3);
    v4 = *&v7 > a1 || ((a3[1] - *a3) >> 2) - 2 == v7 >> 32;
  }

  return v4 | (v7 << 32);
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpSnrLow(float a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0 || (v5 = a4, v6 = *a3, a4 > ((a3[1] - v6) >> 2)))
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    std::vector<float>::vector[abi:nn200100]<float const*,0>(v17, v6, v6 + 4 * a4);
    std::vector<float>::vector[abi:nn200100]<float const*,0>(__p, *a3 + 4 * v5, a3[1]);
    Nightingale::pooledVar2Win(v17, __p, -1);
    v12 = v11;
    if (v11 >= 1.0e-12 && (MeanDiffOf2Windows = Nightingale::getMeanDiffOf2Windows(v17, __p, -1.0), (MeanDiffOf2Windows & 0x100000000) != 0))
    {
      *&v14 = (*&MeanDiffOf2Windows * *&MeanDiffOf2Windows) / v12;
      v8 = *&v14 < a1;
      v9 = v14 << 32;
    }

    else
    {
      v9 = 0;
      v8 = 1;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v17[0])
    {
      v17[1] = v17[0];
      operator delete(v17[0]);
    }
  }

  return v9 | v8;
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpMissingCntHigh(float a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 8) == *a3)
  {
    return 0xBF80000000000000;
  }

  *&v6 = Nightingale::getMissingCnt(a3);
  return ((*&v6 / a4) > a1) | (v6 << 32);
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpEarlyWinMissingCntHigh(float a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0 || (v4 = *a3, a4 > ((a3[1] - v4) >> 2)))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xBF80000000000000;
  }

  else
  {
    std::vector<float>::vector[abi:nn200100]<float const*,0>(&v15, v4, v4 + 4 * a4);
    v10 = v15;
    if (v16 == v15)
    {
      v13 = 0xBF80000000000000;
    }

    else
    {
      v11 = (v16 - v15) >> 2;
      *&v12 = Nightingale::getMissingCnt(&v15);
      v13 = ((*&v12 / v11) > a1) | (v12 << 32);
      v10 = v15;
    }

    v8 = v13 & 0xFFFFFFFF00000000;
    if (v10)
    {
      v16 = v10;
      operator delete(v10);
    }

    v7 = v13 & 0xFFFFFF00;
    v6 = v13;
  }

  return v8 | v6 | v7;
}

unint64_t Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems::checkWTmpLaterWinMissingCntHigh(float a1, uint64_t a2, void *a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0 || (v4 = a4, v5 = a3[1], v4 > (v5 - *a3) >> 2))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0xBF80000000000000;
  }

  else
  {
    std::vector<float>::vector[abi:nn200100]<float const*,0>(&v15, *a3 + 4 * v4, v5);
    v10 = v15;
    if (v16 == v15)
    {
      v13 = 0xBF80000000000000;
    }

    else
    {
      v11 = (v16 - v15) >> 2;
      *&v12 = Nightingale::getMissingCnt(&v15);
      v13 = ((*&v12 / v11) > a1) | (v12 << 32);
      v10 = v15;
    }

    v8 = v13 & 0xFFFFFFFF00000000;
    if (v10)
    {
      v16 = v10;
      operator delete(v10);
    }

    v7 = v13 & 0xFFFFFF00;
    v6 = v13;
  }

  return v8 | v6 | v7;
}

void Nightingale::wristTemperatureInputValidation::checkListOfConditions(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = a6;
    v12 = a3;
    v14 = 0;
    do
    {
      if (v14 >= (a4[1] - *a4) >> 2)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v14 >= (a5[1] - *a5) >> 2)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v15 = std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::operator()(v7, a1, v12, *(*a4 + 4 * v14), *(*a5 + 4 * v14));
      v16 = v15;
      v18 = *(a7 + 8);
      v17 = *(a7 + 16);
      if (v18 >= v17)
      {
        v20 = (v18 - *a7) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v21 = v17 - *a7;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<BOOL,float>>>(a7, v23);
        }

        v24 = (8 * v20);
        *v24 = v15;
        v19 = 8 * v20 + 8;
        v25 = *(a7 + 8) - *a7;
        v26 = v24 - v25;
        memcpy(v24 - v25, *a7, v25);
        v27 = *a7;
        *a7 = v26;
        *(a7 + 8) = v19;
        *(a7 + 16) = 0;
        if (v27)
        {
          operator delete(v27);
        }

        v9 = a6;
        v12 = a3;
      }

      else
      {
        *v18 = v15;
        v19 = (v18 + 1);
      }

      *(a7 + 8) = v19;
      if (v16 & v9)
      {
        break;
      }

      ++v14;
      v7 += 32;
    }

    while (v7 != v8);
  }
}

char *std::function<std::pair<BOOL,float> ()(Nightingale::wristTemperatureInputValidation::wristTemperatureInputCheckItems &,std::vector<float> const&,int,float)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  v13 = a4;
  v12 = a5;
  v5 = *(a1 + 24);
  if (v5)
  {
    return (*(*v5 + 48))(v5, a2, a3, &v13, &v12);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v7, v8, v9, v10, v11);
}

char *std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<std::vector<float>>::__assign_with_size[abi:nn200100]<std::vector<float>*,std::vector<float>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::vector<float>>::__vallocate[abi:nn200100](a1, v9);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v22, a2, a3, v7);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      v18 = a1[1];
      do
      {
        v20 = *(v18 - 24);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v17 - 16) = v19;
          operator delete(v19);
        }

        v17 = v18;
      }

      while (v18 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v21, a2, (a2 + v10), v7);
    v12 = a1[1];
    if (v11 != a3)
    {
      v13 = a1[1];
      do
      {
        v14 = std::vector<int>::vector[abi:nn200100](v13, v11);
        v11 += 3;
        v13 = v14 + 3;
        v12 += 24;
      }

      while (v11 != a3);
    }

    a1[1] = v12;
  }
}

char **std::__copy_impl::operator()[abi:nn200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<std::optional<float>>::__assign_with_size[abi:nn200100]<std::optional<float>*,std::optional<float>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::optional<float>>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16 - 3);
    }

    v15 = &v8[v16];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 3);
      v11 = v6[1];
    }

    v14 = a3 - v13;
    if (a3 != v13)
    {
      result = memmove(v11, v13, v14 - 3);
    }

    v15 = &v11[v14];
  }

  v6[1] = v15;
  return result;
}

Nightingale::ngt_HistoricalAnalyzer *Nightingale::ngt_HistoricalAnalyzer::ngt_HistoricalAnalyzer(Nightingale::ngt_HistoricalAnalyzer *this)
{
  v9 = *MEMORY[0x277D85DE8];
  *(this + 19) = 0;
  *(this + 20) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 18) = this + 152;
  if (ha_sensitive_logging_is_enabled())
  {
    log = ha_get_log();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 6;
      strcpy(__p, "4.14.1");
      *buf = 136315138;
      v8 = __p;
      _os_log_impl(&dword_2588F5000, log, OS_LOG_TYPE_DEFAULT, "HistoricalAnalyzer: %s,\n", buf, 0xCu);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return this;
}

void Nightingale::ngt_HistoricalAnalyzer::~ngt_HistoricalAnalyzer(Nightingale::ngt_HistoricalAnalyzer *this)
{
  std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::destroy(this + 144, *(this + 19));
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    *(this + 1) = v7;
    operator delete(v7);
  }
}

void *Nightingale::ngt_HistoricalAnalyzer::appendDay(void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = (v2 - *result) >> 6;
  if (v3 <= 0x2AC5)
  {
    v4 = result[2];
    if (v2 >= v4)
    {
      v8 = v4 - *result;
      if (v8 >> 5 <= v3 + 1)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = v8 >> 5;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_DayInput>>(result, v10);
    }

    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v2[2] = a2[2];
    v2[3] = v7;
    *v2 = v5;
    v2[1] = v6;
    result[1] = v2 + 4;
  }

  return result;
}

void Nightingale::ngt_HistoricalAnalyzer::appendPhaseSet(void *a1, uint64_t a2, int a3)
{
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1 + 3;
  v7 = (v6 - v4) >> 2;
  if (v7 <= 0x2AC5)
  {
    v9 = a1[5];
    if (v6 >= v9)
    {
      v10 = v9 - v4;
      if (v10 >> 1 <= v7 + 1)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = v10 >> 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v12 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>((a1 + 3), v12);
    }

    *v6 = a3;
    a1[4] = v6 + 1;
    v14 = a1[7];
    v13 = a1[8];
    if (v14 >= v13)
    {
      v16 = a1[6];
      v17 = (v14 - v16) >> 3;
      if ((v17 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 2;
      if (v18 >> 2 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseSet>>((a1 + 6), v20);
      }

      v21 = (8 * v17);
      *v21 = a2;
      v15 = 8 * v17 + 8;
      v22 = a1[6];
      v23 = a1[7] - v22;
      v24 = v21 - v23;
      memcpy(v21 - v23, v22, v23);
      v25 = a1[6];
      a1[6] = v24;
      a1[7] = v15;
      a1[8] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v14 = a2;
      v15 = (v14 + 1);
    }

    a1[7] = v15;
  }

  std::vector<int>::vector[abi:nn200100](__p, v5);
  std::vector<Nightingale::PhaseSet>::vector[abi:nn200100](&v30, a1 + 6);
  v26 = a1[9];
  if (v26)
  {
    a1[10] = v26;
    operator delete(v26);
  }

  *(a1 + 9) = *__p;
  a1[11] = v29;
  __p[1] = 0;
  v29 = 0;
  __p[0] = 0;
  v27 = a1[12];
  if (v27)
  {
    a1[13] = v27;
    operator delete(v27);
    v27 = __p[0];
  }

  *(a1 + 6) = v30;
  a1[14] = v31;
  v31 = 0;
  v30 = 0uLL;
  if (v27)
  {
    __p[1] = v27;
    operator delete(v27);
  }
}

void Nightingale::ngt_HistoricalAnalyzer::constructePseudo1stCycle(int a1@<W1>, int a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  *(a6 + 4) = 0;
  *(a6 + 8) = 0;
  *(a6 + 12) = 0;
  *(a6 + 16) = 0;
  *(a6 + 32) = 0;
  *(a6 + 36) = 0;
  *(a6 + 40) = 0;
  *(a6 + 44) = 0;
  *(a6 + 48) = 0;
  *(a6 + 52) = 0;
  *(a6 + 56) = 0;
  *(a6 + 60) = 0;
  *(a6 + 64) = 0;
  *(a6 + 68) = 0;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 72) = 0;
  if (a2 < 0)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_6;
    }

    if (a3 >> 32 >= ((a5[1] - *a5) >> 6))
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v6 = *(*a5 + (a3 >> 32 << 6));
    if (a1 - v6 <= 18)
    {
LABEL_6:
      v6 = a1 - 28;
    }
  }

  else
  {
    *(a6 + 12) = a2;
    *(a6 + 16) = 1;
    v6 = a2 - 4;
  }

  *a6 = v6;
  *(a6 + 20) = a1 - 1;
  *(a6 + 24) = 1;
}

void Nightingale::ngt_HistoricalAnalyzer::analyze(Nightingale::ngt_HistoricalAnalyzer *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v128 = *MEMORY[0x277D85DE8];
  Nightingale::uiLogProcessor::uiLogProcessor(v116);
  Nightingale::wristTemperatureInputProcess::wristTemperatureInputProcess(&v115);
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v114);
  Nightingale::fwHEstimation::fwHEstimation(&v113);
  v111 = 0;
  v110 = 0;
  v112 = 0;
  *(a3 + 216) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  Nightingale::PhaseCondenser::phase_updates((this + 144), __p);
  v5 = *__p;
  v6 = *&__p[8];
  if (*__p != *&__p[8])
  {
    do
    {
      Nightingale::ngt_HistoricalAnalyzer::appendPhaseSet(this, *v5, *(v5 + 8));
      v5 += 16;
    }

    while (v5 != v6);
    v5 = *__p;
  }

  if (v5)
  {
    *&__p[8] = v5;
    operator delete(v5);
  }

  if (ha_sensitive_logging_is_enabled())
  {
    log = ha_get_log();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      Nightingale::ngt_HistoricalAnalyzer::analyze();
    }
  }

  Nightingale::uiLogProcessor::hist_process(this, this + 9, &v108);
  if (v108 == v109)
  {
    if (ha_sensitive_logging_is_enabled())
    {
      v36 = ha_get_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }
  }

  else
  {
    JDayIdx1stTmp = Nightingale::wristTemperatureInputAcquisition::getJDayIdx1stTmp(v114, this);
    v10 = v9;
    jDayLastOPKPosBfr1stPeriodSt = Nightingale::uiLogProcessor::get_jDayLastOPKPosBfr1stPeriodSt(v116, *v108, this);
    v77 = v10;
    v78 = JDayIdx1stTmp;
    v79 = this;
    Nightingale::ngt_HistoricalAnalyzer::constructePseudo1stCycle(*v108, jDayLastOPKPosBfr1stPeriodSt, JDayIdx1stTmp, v10, this, v105);
    std::vector<Nightingale::cycleInfo>::insert(&v108, v108, v105);
    v95[0] = 0;
    v95[4] = 0;
    v95[8] = 0;
    v95[12] = 0;
    *&v95[16] = 3;
    v96[0] = 0;
    *&v95[20] = 0;
    *&v95[28] = 0;
    v12.i64[0] = 0x3F0000003FLL;
    v12.i64[1] = 0x3F0000003FLL;
    *&v96[4] = vnegq_f32(v12);
    v96[20] = 0;
    v96[24] = 0;
    v96[28] = 0;
    v97 = 0;
    LOBYTE(v98) = 0;
    v100 = 0;
    LOBYTE(v101) = 0;
    v103 = 0;
    v104[0] = 0;
    v104[4] = 0;
    *&v104[8] = 0x17FC00000;
    *&v104[16] = 0;
    *&v104[20] = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    if (ha_sensitive_logging_is_enabled())
    {
      v13 = ha_get_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&dword_2588F5000, v13, OS_LOG_TYPE_DEFAULT, "Cycles:[ \n", __p, 2u);
      }
    }

    v76 = v109;
    if (v108 != v109)
    {
      v14 = 0;
      v15 = (v108 + 18);
      do
      {
        LOBYTE(v83) = 0;
        BYTE4(v83) = 0;
        BYTE8(v83) = 0;
        BYTE12(v83) = 0;
        v88 = 0;
        v89 = 0;
        v87 = 0;
        v90 = 3;
        if (ha_sensitive_logging_is_enabled())
        {
          v16 = ha_get_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(v15 - 18);
            *__p = 67109376;
            *&__p[4] = v14;
            *&__p[8] = 1024;
            *&__p[10] = v17;
            _os_log_impl(&dword_2588F5000, v16, OS_LOG_TYPE_DEFAULT, "\t{idx: %d, jDayCycleStart: %d ", __p, 0xEu);
          }
        }

        std::vector<int>::vector[abi:nn200100](v81, this + 9);
        std::vector<Nightingale::PhaseSet>::vector[abi:nn200100](v82, this + 12);
        Nightingale::fwHEstimation::processPerCycle((v15 - 9), this, v78, v77, v81, v114, a2, __p);
        *v95 = *__p;
        *&v95[14] = *&__p[14];
        *v96 = v118;
        *&v96[16] = v119;
        v97 = v120;
        std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<float>,false>>(&v98, (&v120 + 8));
        std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<float>,false>>(&v101, &v122[1]);
        *v104 = *&v124[8];
        *&v104[14] = *&v124[22];
        if (v124[0] == 1 && v122[1])
        {
          *&v123 = v122[1];
          operator delete(v122[1]);
        }

        if (LOBYTE(v122[0]) == 1 && *(&v120 + 1))
        {
          *&v121 = *(&v120 + 1);
          operator delete(*(&v120 + 1));
        }

        if (v82[0])
        {
          v82[1] = v82[0];
          operator delete(v82[0]);
        }

        if (v81[0])
        {
          v81[1] = v81[0];
          operator delete(v81[0]);
        }

        if (a2)
        {
          v18 = v93;
          if (v93 >= v94)
          {
            v24 = std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__emplace_back_slow_path<Nightingale::coreAnalyticsHistPerCycle_t const&>(&v92, v96);
          }

          else
          {
            v19 = *v96;
            v20 = *&v96[16];
            *(v93 + 32) = v97;
            *v18 = v19;
            *(v18 + 16) = v20;
            *(v18 + 40) = 0;
            v21 = (v18 + 40);
            *(v18 + 64) = 0;
            if (v100 == 1)
            {
              *v21 = 0;
              *(v18 + 48) = 0;
              *(v18 + 56) = 0;
              if (v99 != v98)
              {
                std::vector<int>::__vallocate[abi:nn200100](v21, (v99 - v98) >> 2);
              }

              *(v18 + 64) = 1;
            }

            *(v18 + 72) = 0;
            v22 = (v18 + 72);
            *(v18 + 96) = 0;
            if (v103 == 1)
            {
              *v22 = 0;
              *(v18 + 80) = 0;
              *(v18 + 88) = 0;
              if (v102 != v101)
              {
                std::vector<int>::__vallocate[abi:nn200100](v22, (v102 - v101) >> 2);
              }

              *(v18 + 96) = 1;
            }

            v23 = *v104;
            *(v18 + 118) = *&v104[14];
            *(v18 + 104) = v23;
            v24 = v18 + 128;
          }

          v93 = v24;
        }

        if (v14)
        {
          LODWORD(v83) = *v95;
          BYTE4(v83) = v95[4];
          DWORD2(v83) = *&v95[8];
          BYTE12(v83) = v95[12];
          v90 = *&v95[16];
          v86 = *(v15 - 44);
          v84 = *(v15 - 18);
          v91 = *&v95[20];
          if (v15 != &v87)
          {
            std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(&v87, *v15, v15[1], v15[1] - *v15);
          }

          if (*(v15 - 64) == 1)
          {
            v85 = *(v15 - 17);
            std::vector<Nightingale::ngt_HistoricCycle>::push_back[abi:nn200100](a3, &v83);
          }
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 5);
        is_enabled = ha_sensitive_logging_is_enabled();
        if (v25 <= v14 + 1)
        {
          if (!is_enabled)
          {
            goto LABEL_54;
          }

          v30 = ha_get_log();
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_54;
          }

          *__p = 0;
          v28 = v30;
          v29 = "\t} \n ";
        }

        else
        {
          if (!is_enabled)
          {
            goto LABEL_54;
          }

          v27 = ha_get_log();
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_54;
          }

          *__p = 0;
          v28 = v27;
          v29 = "\t}, \n ";
        }

        _os_log_impl(&dword_2588F5000, v28, OS_LOG_TYPE_DEFAULT, v29, __p, 2u);
LABEL_54:
        if (v87)
        {
          v88 = v87;
          operator delete(v87);
        }

        v31 = v15 + 3;
        v15 += 12;
        ++v14;
      }

      while (v31 != v76);
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v32 = ha_get_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&dword_2588F5000, v32, OS_LOG_TYPE_DEFAULT, "], \n", __p, 2u);
      }
    }

    Nightingale::phaseFactorHist::tagHistReproductive(&v110, a3, this + 9);
    if (ha_sensitive_logging_is_enabled())
    {
      v33 = ha_get_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v34 = *(a3 + 8);
    if (*a3 == v34)
    {
      if (ha_sensitive_logging_is_enabled())
      {
        v37 = ha_get_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    else
    {
      if (v34 - *a3 != 72)
      {
        v58 = 0;
        v59 = 0;
        do
        {
          if (ha_sensitive_logging_is_enabled())
          {
            v60 = ha_get_log();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              if (0x8E38E38E38E38E39 * ((*(a3 + 8) - *a3) >> 3) <= v59)
              {
LABEL_157:
                std::string::__throw_length_error[abi:nn200100]();
              }

              v61 = *a3 + v58;
              if (*(v61 + 4) == 1)
              {
                v62 = *v61;
              }

              else
              {
                v62 = -1;
              }

              *__p = 67109120;
              *&__p[4] = v62;
              _os_log_debug_impl(&dword_2588F5000, v60, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
            }
          }

          ++v59;
          v58 += 72;
        }

        while (-1 - 0x71C71C71C71C71C7 * ((*(a3 + 8) - *a3) >> 3) > v59);
      }

      if (ha_sensitive_logging_is_enabled())
      {
        v35 = ha_get_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze((a3 + 8));
        }
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v38 = ha_get_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v39 = *(a3 + 8);
    if (*a3 == v39)
    {
      if (ha_sensitive_logging_is_enabled())
      {
        v41 = ha_get_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    else
    {
      if (v39 - *a3 != 72)
      {
        v63 = 0;
        for (i = 0; -1 - 0x71C71C71C71C71C7 * ((*(a3 + 8) - *a3) >> 3) > i; ++i)
        {
          if (ha_sensitive_logging_is_enabled())
          {
            v65 = ha_get_log();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
            {
              if (0x8E38E38E38E38E39 * ((*(a3 + 8) - *a3) >> 3) <= i)
              {
                goto LABEL_157;
              }

              v66 = *a3 + v63;
              if (*(v66 + 12) == 1)
              {
                v67 = *(v66 + 8);
              }

              else
              {
                v67 = -1;
              }

              *__p = 67109120;
              *&__p[4] = v67;
              _os_log_debug_impl(&dword_2588F5000, v65, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
            }
          }

          v63 += 72;
        }
      }

      if (ha_sensitive_logging_is_enabled())
      {
        v40 = ha_get_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze((a3 + 8));
        }
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v42 = ha_get_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v43 = *(a3 + 8);
    if (*a3 == v43)
    {
      if (ha_sensitive_logging_is_enabled())
      {
        v45 = ha_get_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    else
    {
      if (v43 - *a3 != 72)
      {
        v68 = 0;
        v69 = 56;
        do
        {
          if (ha_sensitive_logging_is_enabled())
          {
            v70 = ha_get_log();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              if (0x8E38E38E38E38E39 * ((*(a3 + 8) - *a3) >> 3) <= v68)
              {
                goto LABEL_157;
              }

              v71 = *(*a3 + v69);
              *__p = 67109120;
              *&__p[4] = v71;
              _os_log_debug_impl(&dword_2588F5000, v70, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
            }
          }

          ++v68;
          v69 += 72;
        }

        while (-1 - 0x71C71C71C71C71C7 * ((*(a3 + 8) - *a3) >> 3) > v68);
      }

      if (ha_sensitive_logging_is_enabled())
      {
        v44 = ha_get_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze((a3 + 8));
        }
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v46 = ha_get_log();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    v47 = *(a3 + 8);
    if (*a3 == v47)
    {
      if (ha_sensitive_logging_is_enabled())
      {
        v49 = ha_get_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze();
        }
      }
    }

    else
    {
      if (v47 - *a3 != 72)
      {
        v72 = 0;
        v73 = 60;
        do
        {
          if (ha_sensitive_logging_is_enabled())
          {
            v74 = ha_get_log();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              if (0x8E38E38E38E38E39 * ((*(a3 + 8) - *a3) >> 3) <= v72)
              {
                goto LABEL_157;
              }

              v75 = *(*a3 + v73);
              *__p = 67109120;
              *&__p[4] = v75;
              _os_log_debug_impl(&dword_2588F5000, v74, OS_LOG_TYPE_DEBUG, "%d, ", __p, 8u);
            }
          }

          ++v72;
          v73 += 72;
        }

        while (-1 - 0x71C71C71C71C71C7 * ((*(a3 + 8) - *a3) >> 3) > v72);
      }

      if (ha_sensitive_logging_is_enabled())
      {
        v48 = ha_get_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          Nightingale::ngt_HistoricalAnalyzer::analyze((a3 + 8));
        }
      }
    }

    if (ha_sensitive_logging_is_enabled())
    {
      v50 = ha_get_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        Nightingale::ngt_HistoricalAnalyzer::analyze();
      }
    }

    if (a2)
    {
      Nightingale::ngt_HistoricalAnalyzer::getCoreAnalyticsContent(v79, &v108, v78, v77, &v92, __p);
      v51 = *v124;
      *(a3 + 168) = *&v124[16];
      v52 = v126;
      *(a3 + 184) = v125;
      *(a3 + 200) = v52;
      v53 = v120;
      *(a3 + 104) = v121;
      v54 = v123;
      *(a3 + 120) = *v122;
      *(a3 + 136) = v54;
      *(a3 + 152) = v51;
      v55 = *__p;
      *(a3 + 40) = *&__p[16];
      v56 = v119;
      *(a3 + 56) = v118;
      *(a3 + 72) = v56;
      *(a3 + 88) = v53;
      *(a3 + 216) = v127;
      *(a3 + 24) = v55;
    }

    *__p = &v92;
    std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__destroy_vector::operator()[abi:nn200100](__p);
    if (v103 == 1 && v101)
    {
      v102 = v101;
      operator delete(v101);
    }

    if (v100 == 1 && v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    if (v106)
    {
      v107 = v106;
      operator delete(v106);
    }
  }

  *__p = &v108;
  std::vector<Nightingale::cycleInfo>::__destroy_vector::operator()[abi:nn200100](__p);
  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  Nightingale::fwHEstimation::~fwHEstimation(&v113);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v114);
  Nightingale::wristTemperatureInputProcess::~wristTemperatureInputProcess(&v115);
  Nightingale::uiLogProcessor::~uiLogProcessor(v116);
  v57 = *MEMORY[0x277D85DE8];
}

void *Nightingale::phaseFactorHist::phaseFactorHist(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

unint64_t std::vector<Nightingale::cycleInfo>::insert(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) + 1;
    if (v15 > 0x2AAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v16 = a2 - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v14) >> 5);
    v18 = 2 * v17;
    if (2 * v17 <= v15)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) + 1;
    }

    if (v17 >= 0x155555555555555)
    {
      v19 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    v25 = a1;
    if (v19)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::cycleInfo>>(a1, v19);
    }

    v21 = 0;
    v22 = 32 * (v16 >> 5);
    v23 = v22;
    v24 = 0;
    std::__split_buffer<Nightingale::cycleInfo>::emplace_back<Nightingale::cycleInfo const&>(&v21, a3);
    v4 = std::vector<Nightingale::cycleInfo>::__swap_out_circular_buffer(a1, &v21, v4);
    std::__split_buffer<Nightingale::cycleInfo>::~__split_buffer(&v21);
  }

  else if (a2 == v7)
  {
    std::construct_at[abi:nn200100]<Nightingale::cycleInfo,Nightingale::cycleInfo&,Nightingale::cycleInfo*>(a1[1], a3);
    a1[1] = v7 + 96;
  }

  else
  {
    std::vector<Nightingale::cycleInfo>::__move_range(a1, a2, a1[1], a2 + 96);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 96;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    *v4 = *v10;
    v11 = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 48);
    *(v4 + 61) = *(v10 + 61);
    *(v4 + 32) = v12;
    *(v4 + 48) = v13;
    *(v4 + 16) = v11;
    if (v4 != v10)
    {
      std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>((v4 + 72), *(v10 + 72), *(v10 + 80), *(v10 + 80) - *(v10 + 72));
    }
  }

  return v4;
}

uint64_t std::vector<Nightingale::ngt_HistoricCycle>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<Nightingale::ngt_HistoricCycle>::__emplace_back_slow_path<Nightingale::ngt_HistoricCycle const&>(a1, a2);
  }

  else
  {
    std::construct_at[abi:nn200100]<Nightingale::ngt_HistoricCycle,Nightingale::ngt_HistoricCycle const&,Nightingale::ngt_HistoricCycle*>(*(a1 + 8), a2);
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

void Nightingale::phaseFactorHist::tagHistReproductive(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a3 != a3[1])
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
    v4 = a2[1];
    v5 = 0x8E38E38E38E38E39 * ((v4 - *a2) >> 3);
    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = (v5 - 1);
        do
        {
          v11 = 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3);
          if (v11 <= v9 || (v12 = v9 + 1, v11 <= v9 + 1) || (Nightingale::phaseFactorProcessor::tagPhaseJDayRange(a1, *(*a2 + v8 + 16) | ((*(*a2 + v8 + 88) - 1) << 32), a3, &__p), v13 = v12 - 1, 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3) <= v13))
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v14 = (*a2 + v8 + 32);
          if (v14 != &__p)
          {
            std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(v14, __p, v18, v18 - __p);
          }

          v8 += 72;
          v9 = v13 + 1;
        }

        while (v13 + 1 != v10);
        v4 = a2[1];
      }

      Nightingale::phaseFactorProcessor::tagPhaseJDayRange(a1, *(v4 - 56) | 0xFFFFFFFF00000000, a3, &__p);
      v15 = (a2[1] - 40);
      v16 = __p;
      if (v15 != &__p)
      {
        std::vector<Nightingale::Phase>::__assign_with_size[abi:nn200100]<Nightingale::Phase*,Nightingale::Phase*>(v15, __p, v18, v18 - __p);
        v16 = __p;
      }

      if (v16)
      {
        v18 = v16;
        operator delete(v16);
      }
    }
  }
}

void Nightingale::ngt_HistoricalAnalyzer::getCoreAnalyticsContent(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, __int128 **a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 192) = 0;
  v12 = a5[1];
  if (*a5 == v12 || (v14 = *a2, v13 = a2[1], *a2 == v13))
  {
    if ((v12 - *a5) < 0x81)
    {
      return;
    }

    v14 = *a2;
    v13 = a2[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - *a2) >> 5) < 2)
    {
      return;
    }
  }

  if (v14 + 96 != v13)
  {
    do
    {
      v15 = v14 + 96;
      v16 = *(v14 + 144);
      *(v14 + 32) = *(v14 + 128);
      *(v14 + 48) = v16;
      *(v14 + 61) = *(v14 + 157);
      v17 = *(v14 + 112);
      *v14 = *(v14 + 96);
      *(v14 + 16) = v17;
      std::vector<float>::__move_assign(v14 + 72, (v14 + 168));
      v18 = v14 + 192;
      v14 += 96;
    }

    while (v18 != v13);
    v13 = a2[1];
    v14 = v15;
  }

  while (v13 != v14)
  {
    v19 = *(v13 - 24);
    if (v19)
    {
      *(v13 - 16) = v19;
      operator delete(v19);
    }

    v13 -= 96;
  }

  a2[1] = v14;
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *>(&v259, *a5 + 8, a5[1], *a5);
  v21 = v20;
  v22 = a5[1];
  if (v22 != v20)
  {
    do
    {
      v22 -= 128;
      std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(a5, v22);
    }

    while (v22 != v21);
  }

  a5[1] = v21;
  v23 = *a2;
  v24 = a2[1];
  v226 = *a2;
  if (*a2 == v24)
  {
    v28 = 0.0;
    v27 = 0.0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    do
    {
      if (*(v23 + 8) == 1 && *v23 == *(v23 + 4))
      {
        ++v25;
      }

      v26 += *(v23 + 16);
      v23 += 96;
    }

    while (v23 != v24);
    v27 = v25;
    v28 = v26;
  }

  v29 = *(v24 - 24);
  if (v29)
  {
    *(v24 - 16) = v29;
    operator delete(v29);
    v21 = a5[1];
  }

  a2[1] = v24 - 96;
  std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(a5, (v21 - 8));
  a5[1] = v21 - 8;
  HasMultipleWatchHist = Nightingale::ngt_HistoricalAnalyzer::getHasMultipleWatchHist(a1, 60, a3, a4);
  v259 = 0;
  v260 = 0;
  v261 = 0;
  v256 = 0;
  v257 = 0;
  v258 = 0;
  v253 = 0;
  v254 = 0;
  v255 = 0;
  v250 = 0;
  v251 = 0;
  v252 = 0;
  v247 = 0;
  v248 = 0;
  v249 = 0;
  v245[0] = 0;
  v245[1] = 0;
  v246 = 0;
  v242 = 0;
  v243 = 0;
  v244 = 0;
  __src[0] = 0;
  __src[1] = 0;
  v241 = 0;
  v238[0] = 0;
  v238[1] = 0;
  v239 = 0;
  v236[0] = 0;
  v236[1] = 0;
  v237 = 0;
  v234[0] = 0;
  v234[1] = 0;
  v235 = 0;
  __dst[0] = 0;
  __dst[1] = 0;
  v233 = 0;
  v230[0] = 0;
  v230[1] = 0;
  v31 = *a5;
  v30 = a5[1];
  v32 = (v30 - *a5) >> 7;
  v231 = 0;
  if (v32 <= 12)
  {
    v33 = 12;
  }

  else
  {
    v33 = v32;
  }

  if (v32 <= 15)
  {
    LODWORD(v32) = 15;
  }

  __p[0] = 0;
  __p[1] = 0;
  v229 = 0;
  if (v30 == v31)
  {
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v34 = 0;
    v35 = v33 - 12;
    v36 = v32 - 15;
    do
    {
      if (*v31 == 1)
      {
        LOBYTE(v262) = *(v31 + 4) != 0.0;
        std::vector<BOOL>::push_back(&v259, &v262);
        if (*v31)
        {
          std::vector<float>::push_back[abi:nn200100](&v253, (v31 + 8));
          std::vector<float>::push_back[abi:nn200100](&v242, (v31 + 12));
          if (*(v31 + 108) == 1)
          {
            std::vector<float>::push_back[abi:nn200100](v245, (v31 + 104));
          }
        }
      }

      if (v34 >= v35 && *v31 == 1)
      {
        std::vector<float>::push_back[abi:nn200100](&v250, (v31 + 16));
        std::vector<float>::push_back[abi:nn200100](__p, (v31 + 120));
      }

      if (v34 >= v36 && *v31 == 1)
      {
        std::vector<float>::push_back[abi:nn200100](&v247, (v31 + 8));
        v37 = __src[1];
        if (__src[1] >= v241)
        {
          v39 = __src[0];
          v40 = __src[1] - __src[0];
          v41 = (__src[1] - __src[0]) >> 2;
          v42 = v41 + 1;
          if ((v41 + 1) >> 62)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v43 = v241 - __src[0];
          if ((v241 - __src[0]) >> 1 > v42)
          {
            v42 = v43 >> 1;
          }

          v44 = v43 >= 0x7FFFFFFFFFFFFFFCLL;
          v45 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v44)
          {
            v45 = v42;
          }

          if (v45)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(__src, v45);
          }

          *(4 * v41) = *(v31 + 116);
          v38 = (4 * v41 + 4);
          memcpy(0, v39, v40);
          v46 = __src[0];
          __src[0] = 0;
          __src[1] = v38;
          v241 = 0;
          if (v46)
          {
            operator delete(v46);
          }
        }

        else
        {
          *__src[1] = *(v31 + 116);
          v38 = v37 + 4;
        }

        __src[1] = v38;
        if (*(v31 + 125) == 1)
        {
          std::vector<BOOL>::push_back(&v256, (v31 + 124));
        }
      }

      if (v34 >= v35)
      {
        v47 = *(v31 + 112);
        std::vector<float>::push_back[abi:nn200100](v238, (v31 + 112));
      }

      if (*(v31 + 24) == 1)
      {
        v48 = *(v31 + 20);
        std::vector<float>::push_back[abi:nn200100](v236, (v31 + 20));
      }

      if (*(v31 + 32) == 1)
      {
        v49 = *(v31 + 28);
        std::vector<float>::push_back[abi:nn200100](v234, (v31 + 28));
      }

      if (*(v31 + 64) == 1)
      {
        std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__dst, __dst[1], *(v31 + 40), *(v31 + 48), (*(v31 + 48) - *(v31 + 40)) >> 2);
      }

      if (*(v31 + 96) == 1)
      {
        std::vector<float>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v230, v230[1], *(v31 + 72), *(v31 + 80), (*(v31 + 80) - *(v31 + 72)) >> 2);
      }

      ++v34;
      v31 += 128;
    }

    while (v31 != v30);
    v51 = v259;
    v50 = v260;
  }

  if (v50 > 0x3F || (v52 = 0.0, (v50 & 0x3F) != 0))
  {
    v53 = 0;
    v54 = &v51[v50 >> 6];
    v55 = v54;
    v52 = 0.0;
    do
    {
      if ((*v51 >> v53))
      {
        v56 = 1.0;
      }

      else
      {
        v56 = 0.0;
      }

      v52 = v52 + v56;
      if (v53 == 63)
      {
        v55 = v54;
      }

      v51 += v53 == 63;
      if (v53 == 63)
      {
        v53 = 0;
      }

      else
      {
        ++v53;
      }
    }

    while (v53 != (v50 & 0x3F) || v51 != v55);
  }

  v57 = v52 / v50;
  if (v57 >= 0.0 && v57 <= 1.0)
  {
    if (v57 == 1.0)
    {
      v59 = 9;
    }

    else
    {
      v59 = (v57 / 0.1);
    }
  }

  else
  {
    v59 = -1;
  }

  v224 = v59;
  if (v253 != v254)
  {
    v60 = v253;
    do
    {
      v61 = *v60++;
    }

    while (v60 != v254);
  }

  if (v253 == v254)
  {
    v66 = -1;
    v221 = -1;
    v222 = -1;
    v220 = -1;
    v223 = -1;
LABEL_114:
    v219 = v66;
    goto LABEL_115;
  }

  std::__sort<std::__less<float,float> &,float *>();
  Percentile = Nightingale::getPercentile(&v253, 0, 0.5);
  v64 = Nightingale::check2Real_t_equal(v63, Percentile, -1.0);
  if (v64)
  {
    v65 = -1;
LABEL_93:
    v223 = v65;
    goto LABEL_97;
  }

  if (Percentile >= 0.1)
  {
    if (Percentile >= 0.8)
    {
      v65 = 15;
    }

    else
    {
      v65 = (((Percentile + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_93;
  }

  v223 = 0;
LABEL_97:
  v67 = *(v254 - 1);
  v68 = Nightingale::check2Real_t_equal(v64, v67, -1.0);
  if (v68)
  {
    v69 = -1;
LABEL_99:
    v222 = v69;
    goto LABEL_102;
  }

  if (v67 >= 0.1)
  {
    if (v67 >= 0.8)
    {
      v69 = 15;
    }

    else
    {
      v69 = (((v67 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_99;
  }

  v222 = 0;
LABEL_102:
  v70 = *v253;
  if (Nightingale::check2Real_t_equal(v68, *v253, -1.0))
  {
    v71 = -1;
LABEL_104:
    v221 = v71;
    goto LABEL_107;
  }

  if (v70 >= 0.1)
  {
    if (v70 >= 0.8)
    {
      v71 = 15;
    }

    else
    {
      v71 = (((v70 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_104;
  }

  v221 = 0;
LABEL_107:
  v72 = Nightingale::getPercentile(&v253, 0, 0.75);
  if (Nightingale::check2Real_t_equal(v73, v72, -1.0))
  {
    v74 = -1;
LABEL_109:
    v220 = v74;
    goto LABEL_112;
  }

  if (v72 >= 0.1)
  {
    if (v72 >= 0.8)
    {
      v74 = 15;
    }

    else
    {
      v74 = (((v72 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_109;
  }

  v220 = 0;
LABEL_112:
  v75 = Nightingale::getPercentile(&v253, 0, 0.25);
  if (Nightingale::check2Real_t_equal(v76, v75, -1.0))
  {
    v66 = -1;
    goto LABEL_114;
  }

  if (v75 >= 0.1)
  {
    if (v75 >= 0.8)
    {
      v66 = 15;
    }

    else
    {
      v66 = (((v75 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_114;
  }

  v219 = 0;
LABEL_115:
  if (v242 != v243)
  {
    v77 = v242;
    do
    {
      v78 = *v77++;
    }

    while (v77 != v243);
  }

  if (v242 == v243)
  {
    v83 = -1;
    v216 = -1;
    v217 = -1;
    v215 = -1;
    v218 = -1;
    goto LABEL_144;
  }

  std::__sort<std::__less<float,float> &,float *>();
  v79 = Nightingale::getPercentile(&v242, 0, 0.5);
  v81 = Nightingale::check2Real_t_equal(v80, v79, -1.0);
  if (v81)
  {
    v82 = -1;
LABEL_121:
    v218 = v82;
    goto LABEL_127;
  }

  if (v79 >= 0.1)
  {
    if (v79 >= 0.8)
    {
      v82 = 15;
    }

    else
    {
      v82 = (((v79 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_121;
  }

  v218 = 0;
LABEL_127:
  v84 = *(v243 - 1);
  v85 = Nightingale::check2Real_t_equal(v81, v84, -1.0);
  if (v85)
  {
    v86 = -1;
LABEL_129:
    v217 = v86;
    goto LABEL_132;
  }

  if (v84 >= 0.1)
  {
    if (v84 >= 0.8)
    {
      v86 = 15;
    }

    else
    {
      v86 = (((v84 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_129;
  }

  v217 = 0;
LABEL_132:
  v87 = *v242;
  if (Nightingale::check2Real_t_equal(v85, *v242, -1.0))
  {
    v88 = -1;
LABEL_134:
    v216 = v88;
    goto LABEL_137;
  }

  if (v87 >= 0.1)
  {
    if (v87 >= 0.8)
    {
      v88 = 15;
    }

    else
    {
      v88 = (((v87 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_134;
  }

  v216 = 0;
LABEL_137:
  v89 = Nightingale::getPercentile(&v242, 0, 0.75);
  if (Nightingale::check2Real_t_equal(v90, v89, -1.0))
  {
    v91 = -1;
LABEL_139:
    v215 = v91;
    goto LABEL_142;
  }

  if (v89 >= 0.1)
  {
    if (v89 >= 0.8)
    {
      v91 = 15;
    }

    else
    {
      v91 = (((v89 + -0.1) / 0.05) + 1.0);
    }

    goto LABEL_139;
  }

  v215 = 0;
LABEL_142:
  v92 = Nightingale::getPercentile(&v242, 0, 0.25);
  if (Nightingale::check2Real_t_equal(v93, v92, -1.0))
  {
    v83 = -1;
  }

  else
  {
    if (v92 < 0.1)
    {
      v214 = 0;
      goto LABEL_145;
    }

    if (v92 >= 0.8)
    {
      v83 = 15;
    }

    else
    {
      v83 = (((v92 + -0.1) / 0.05) + 1.0);
    }
  }

LABEL_144:
  v214 = v83;
LABEL_145:
  if (v245[0] == v245[1])
  {
    v211 = -1;
    v212 = -1;
    v213 = -1;
    v209 = -1;
    v210 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v94 = Nightingale::getPercentile(v245, 0, 0.5);
    CAFwEndEstimateError = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v95, v94);
    v213 = CAFwEndEstimateError;
    v97 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(CAFwEndEstimateError, *(v245[1] - 1));
    v212 = v97;
    v209 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v97, *v245[0]);
    v98 = Nightingale::getPercentile(v245, 0, 0.75);
    v211 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v99, v98);
    v100 = Nightingale::getPercentile(v245, 0, 0.25);
    v210 = Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(v101, v100);
  }

  if (v250 != v251)
  {
    v102 = v250;
    do
    {
      v103 = *v102++;
    }

    while (v102 != v251);
  }

  if (v250 == v251)
  {
    v108 = -1;
  }

  else
  {
    v104 = 0.0;
    v105 = v250;
    do
    {
      v106 = *v105++;
      v104 = v104 + v106;
    }

    while (v105 != v251);
    v107 = sqrtf(v104 / (v251 - v250));
    if (v107 >= 0.35)
    {
      v108 = 7;
    }

    else
    {
      v108 = (v107 / 0.05);
    }
  }

  v208 = v108;
  v109 = __p[0];
  if (__p[0] == __p[1] || (std::__sort<std::__less<float,float> &,float *>(), v110 = Nightingale::getPercentile(__p, 0, 0.5), v110 < 0.0))
  {
    v207 = -1;
    v111 = v226;
  }

  else
  {
    v111 = v226;
    if (v110 >= 0.9)
    {
      v112 = 9;
    }

    else
    {
      v112 = (v110 / 0.1);
    }

    v207 = v112;
  }

  v113 = __src[1];
  v114 = __src[0];
  if (__src[0] == __src[1])
  {
    v197 = -1;
    v198 = -1;
    v200 = -1;
    v201 = -1;
    v199 = -1;
    v202 = -1;
    v203 = -1;
    v204 = -1;
    v205 = -1;
    v206 = -1;
  }

  else
  {
    v115 = 0;
    v116 = __src[0];
    do
    {
      v117 = *v116++;
      if (v117 == 1)
      {
        ++v115;
      }
    }

    while (v116 != __src[1]);
    CANumberOfCycles = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v109, ((__src[1] - __src[0]) >> 2));
    v206 = CANumberOfCycles;
    v119 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(CANumberOfCycles, v115);
    v205 = v119;
    v120 = 0;
    v121 = v114;
    do
    {
      v122 = *v121++;
      if (v122 == 2)
      {
        ++v120;
      }
    }

    while (v121 != v113);
    v123 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v119, v120);
    v204 = v123;
    v124 = 0;
    v125 = v114;
    do
    {
      v126 = *v125++;
      if (v126 == 3)
      {
        ++v124;
      }
    }

    while (v125 != v113);
    v127 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v123, v124);
    v203 = v127;
    v128 = 0;
    v129 = v114;
    do
    {
      v130 = *v129++;
      if (v130 == 4)
      {
        ++v128;
      }
    }

    while (v129 != v113);
    v131 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v127, v128);
    v202 = v131;
    v132 = 0;
    v133 = v114;
    do
    {
      if (!*v133++)
      {
        ++v132;
      }
    }

    while (v133 != v113);
    v135 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v131, v132);
    v201 = v135;
    v136 = 0;
    v137 = v114;
    do
    {
      v138 = *v137++;
      if (v138 == 6)
      {
        ++v136;
      }
    }

    while (v137 != v113);
    v139 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v135, v136);
    v200 = v139;
    v140 = 0;
    do
    {
      v141 = *v114++;
      if (v141 == 7)
      {
        ++v140;
      }
    }

    while (v114 != v113);
    v142 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v139, v140);
    v199 = v142;
    v143 = v247;
    if (v247 == v248)
    {
      v144 = 0;
    }

    else
    {
      v144 = 0;
      do
      {
        v145 = *v143++;
        ++v144;
      }

      while (v143 != v248);
    }

    v146 = v257 & 0x3F;
    if (v257 <= 0x3F && v146 == 0)
    {
      LODWORD(v149) = 0;
    }

    else
    {
      v148 = 0;
      v149 = 0;
      v150 = v256;
      v151 = &v256[8 * (v257 >> 6)];
      do
      {
        v149 += (*v150 >> v148) & 1;
        if (v148 == 63)
        {
          v151 = &v256[8 * (v257 >> 6)];
        }

        v150 += 8 * (v148 == 63);
        if (v148 == 63)
        {
          v148 = 0;
        }

        else
        {
          ++v148;
        }
      }

      while (v148 != v146 || v150 != v151);
    }

    v152 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v142, v144 + v149);
    v198 = v152;
    v197 = Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(v152, v149);
    v111 = v226;
  }

  v153 = v24 - v111;
  if (v238[0] == v238[1])
  {
    v195 = -1;
    v196 = -1;
    v193 = -1;
    v194 = -1;
    v227 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v154 = Nightingale::getPercentile(v238, 0, 0.5);
    if (v154 >= 6.0)
    {
      if (v154 >= 9.0)
      {
        if (v154 >= 12.0)
        {
          if (v154 >= 15.0)
          {
            if (v154 >= 18.0)
            {
              if (v154 >= 21.0)
              {
                if (v154 >= 24.0)
                {
                  v155 = 7;
                }

                else
                {
                  v155 = 6;
                }
              }

              else
              {
                v155 = 5;
              }
            }

            else
            {
              v155 = 4;
            }
          }

          else
          {
            v155 = 3;
          }
        }

        else
        {
          v155 = 2;
        }
      }

      else
      {
        v155 = 1;
      }

      v227 = v155;
    }

    else
    {
      v227 = 0;
    }

    v156 = *(v238[1] - 1);
    if (v156 >= 6.0)
    {
      if (v156 >= 9.0)
      {
        if (v156 >= 12.0)
        {
          if (v156 >= 15.0)
          {
            if (v156 >= 18.0)
            {
              if (v156 >= 21.0)
              {
                if (v156 >= 24.0)
                {
                  v157 = 7;
                }

                else
                {
                  v157 = 6;
                }
              }

              else
              {
                v157 = 5;
              }
            }

            else
            {
              v157 = 4;
            }
          }

          else
          {
            v157 = 3;
          }
        }

        else
        {
          v157 = 2;
        }
      }

      else
      {
        v157 = 1;
      }

      v196 = v157;
    }

    else
    {
      v196 = 0;
    }

    v158 = *v238[0];
    if (*v238[0] >= 6.0)
    {
      if (v158 >= 9.0)
      {
        if (v158 >= 12.0)
        {
          if (v158 >= 15.0)
          {
            if (v158 >= 18.0)
            {
              if (v158 >= 21.0)
              {
                if (v158 >= 24.0)
                {
                  v159 = 7;
                }

                else
                {
                  v159 = 6;
                }
              }

              else
              {
                v159 = 5;
              }
            }

            else
            {
              v159 = 4;
            }
          }

          else
          {
            v159 = 3;
          }
        }

        else
        {
          v159 = 2;
        }
      }

      else
      {
        v159 = 1;
      }

      v195 = v159;
    }

    else
    {
      v195 = 0;
    }

    v160 = Nightingale::getPercentile(v238, 0, 0.75);
    if (v160 >= 6.0)
    {
      if (v160 >= 9.0)
      {
        if (v160 >= 12.0)
        {
          if (v160 >= 15.0)
          {
            if (v160 >= 18.0)
            {
              if (v160 >= 21.0)
              {
                if (v160 >= 24.0)
                {
                  v161 = 7;
                }

                else
                {
                  v161 = 6;
                }
              }

              else
              {
                v161 = 5;
              }
            }

            else
            {
              v161 = 4;
            }
          }

          else
          {
            v161 = 3;
          }
        }

        else
        {
          v161 = 2;
        }
      }

      else
      {
        v161 = 1;
      }

      v194 = v161;
    }

    else
    {
      v194 = 0;
    }

    v162 = Nightingale::getPercentile(v238, 0, 0.25);
    if (v162 >= 6.0)
    {
      if (v162 >= 9.0)
      {
        if (v162 >= 12.0)
        {
          if (v162 >= 15.0)
          {
            if (v162 >= 18.0)
            {
              if (v162 >= 21.0)
              {
                if (v162 >= 24.0)
                {
                  v163 = 7;
                }

                else
                {
                  v163 = 6;
                }
              }

              else
              {
                v163 = 5;
              }
            }

            else
            {
              v163 = 4;
            }
          }

          else
          {
            v163 = 3;
          }
        }

        else
        {
          v163 = 2;
        }
      }

      else
      {
        v163 = 1;
      }

      v193 = v163;
    }

    else
    {
      v193 = 0;
    }
  }

  v164 = v153 >> 5;
  if (v236[0] == v236[1])
  {
    v167 = -1;
    v168 = -1;
    v166 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v165 = Nightingale::getPercentile(v236, 0, 0.5);
    if (v165 >= 1.0)
    {
      if (v165 >= 5.0)
      {
        if (v165 >= 10.0)
        {
          if (v165 >= 15.0)
          {
            if (v165 >= 20.0)
            {
              if (v165 >= 25.0)
              {
                if (v165 >= 30.0)
                {
                  v166 = 7;
                }

                else
                {
                  v166 = 6;
                }
              }

              else
              {
                v166 = 5;
              }
            }

            else
            {
              v166 = 4;
            }
          }

          else
          {
            v166 = 3;
          }
        }

        else
        {
          v166 = 2;
        }
      }

      else
      {
        v166 = 1;
      }
    }

    else
    {
      v166 = 0;
    }

    v169 = *(v236[1] - 1);
    if (v169 >= 1.0)
    {
      if (v169 >= 5.0)
      {
        if (v169 >= 10.0)
        {
          if (v169 >= 15.0)
          {
            if (v169 >= 20.0)
            {
              if (v169 >= 25.0)
              {
                if (v169 >= 30.0)
                {
                  v167 = 7;
                }

                else
                {
                  v167 = 6;
                }
              }

              else
              {
                v167 = 5;
              }
            }

            else
            {
              v167 = 4;
            }
          }

          else
          {
            v167 = 3;
          }
        }

        else
        {
          v167 = 2;
        }
      }

      else
      {
        v167 = 1;
      }
    }

    else
    {
      v167 = 0;
    }

    v170 = *v236[0];
    if (*v236[0] >= 1.0)
    {
      if (v170 >= 5.0)
      {
        if (v170 >= 10.0)
        {
          if (v170 >= 15.0)
          {
            if (v170 >= 20.0)
            {
              if (v170 >= 25.0)
              {
                if (v170 >= 30.0)
                {
                  v168 = 7;
                }

                else
                {
                  v168 = 6;
                }
              }

              else
              {
                v168 = 5;
              }
            }

            else
            {
              v168 = 4;
            }
          }

          else
          {
            v168 = 3;
          }
        }

        else
        {
          v168 = 2;
        }
      }

      else
      {
        v168 = 1;
      }
    }

    else
    {
      v168 = 0;
    }
  }

  v171 = 0xAAAAAAAAAAAAAAABLL * v164;
  if (v234[0] == v234[1])
  {
    v174 = -1;
    v175 = -1;
    v173 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v172 = Nightingale::getPercentile(v234, 0, 0.5);
    if (v172 >= 1.0)
    {
      if (v172 >= 5.0)
      {
        if (v172 >= 10.0)
        {
          if (v172 >= 15.0)
          {
            if (v172 >= 20.0)
            {
              if (v172 >= 25.0)
              {
                if (v172 >= 30.0)
                {
                  v173 = 7;
                }

                else
                {
                  v173 = 6;
                }
              }

              else
              {
                v173 = 5;
              }
            }

            else
            {
              v173 = 4;
            }
          }

          else
          {
            v173 = 3;
          }
        }

        else
        {
          v173 = 2;
        }
      }

      else
      {
        v173 = 1;
      }
    }

    else
    {
      v173 = 0;
    }

    v176 = *(v234[1] - 1);
    if (v176 >= 1.0)
    {
      if (v176 >= 5.0)
      {
        if (v176 >= 10.0)
        {
          if (v176 >= 15.0)
          {
            if (v176 >= 20.0)
            {
              if (v176 >= 25.0)
              {
                if (v176 >= 30.0)
                {
                  v174 = 7;
                }

                else
                {
                  v174 = 6;
                }
              }

              else
              {
                v174 = 5;
              }
            }

            else
            {
              v174 = 4;
            }
          }

          else
          {
            v174 = 3;
          }
        }

        else
        {
          v174 = 2;
        }
      }

      else
      {
        v174 = 1;
      }
    }

    else
    {
      v174 = 0;
    }

    v177 = *v234[0];
    if (*v234[0] >= 1.0)
    {
      if (v177 >= 5.0)
      {
        if (v177 >= 10.0)
        {
          if (v177 >= 15.0)
          {
            if (v177 >= 20.0)
            {
              if (v177 >= 25.0)
              {
                if (v177 >= 30.0)
                {
                  v175 = 7;
                }

                else
                {
                  v175 = 6;
                }
              }

              else
              {
                v175 = 5;
              }
            }

            else
            {
              v175 = 4;
            }
          }

          else
          {
            v175 = 3;
          }
        }

        else
        {
          v175 = 2;
        }
      }

      else
      {
        v175 = 1;
      }
    }

    else
    {
      v175 = 0;
    }
  }

  v178 = v171;
  if (__dst[0] == __dst[1])
  {
    v181 = -1;
    v182 = -1;
    v180 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v179 = Nightingale::getPercentile(__dst, 0, 0.5);
    if (v179 >= 1.0)
    {
      if (v179 >= 5.0)
      {
        if (v179 >= 10.0)
        {
          if (v179 >= 15.0)
          {
            if (v179 >= 20.0)
            {
              if (v179 >= 25.0)
              {
                if (v179 >= 30.0)
                {
                  v180 = 7;
                }

                else
                {
                  v180 = 6;
                }
              }

              else
              {
                v180 = 5;
              }
            }

            else
            {
              v180 = 4;
            }
          }

          else
          {
            v180 = 3;
          }
        }

        else
        {
          v180 = 2;
        }
      }

      else
      {
        v180 = 1;
      }
    }

    else
    {
      v180 = 0;
    }

    v183 = *(__dst[1] - 1);
    if (v183 >= 1.0)
    {
      if (v183 >= 5.0)
      {
        if (v183 >= 10.0)
        {
          if (v183 >= 15.0)
          {
            if (v183 >= 20.0)
            {
              if (v183 >= 25.0)
              {
                if (v183 >= 30.0)
                {
                  v181 = 7;
                }

                else
                {
                  v181 = 6;
                }
              }

              else
              {
                v181 = 5;
              }
            }

            else
            {
              v181 = 4;
            }
          }

          else
          {
            v181 = 3;
          }
        }

        else
        {
          v181 = 2;
        }
      }

      else
      {
        v181 = 1;
      }
    }

    else
    {
      v181 = 0;
    }

    v184 = *__dst[0];
    if (*__dst[0] >= 1.0)
    {
      if (v184 >= 5.0)
      {
        if (v184 >= 10.0)
        {
          if (v184 >= 15.0)
          {
            if (v184 >= 20.0)
            {
              if (v184 >= 25.0)
              {
                if (v184 >= 30.0)
                {
                  v182 = 7;
                }

                else
                {
                  v182 = 6;
                }
              }

              else
              {
                v182 = 5;
              }
            }

            else
            {
              v182 = 4;
            }
          }

          else
          {
            v182 = 3;
          }
        }

        else
        {
          v182 = 2;
        }
      }

      else
      {
        v182 = 1;
      }
    }

    else
    {
      v182 = 0;
    }
  }

  v185 = v28 / v178;
  if (v230[0] == v230[1])
  {
    v188 = -1;
    v189 = -1;
    v187 = -1;
  }

  else
  {
    std::__sort<std::__less<float,float> &,float *>();
    v186 = Nightingale::getPercentile(v230, 0, 0.5);
    if (v186 >= 1.0)
    {
      if (v186 >= 5.0)
      {
        if (v186 >= 10.0)
        {
          if (v186 >= 15.0)
          {
            if (v186 >= 20.0)
            {
              if (v186 >= 25.0)
              {
                if (v186 >= 30.0)
                {
                  v187 = 7;
                }

                else
                {
                  v187 = 6;
                }
              }

              else
              {
                v187 = 5;
              }
            }

            else
            {
              v187 = 4;
            }
          }

          else
          {
            v187 = 3;
          }
        }

        else
        {
          v187 = 2;
        }
      }

      else
      {
        v187 = 1;
      }
    }

    else
    {
      v187 = 0;
    }

    v190 = *(v230[1] - 1);
    if (v190 >= 1.0)
    {
      if (v190 >= 5.0)
      {
        if (v190 >= 10.0)
        {
          if (v190 >= 15.0)
          {
            if (v190 >= 20.0)
            {
              if (v190 >= 25.0)
              {
                if (v190 >= 30.0)
                {
                  v188 = 7;
                }

                else
                {
                  v188 = 6;
                }
              }

              else
              {
                v188 = 5;
              }
            }

            else
            {
              v188 = 4;
            }
          }

          else
          {
            v188 = 3;
          }
        }

        else
        {
          v188 = 2;
        }
      }

      else
      {
        v188 = 1;
      }
    }

    else
    {
      v188 = 0;
    }

    v191 = *v230[0];
    if (*v230[0] >= 1.0)
    {
      if (v191 >= 5.0)
      {
        if (v191 >= 10.0)
        {
          if (v191 >= 15.0)
          {
            if (v191 >= 20.0)
            {
              if (v191 >= 25.0)
              {
                if (v191 >= 30.0)
                {
                  v189 = 7;
                }

                else
                {
                  v189 = 6;
                }
              }

              else
              {
                v189 = 5;
              }
            }

            else
            {
              v189 = 4;
            }
          }

          else
          {
            v189 = 3;
          }
        }

        else
        {
          v189 = 2;
        }
      }

      else
      {
        v189 = 1;
      }
    }

    else
    {
      v189 = 0;
    }
  }

  *(a6 + 8) = HasMultipleWatchHist;
  *(a6 + 12) = v224;
  *(a6 + 16) = v219;
  *(a6 + 20) = v223;
  *(a6 + 24) = v220;
  *(a6 + 28) = v221;
  *(a6 + 32) = v222;
  *(a6 + 36) = v214;
  *(a6 + 40) = v218;
  *(a6 + 44) = v215;
  *(a6 + 48) = v216;
  *(a6 + 52) = v217;
  *(a6 + 56) = v208;
  *(a6 + 60) = v207;
  *(a6 + 64) = v209;
  *(a6 + 9) = v262;
  *(a6 + 11) = v263;
  *(a6 + 68) = v210;
  v192 = *(a6 + 192);
  *a6 = v27 / v178;
  *(a6 + 4) = v185;
  *(a6 + 72) = v213;
  *(a6 + 76) = v211;
  *(a6 + 80) = v212;
  *(a6 + 84) = v195;
  *(a6 + 88) = v193;
  *(a6 + 92) = v227;
  *(a6 + 96) = v194;
  *(a6 + 100) = v196;
  *(a6 + 104) = v166;
  *(a6 + 108) = v168;
  *(a6 + 112) = v167;
  *(a6 + 116) = v173;
  *(a6 + 120) = v175;
  *(a6 + 124) = v174;
  *(a6 + 128) = v180;
  *(a6 + 132) = v182;
  *(a6 + 136) = v181;
  *(a6 + 140) = v187;
  *(a6 + 144) = v189;
  *(a6 + 148) = v188;
  *(a6 + 152) = v206;
  *(a6 + 156) = v205;
  *(a6 + 160) = v204;
  *(a6 + 164) = v203;
  *(a6 + 168) = v202;
  *(a6 + 172) = v200;
  *(a6 + 176) = v199;
  *(a6 + 180) = v201;
  *(a6 + 184) = v198;
  *(a6 + 188) = v197;
  if ((v192 & 1) == 0)
  {
    *(a6 + 192) = 1;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v230[0])
  {
    v230[1] = v230[0];
    operator delete(v230[0]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (v234[0])
  {
    v234[1] = v234[0];
    operator delete(v234[0]);
  }

  if (v236[0])
  {
    v236[1] = v236[0];
    operator delete(v236[0]);
  }

  if (v238[0])
  {
    v238[1] = v238[0];
    operator delete(v238[0]);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  if (v242)
  {
    v243 = v242;
    operator delete(v242);
  }

  if (v245[0])
  {
    v245[1] = v245[0];
    operator delete(v245[0]);
  }

  if (v247)
  {
    v248 = v247;
    operator delete(v247);
  }

  if (v250)
  {
    v251 = v250;
    operator delete(v250);
  }

  if (v253)
  {
    v254 = v253;
    operator delete(v253);
  }

  if (v256)
  {
    operator delete(v256);
  }

  if (v259)
  {
    operator delete(v259);
  }
}

void Nightingale::phaseFactorHist::~phaseFactorHist(Nightingale::phaseFactorHist *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getHasMultipleWatchHist(void *a1, int a2, unint64_t a3, char a4)
{
  Nightingale::wristTemperatureInputAcquisition::wristTemperatureInputAcquisition(v20);
  Nightingale::wristTemperatureInputAcquisition::extractKaliInputsJDayRange(a1, (*(a1[1] - 64) - a2 + 1), *(a1[1] - 64), a3, a4, &v14);
  if (v16 == v17 || v17 - v16 == 1)
  {
    goto LABEL_3;
  }

  if ((v17 - v16) <= 2)
  {
    v10 = v14;
    v11 = v15;
    if (v14 == v15)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_4;
    }

    do
    {
      std::vector<int>::vector[abi:nn200100](v13, v10);
      v8 = Nightingale::checkNumTmpSwitches(v13, 2, 30.0);
      if (v13[0])
      {
        v13[1] = v13[0];
        operator delete(v13[0]);
      }

      v10 += 3;
      if (v10 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v8;
      }
    }

    while (v12 != 1);
  }

  else
  {
    v8 = 1;
  }

LABEL_4:
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v21 = &v14;
  std::vector<std::vector<std::pair<BOOL,float>>>::__destroy_vector::operator()[abi:nn200100](&v21);
  Nightingale::wristTemperatureInputAcquisition::~wristTemperatureInputAcquisition(v20);
  return v8;
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCAFractionOfCycles(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 1.0)
  {
    return 9;
  }

  return (a2 / 0.1);
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCASignalAtFwEndEstimate(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (Nightingale::check2Real_t_equal(this, a2, -1.0))
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 < 0.1)
  {
    return 0;
  }

  if (a2 >= 0.8)
  {
    return 15;
  }

  return (((a2 + -0.1) / 0.05) + 1.0);
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCAFwEndEstimateError(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < -7.0)
  {
    return 0;
  }

  if (a2 < -5.0)
  {
    return 1;
  }

  if (a2 < -3.0)
  {
    return 2;
  }

  if (a2 < -1.0)
  {
    return 3;
  }

  if (a2 < 1.0)
  {
    return 4;
  }

  if (a2 >= 7.0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 7;
  }

  if (a2 >= 5.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  if (a2 >= 3.0)
  {
    return v4;
  }

  else
  {
    return 5;
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCANumberOfCycles(Nightingale::ngt_HistoricalAnalyzer *this, unsigned int a2)
{
  if (a2 >= 0x10)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2;
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCAEstimatedLutealPhaseLength(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < 6.0)
  {
    return 0;
  }

  if (a2 < 9.0)
  {
    return 1;
  }

  if (a2 < 12.0)
  {
    return 2;
  }

  if (a2 < 15.0)
  {
    return 3;
  }

  if (a2 >= 24.0)
  {
    v3 = 7;
  }

  else
  {
    v3 = 6;
  }

  if (a2 >= 21.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a2 >= 18.0)
  {
    return v4;
  }

  else
  {
    return 4;
  }
}

uint64_t Nightingale::ngt_HistoricalAnalyzer::getCADaysLoggedBeforeOrAfterCycleStart(Nightingale::ngt_HistoricalAnalyzer *this, float a2)
{
  if (a2 < 1.0)
  {
    return 0;
  }

  if (a2 < 5.0)
  {
    return 1;
  }

  if (a2 < 10.0)
  {
    return 2;
  }

  if (a2 < 15.0)
  {
    return 3;
  }

  if (a2 >= 30.0)
  {
    v3 = 7;
  }

  else
  {
    v3 = 6;
  }

  if (a2 >= 25.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a2 >= 20.0)
  {
    return v4;
  }

  else
  {
    return 4;
  }
}

uint64_t Nightingale::phaseFactorHist::suppressFWHist(uint64_t result, unsigned int **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      result = Nightingale::phaseFactorProcessor::suppressFWStEnd(v6, v3, v3 + 2, a3);
      v3 += 18;
    }

    while (v3 != v4);
  }

  return result;
}

void std::vector<Nightingale::cycleInfo>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 32);
      v10 = *(v6 + 48);
      *(v7 + 61) = *(v6 + 61);
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      *(v7 + 16) = v8;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 72) = 0;
      *(v7 + 72) = *(v6 + 72);
      *(v7 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v6 += 96;
      v7 += 96;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v11 = 0;
    v12 = a4 - v4;
    do
    {
      v13 = v4 + v11;
      *(v13 - 96) = *(v5 + v11 - 96);
      v14 = *(v5 + v11 - 80);
      v15 = *(v5 + v11 - 64);
      v16 = *(v5 + v11 - 48);
      *(v13 - 35) = *(v5 + v11 - 35);
      *(v13 - 64) = v15;
      *(v13 - 48) = v16;
      *(v13 - 80) = v14;
      std::vector<float>::__move_assign(v4 + v11 - 24, (v5 + v11 - 24));
      v11 -= 96;
    }

    while (v12 != v11);
  }
}

uint64_t std::__split_buffer<Nightingale::cycleInfo>::emplace_back<Nightingale::cycleInfo const&>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0x5555555555555556 * ((v4 - *a1) >> 5);
      }

      v13 = a1[4];
      v15 = a1[4];
      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::cycleInfo>>(v13, v12);
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 5) + 1) / -2;
    v5 = v6 - 96 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 5) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        *v5 = *v6;
        v9 = *(v6 + 16);
        v10 = *(v6 + 32);
        v11 = *(v6 + 48);
        *(v5 + 61) = *(v6 + 61);
        *(v5 + 32) = v10;
        *(v5 + 48) = v11;
        *(v5 + 16) = v9;
        std::vector<float>::__move_assign(v5 + 72, (v6 + 72));
        v6 += 96;
        v5 += 96;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 96 * v8;
    a1[2] = v5;
  }

  result = std::construct_at[abi:nn200100]<Nightingale::cycleInfo,Nightingale::cycleInfo&,Nightingale::cycleInfo*>(v5, a2);
  a1[2] += 96;
  return result;
}

uint64_t std::vector<Nightingale::cycleInfo>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::cycleInfo>,Nightingale::cycleInfo*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

__n128 std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<float>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<float>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__emplace_back_slow_path<Nightingale::coreAnalyticsHistPerCycle_t const&>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = 0;
  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>(a1, v7);
  }

  v8 = v2 << 7;
  v9 = *a2;
  v10 = a2[1];
  *(v8 + 32) = *(a2 + 32);
  *v8 = v9;
  *(v8 + 16) = v10;
  *(v8 + 40) = 0;
  *(v8 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    std::vector<int>::vector[abi:nn200100]((v8 + 40), a2 + 5);
    *(v8 + 64) = 1;
  }

  *(v8 + 72) = 0;
  *(v8 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    std::vector<int>::vector[abi:nn200100]((v8 + 72), a2 + 9);
    *(v8 + 96) = 1;
  }

  v11 = *(a2 + 104);
  *(v8 + 118) = *(a2 + 118);
  *(v8 + 104) = v11;
  v12 = a1[1];
  v13 = v8 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>,Nightingale::coreAnalyticsHistPerCycle_t*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  a1[1] = v8 + 128;
  v15 = a1[2];
  a1[2] = 0;
  v17[2] = v14;
  v18 = v15;
  v17[0] = v14;
  v17[1] = v14;
  std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::~__split_buffer(v17);
  return v8 + 128;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>,Nightingale::coreAnalyticsHistPerCycle_t*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      v10 = *(a2 + v7);
      v11 = *(a2 + v7 + 16);
      *(v9 + 32) = *(a2 + v7 + 32);
      *v9 = v10;
      *(v9 + 16) = v11;
      *(a4 + v7 + 40) = 0;
      *(v9 + 64) = 0;
      if (*(a2 + v7 + 64) == 1)
      {
        *(a4 + v7 + 40) = 0;
        *(a4 + v7 + 48) = 0;
        *(a4 + v7 + 56) = 0;
        *(v9 + 40) = *(v8 + 40);
        *(v9 + 56) = *(v8 + 56);
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        *(v9 + 64) = 1;
      }

      *(v9 + 72) = 0;
      v12 = (v9 + 72);
      *(v9 + 96) = 0;
      if (*(v8 + 96) == 1)
      {
        v13 = (a2 + v7);
        *v12 = 0;
        *(v9 + 80) = 0;
        *(v9 + 88) = 0;
        *v12 = *(a2 + v7 + 72);
        *(a4 + v7 + 88) = *(a2 + v7 + 88);
        v13[9] = 0;
        v13[10] = 0;
        v13[11] = 0;
        *(v9 + 96) = 1;
      }

      v14 = a4 + v7;
      v15 = *(v8 + 104);
      *(v14 + 118) = *(v8 + 118);
      *(v14 + 104) = v15;
      v7 += 128;
    }

    while (v8 + 128 != a3);
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(a1, v5);
      v5 += 128;
    }
  }
}

void std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    v3 = *(a2 + 72);
    if (v3)
    {
      *(a2 + 80) = v3;
      operator delete(v3);
    }
  }

  if (*(a2 + 64) == 1)
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      *(a2 + 48) = v4;

      operator delete(v4);
    }
  }
}

void **std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::~__split_buffer(void **a1)
{
  std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::coreAnalyticsHistPerCycle_t>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 128;
    std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(v4, i - 128);
  }
}

uint64_t std::vector<Nightingale::ngt_HistoricCycle>::__emplace_back_slow_path<Nightingale::ngt_HistoricCycle const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_HistoricCycle>>(a1, v6);
  }

  v7 = 72 * v2;
  std::construct_at[abi:nn200100]<Nightingale::ngt_HistoricCycle,Nightingale::ngt_HistoricCycle const&,Nightingale::ngt_HistoricCycle*>(v7, a2);
  v8 = v7 + 72;
  v9 = *(a1 + 8);
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::ngt_HistoricCycle>,Nightingale::ngt_HistoricCycle*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<Nightingale::ngt_HistoricCycle>::~__split_buffer(v14);
  return v8;
}

uint64_t std::construct_at[abi:nn200100]<Nightingale::ngt_HistoricCycle,Nightingale::ngt_HistoricCycle const&,Nightingale::ngt_HistoricCycle*>(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 32) = 0;
  v4 = a1 + 32;
  *a1 = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a2 + 4);
  v5 = *(a2 + 5);
  if (v5 != v6)
  {
    std::vector<Nightingale::Phase>::__vallocate[abi:nn200100](v4, v5 - v6);
  }

  v7 = *(a2 + 7);
  *(a1 + 64) = *(a2 + 16);
  *(a1 + 56) = v7;
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::ngt_HistoricCycle>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Nightingale::ngt_HistoricCycle>,Nightingale::ngt_HistoricCycle*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 9) = *(v6 + 9);
      *a4 = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = v6[2];
      *(a4 + 48) = *(v6 + 6);
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      v8 = *(v6 + 7);
      *(a4 + 64) = *(v6 + 16);
      *(a4 + 56) = v8;
      v6 = (v6 + 72);
      a4 += 72;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v9 = *(v5 + 4);
      if (v9)
      {
        *(v5 + 5) = v9;
        operator delete(v9);
      }

      v5 = (v5 + 72);
    }
  }
}

uint64_t std::__split_buffer<Nightingale::ngt_HistoricCycle>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Nightingale::ngt_HistoricCycle>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Nightingale::ngt_HistoricCycle>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 72;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }
}

void std::vector<Nightingale::coreAnalyticsHistPerCycle_t>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 128;
        std::allocator_traits<std::allocator<Nightingale::coreAnalyticsHistPerCycle_t>>::destroy[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t,void,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *,Nightingale::coreAnalyticsHistPerCycle_t *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *v5;
    v8 = v5[1];
    *(a4 + 32) = *(v5 + 32);
    *a4 = v7;
    *(a4 + 16) = v8;
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<float>,false>>(a4 + 40, (v5 + 40));
    std::__optional_storage_base<std::vector<float>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<float>,false>>(a4 + 72, (v5 + 72));
    v9 = *(v5 + 104);
    *(a4 + 118) = *(v5 + 118);
    *(a4 + 104) = v9;
    a4 += 128;
    v5 += 8;
  }

  while (v5 != v6);
  return v6;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t Nightingale::lstmHr::lstmHr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2869C6258;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 360) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  Nightingale::heartRateInputAcquisition::heartRateInputAcquisition((a1 + 372));
  return a1;
}

{
  *a1 = &unk_2869C6258;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 360) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  Nightingale::heartRateInputAcquisition::heartRateInputAcquisition((a1 + 372));
  return a1;
}

void Nightingale::lstmHr::~lstmHr(Nightingale::lstmHr *this)
{
  *this = &unk_2869C6258;
  Nightingale::heartRateInputAcquisition::~heartRateInputAcquisition((this + 372));
  v2 = *(this + 43);
  if (v2)
  {
    *(this + 44) = v2;
    operator delete(v2);
  }

  v3 = *(this + 40);
  if (v3)
  {
    *(this + 41) = v3;
    operator delete(v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    *(this + 38) = v4;
    operator delete(v4);
  }

  v5 = *(this + 34);
  if (v5)
  {
    *(this + 35) = v5;
    operator delete(v5);
  }

  v6 = *(this + 31);
  if (v6)
  {
    *(this + 32) = v6;
    operator delete(v6);
  }

  v13 = (this + 208);
  std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    *(this + 8) = v10;
    operator delete(v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    *(this + 5) = v11;
    operator delete(v11);
  }

  v12 = *(this + 1);
  if (v12)
  {
    *(this + 2) = v12;
    operator delete(v12);
  }
}

uint64_t Nightingale::lstmHr::acquireHr(Nightingale::lstmHr *this)
{
  JDay1stValidAwakeHr = Nightingale::lstmHr::getJDay1stValidAwakeHr(this);
  result = 0;
  if ((JDay1stValidAwakeHr & 0x100000000) != 0 && *(*(*(this + 23) + 8) - 96) - 39 >= JDay1stValidAwakeHr)
  {
    (**this)(this);
    if (*(this + 108) == 1 && *(this + 116) == 1)
    {
      v4 = *(this + 8);
      memset(v5, 0, sizeof(v5));
      std::vector<std::optional<float>>::__vallocate[abi:nn200100](v5, 0x2DuLL);
    }

    return 0;
  }

  return result;
}

uint64_t Nightingale::lstmHr::getJDay1stValidAwakeHr(Nightingale::lstmHr *this)
{
  v1 = *(this + 22);
  v2 = *v1;
  v3 = v1[1];
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if (*(v2 + 24) == 1 && *(v2 + 40) == 1 && v2[9] >= *(*(this + 24) + 132))
    {
      break;
    }

    v2 += 16;
  }

  return *v2 | 0x100000000;
}

uint64_t Nightingale::lstmHr::acquireHrSlices(uint64_t this)
{
  v1 = *(this + 192);
  if (*(v1 + 36) == 1)
  {
    v2 = this;
    Nightingale::heartRateInputAcquisition::acquireSlicesFwDayStream(this + 372, *(this + 176), *(v1 + 32), *(*(this + 184) + 80), this + 8);
    this = Nightingale::heartRateInputAcquisition::get1stJDayDailyIdx((v2 + 372));
    *(v2 + 232) = this;
    *(v2 + 236) = BYTE4(this);
    *(v2 + 240) = v3;
    *(v2 + 244) = v4;
  }

  return this;
}

BOOL Nightingale::lstmHr::validateHr(Nightingale::lstmHr *this, int a2)
{
  Nightingale::heartRateInputValidation::heartRateInputValidation(v12, *(this + 24));
  Nightingale::heartRateInputValidation::process(v12, this + 1, this + 26, a2);
  if (*(this + 108) == 1 && *(this + 116) == 1 && (v4 = *(this + 24), *(v4 + 36) == 1))
  {
    v5 = *(*(*(this + 23) + 8) - 96);
    v6 = *(v4 + 32) - v5 + 39;
    if (v6 < 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }

    v8 = 38 - v7;
    if (v6 >= 100)
    {
      v9 = -61;
    }

    else
    {
      v9 = v8;
    }

    v10 = (v9 + *(this + 26) + ((*(this + 2) - *(this + 1)) >> 3)) <= v5;
  }

  else
  {
    v10 = 0;
  }

  Nightingale::heartRateInputValidation::~heartRateInputValidation(v12);
  return v10;
}

uint64_t Nightingale::lstmHr::preConditionHr(Nightingale::lstmHr *this)
{
  v4[49] = *MEMORY[0x277D85DE8];
  Nightingale::heartRateInputPreCondition::heartRateInputPreCondition(v4, *(this + 22), this + 8, *(this + 24));
  v1 = Nightingale::heartRateInputPreCondition::preConditionHr(v4);
  Nightingale::heartRateInputPreCondition::~heartRateInputPreCondition(v4);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

BOOL Nightingale::lstmHr::prepareUiVectors(Nightingale::lstmHr *this, int a2, int a3, int a4)
{
  v19 = a2;
  v20 = 1;
  v21 = a3;
  v22 = 1;
  v23 = a4;
  v24 = 1;
  v5 = *(this + 22);
  v6 = *(this + 23);
  v7 = *(this + 24);
  v16 = xmmword_258951590;
  v17 = 0x3FB8CEF8402F005CLL;
  Nightingale::uiProcessForLstm::uiProcessForLstm(v18, v5, v6, v7, &v16);
  Nightingale::uiProcessForLstm::prepareUiLogForDL(v18, &v19, this + 296, this + 320, this + 344);
  v8 = *(this + 37);
  v9 = *(this + 38);
  if (v8 == v9 || (v10 = *(this + 40), v11 = *(this + 41), v10 == v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    if ((v11 - v10) >= 0xB4 && (v9 - v8) >= 0xB4)
    {
      v13 = *(this + 43);
      v14 = *(this + 44);
      if (v13 != v14 && (v14 - v13) >= 0xB4)
      {
        v12 = *(*(this + 22) + 8) - **(this + 22) > 0xB3FuLL;
      }
    }
  }

  Nightingale::uiProcessForLstm::~uiProcessForLstm(v18);
  return v12;
}

uint64_t Nightingale::lstmHrFw::lstmHrFw(uint64_t a1, uint64_t a2, uint64_t a3, const Nightingale::ngt_Config *a4, uint64_t a5)
{
  *a1 = &unk_2869C6258;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 360) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  Nightingale::heartRateInputAcquisition::heartRateInputAcquisition((a1 + 372));
  *a1 = &unk_2869C6270;
  std::vector<BOOL>::vector((a1 + 392), 8);
  *(a1 + 444) = 0;
  *(a1 + 448) = 0;
  *(a1 + 452) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  Nightingale::ngt_dnn_fw_predict_t::ngt_dnn_fw_predict_t((a1 + 480), a4);
  Nightingale::lstmModelCommonFw::lstmModelCommonFw((a1 + 488));
  *(a1 + 492) = 0;
  *(a1 + 496) = 0;
  *(a1 + 500) = 0;
  *(a1 + 504) = 0;
  *(a1 + 508) = 0;
  *(a1 + 512) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = 0;
  *(a1 + 524) = 0;
  *(a1 + 528) = 0;
  *(a1 + 532) = 0;
  *(a1 + 536) = 0;
  *(a1 + 540) = -1082130432;
  *(a1 + 544) = -1;
  *(a1 + 552) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a1 + 560) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 576) = _Q0;
  *(a1 + 584) = -1;
  *(a1 + 592) = 0;
  *(a1 + 596) = 0;
  return a1;
}

void Nightingale::lstmHrFw::~lstmHrFw(Nightingale::lstmHrFw *this)
{
  *this = &unk_2869C6270;
  Nightingale::lstmModelCommonFw::~lstmModelCommonFw((this + 488));
  Nightingale::ngt_dnn_fw_predict_t::~ngt_dnn_fw_predict_t((this + 480));
  v2 = *(this + 57);
  if (v2)
  {
    *(this + 58) = v2;
    operator delete(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    *(this + 53) = v3;
    operator delete(v3);
  }

  v4 = *(this + 49);
  if (v4)
  {
    operator delete(v4);
  }

  Nightingale::lstmHr::~lstmHr(this);
}

void Nightingale::lstmHrFw::getFWEndHr(Nightingale::lstmHrFw *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = 0;
  *(a3 + 24) = -1082130432;
  *(a3 + 28) = -1;
  *(a3 + 36) = -1;
  __asm { FMOV            V0.4S, #-1.0 }

  *(a3 + 44) = _Q0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a3 + 60) = _Q0;
  *(a3 + 68) = -1;
  *(a3 + 76) = 0;
  *(a3 + 80) = 0;
  if (Nightingale::lstmHr::acquireHr(this) && Nightingale::lstmHr::validateHr(this, 1) && Nightingale::lstmHr::preConditionHr(this))
  {
    if (*(this + 108) & 1) != 0 && (*(this + 116) & 1) != 0 && (*(this + 236))
    {
      if (Nightingale::lstmHr::prepareUiVectors(this, *(this + 26), *(this + 28), *(this + 58)))
      {
        Nightingale::lstmHrFw::applyAlgs(this);
        Nightingale::lstmHrFw::computeHrFwCA(this, a2);
        v11 = *(this + 564);
        *(a3 + 32) = *(this + 548);
        *(a3 + 48) = v11;
        *(a3 + 64) = *(this + 580);
        *(a3 + 80) = *(this + 149);
        v12 = *(this + 532);
        *a3 = *(this + 516);
        *(a3 + 16) = v12;
      }
    }

    else
    {
      v13 = std::__throw_bad_optional_access[abi:nn200100]();
      Nightingale::lstmHrFw::applyAlgs(v13);
    }
  }
}

uint64_t Nightingale::lstmHrFw::applyAlgs(uint64_t this)
{
  if (*(this + 108) & 1) != 0 && (v1 = this, (*(this + 116)))
  {
    v2 = *(this + 104) + 44;
    v3 = *(this + 112);
    if (v2 <= v3)
    {
      for (i = 0; ; ++i)
      {
        v5 = v2 + i;
        Nightingale::lstmHrFw::applyAlgsADay(v1, i);
        if (*(v1 + 444) == 1 && (*(v1 + 520) & 1) == 0 && Nightingale::lstmHrFw::validateFwRsltADay(v1, v2 + i))
        {
          if ((*(v1 + 444) & 1) == 0)
          {
            goto LABEL_25;
          }

          *(v1 + 516) = v2 + i + *(v1 + 440);
          *(v1 + 520) = 1;
          *(v1 + 524) = v5;
          *(v1 + 528) = 1;
        }

        v6 = *(v1 + 208);
        if (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 216) - v6) >> 3) <= i)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v7 = *(v6 + 24 * i + 8) - 1;
        if ((*(*(v6 + 24 * i) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7))
        {
          v8 = *(v1 + 536) ^ 1;
        }

        else
        {
          v8 = 0;
        }

        this = Nightingale::lstmHrFw::validateToRunPeriodADay(v1, v2 + i, v8 & 1);
        if (this)
        {
          *(v1 + 532) = v5;
          *(v1 + 536) = 1;
        }

        if (*(v1 + 520) == 1 && *(v1 + 528) == 1)
        {
          if (v5 >= v3 || (*(v1 + 536) & 1) != 0)
          {
            return this;
          }
        }

        else if (v5 >= v3)
        {
          return this;
        }
      }
    }
  }

  else
  {
LABEL_25:
    v9 = std::__throw_bad_optional_access[abi:nn200100]();
    return Nightingale::lstmHrFw::computeHrFwCA(v9, v10);
  }

  return this;
}

void Nightingale::lstmHrFw::computeHrFwCA(Nightingale::lstmHrFw *this, int a2)
{
  if (a2)
  {
    if (*(this + 31) != *(this + 32))
    {
      Nightingale::lstmHrFw::computeHrSignalQuality(this, v5);
      v3 = v5[1];
      *(this + 540) = v5[0];
      *(this + 556) = v3;
      *(this + 572) = v5[2];
      *(this + 147) = v6;
      v4 = *(this + 23);
      if (*(v4 + 108) == 1 && *(this + 520) == 1)
      {
        *(this + 148) = *(this + 129) + ~*(v4 + 104);
        *(this + 596) = 1;
      }
    }
  }
}

void *Nightingale::lstmHrFw::applyAlgsADay(void *this, unsigned int a2)
{
  v2 = this[26];
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this[27] - v2) >> 3);
  if (a2 < v3)
  {
    if (v3 <= a2)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v5 = a2;
    if (**(v2 + 24 * a2))
    {
      v6 = this;
      v7 = a2 + 44;
      if (v7 < (this[2] - this[1]) >> 3 && v7 < (this[5] - this[4]) >> 3 && v7 < (this[38] - this[37]) >> 2 && v7 < (this[41] - this[40]) >> 2 && v7 < (this[44] - this[43]) >> 2)
      {
        v8 = a2 + 45;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v17 = 0;
        v15 = 0u;
        *v16 = 0u;
        *__src = 0u;
        *v14 = 0u;
        memset(v12, 0, sizeof(v12));
        Nightingale::lstmHr::copyASliceToLstmStruct(this, v12, this + 1, a2, (a2 + 45));
        Nightingale::lstmHr::copyASliceToLstmStruct(v6, &v12[1] + 1, v6 + 4, a2, v8);
        v9 = v6[37];
        v10 = (v9 + 4 * a2);
        v11 = 4 * v8;
        std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(__src, __src[0], v10, (v9 + v11), (v11 - 4 * v5) >> 2);
        std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v14[1], v14[1], (v6[40] + 4 * v5), (v6[40] + v11), (v11 - 4 * v5) >> 2);
        std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v16, v16[0], (v6[43] + 4 * v5), (v6[43] + v11), (v11 - 4 * v5) >> 2);
        Nightingale::ngt_dnn_fw_predict_t::ngt_dnn_process_fw(v6 + 60);
      }
    }
  }

  return this;
}

uint64_t Nightingale::lstmHrFw::validateFwRsltADay(Nightingale::lstmHrFw *this, int a2)
{
  if (*(this + 444) != 1)
  {
    return 0;
  }

  if (*(this + 57) == *(this + 58))
  {
    return 0;
  }

  if (*(this + 452) != 1)
  {
    return 0;
  }

  v3 = *(*(this + 23) + 8);
  if (*(v3 - 60) != 1)
  {
    return 0;
  }

  if (*(this + 50) <= 7uLL)
  {
    goto LABEL_48;
  }

  v4 = *(this + 110);
  v5 = *(v3 - 64);
  v6 = *(v3 - 96);
  v7 = *(this + 49);
  v8 = 128;
  if (!*(this + 520))
  {
    v8 = 0;
  }

  v9 = *v7 & 0xFFFFFFFFFFFFFF7FLL | v8;
  *v7 = v9;
  v10 = *(this + 50);
  v11 = v10 & 0x3F;
  if (v10 > 0x3F || v11 != 5)
  {
    v12 = 5;
    v13 = &v7[v10 >> 6];
    v14 = v7;
    while (((*v14 >> v12) & 1) == 0)
    {
      if (v12 == 63)
      {
        v13 = &v7[v10 >> 6];
      }

      v14 += v12 == 63;
      if (v12 == 63)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }

      if (v12 == v11 && v14 == v13)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

LABEL_19:
  if (!v10)
  {
    goto LABEL_48;
  }

  v15 = v9 & 0xFFFFFFFFFFFFFFFELL;
  if (*(this + 112) < 10.0)
  {
    ++v15;
  }

  *v7 = v15;
  if (*(this + 50) <= 1uLL)
  {
    goto LABEL_48;
  }

  v16 = v15 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((v4 & 0xFFFFFFFE) == 2));
  *v7 = v16;
  if (*(this + 50) <= 3uLL)
  {
    goto LABEL_48;
  }

  v17 = (a2 - v6 + v4);
  v18 = v17;
  v19 = roundf(v5 + -13.0);
  *v7 = v16 & 0xFFFFFFFFFFFFFFF7 | (8 * (v19 < v17));
  v20 = Nightingale::follicularPhaseCheck(v17, 6, 100);
  if (*(this + 50) <= 2uLL)
  {
    goto LABEL_48;
  }

  v21 = 4;
  if ((v20 & 1) == 0)
  {
    v21 = 0;
  }

  **(this + 49) = **(this + 49) & 0xFFFFFFFFFFFFFFFBLL | v21;
  v22 = Nightingale::passLutealPhaseCheck(v17, v5, 6.0);
  if (*(this + 50) <= 4uLL)
  {
    goto LABEL_48;
  }

  v23 = 0;
  v24 = *(this + 49);
  v25 = 16;
  if (!v22)
  {
    v25 = 0;
  }

  v26 = *v24 & 0xFFFFFFFFFFFFFFEFLL | v25;
  *v24 = v26;
  v27 = v24;
  v28 = v24;
  do
  {
    if (((*v28 >> v23) & 1) == 0)
    {
      return 0;
    }

    if (v23 == 63)
    {
      v27 = v24;
    }

    v28 += v23 == 63;
    if (v23 == 63)
    {
      v23 = 0;
    }

    else
    {
      ++v23;
    }
  }

  while (v23 != 3 || v28 != v27);
  if (v19 < v18 && v22)
  {
    return 1;
  }

  v30 = *(this + 50);
  if (v19 >= v18)
  {
    if (v30 > 5)
    {
      v31 = 32;
      goto LABEL_47;
    }

LABEL_48:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v30 <= 6)
  {
    goto LABEL_48;
  }

  v31 = 64;
LABEL_47:
  result = 0;
  *v24 = v26 | v31;
  return result;
}

uint64_t Nightingale::lstmHrFw::validateToRunPeriodADay(Nightingale::lstmHrFw *this, int a2, int a3)
{
  if (*(this + 536))
  {
    return 0;
  }

  v3 = this;
  if (*(this + 444) != 1 || *(this + 57) == *(this + 58) || *(this + 452) != 1 || *(*(*(this + 23) + 8) - 60) != 1)
  {
    return 0;
  }

  v6 = *(this + 110);
  v7 = v6 + a2;
  v9 = *(this + 53);
  v8 = *(this + 54);
  if (v9 >= v8)
  {
    v12 = *(this + 52);
    v13 = v9 - v12;
    v14 = (v9 - v12) >> 2;
    v15 = v14 + 1;
    if ((v14 + 1) >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v16 = v8 - v12;
    if (v16 >> 1 > v15)
    {
      v15 = v16 >> 1;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
    v18 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(this + 416, v18);
    }

    v19 = (v9 - v12) >> 2;
    v20 = (4 * v14);
    v21 = (4 * v14 - 4 * v19);
    *v20 = v7;
    v10 = v20 + 1;
    memcpy(v21, v12, v13);
    this = *(v3 + 52);
    *(v3 + 52) = v21;
    *(v3 + 53) = v10;
    *(v3 + 54) = 0;
    if (this)
    {
      operator delete(this);
    }
  }

  else
  {
    *v9 = v7;
    v10 = v9 + 4;
  }

  *(v3 + 53) = v10;
  v22 = *(v3 + 52);
  if (v10 - v22 >= 0x11)
  {
    if (v10 != (v22 + 4))
    {
      this = memmove(*(v3 + 52), (v22 + 4), v10 - v22 - 4);
    }

    *(v3 + 53) = v10 - 1;
  }

  v23 = Nightingale::lstmHrFw::consistencyCheck(this, v3 + 52, 4);
  result = 0;
  if (v23 && (v6 + 20) <= 0xE)
  {
    if (a3)
    {
      *(v3 + 133) = a2;
      result = 1;
      *(v3 + 536) = 1;
    }
  }

  return result;
}

void Nightingale::lstmHr::copyASliceToLstmStruct(uint64_t a1, const void **a2, void *a3, unsigned int a4, unsigned int a5)
{
  std::vector<std::optional<float>>::vector[abi:nn200100]<std::__wrap_iter<std::optional<float> const*>,0>(&v19, *a3 + 8 * a4, *a3 + 8 * a5);
  v6 = v19;
  v7 = v20;
  if (v19 != v20)
  {
    do
    {
      v8 = -1.0;
      if (*(v6 + 4) == 1)
      {
        v8 = *v6;
      }

      v10 = a2[1];
      v9 = a2[2];
      if (v10 >= v9)
      {
        v12 = *a2;
        v13 = v10 - *a2;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseSet>>(a2, v17);
        }

        *(8 * v14) = v8;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        v18 = *a2;
        *a2 = 0;
        a2[1] = v11;
        a2[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 1);
      }

      a2[1] = v11;
      v6 += 2;
    }

    while (v6 != v7);
    v6 = v19;
  }

  if (v6)
  {
    v20 = v6;
    operator delete(v6);
  }
}

BOOL Nightingale::lstmHrFw::consistencyCheck(uint64_t a1, int **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4 < a3)
  {
    return 0;
  }

  v6 = v4 - 1;
  if (v4 == 1)
  {
    return 1;
  }

  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2[1] - *a2;
  }

  if (v7 - 1 <= v4 - 2)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = 0;
  v11 = *v3;
  v9 = v3 + 1;
  v10 = v11;
  do
  {
    v12 = *v9++;
    v8 = v12 + v8 - v10;
    v10 = v12;
    --v6;
  }

  while (v6);
  return v8 == 0;
}

void Nightingale::lstmHrFw::computeHrSignalQuality(Nightingale::lstmHrFw *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = -1082130432;
  *(a2 + 4) = -1;
  *(a2 + 12) = -1;
  v5 = *(this + 31);
  v4 = *(this + 32);
  if (v4 == v5)
  {
    *(a2 + 24) = 0;
    *(a2 + 20) = 0;
    *a2 = 1065353216;
    *(a2 + 12) = 0;
    *(a2 + 44) = 0;
  }

  else
  {
    v6 = 0;
    v7 = (v4 - v5) >> 3;
    v8 = *(this + 31);
    do
    {
      v6 += *(v8 + 4) ^ 1;
      v8 += 8;
    }

    while (v8 != v4);
    v9 = 0;
    v10 = v7;
    *a2 = v6 / v7;
    v11 = v5;
    do
    {
      if (*(v11 + 4) == 1 && *v11 > 11)
      {
        ++v9;
      }

      v11 += 8;
    }

    while (v11 != v4);
    v12 = 0;
    *(a2 + 20) = v9 / v10;
    v13 = v5;
    do
    {
      if (*(v13 + 4) == 1 && *v13 > 17)
      {
        ++v12;
      }

      v13 += 8;
    }

    while (v13 != v4);
    v14 = 0;
    *(a2 + 24) = v12 / v10;
    v15 = v5;
    do
    {
      if (*(v15 + 4) == 1 && *v15 > 23)
      {
        ++v14;
      }

      v15 += 8;
    }

    while (v15 != v4);
    v16 = 0;
    *(a2 + 28) = v14 / v10;
    __p = 0;
    v34 = 0;
    v35 = 0;
    do
    {
      if (*(v5 + 4) == 1)
      {
        v36 = *v5;
        std::vector<float>::push_back[abi:nn200100](&__p, &v36);
        if ((*(v5 + 4) & 1) == 0)
        {
LABEL_70:
          v32 = std::__throw_bad_optional_access[abi:nn200100]();
          Nightingale::lstmHrFw::getHrSignalQuality(v32);
          return;
        }

        if (*v5 < *(*(this + 24) + 132))
        {
          v16 = v16;
        }

        else
        {
          v16 = (v16 + 1);
        }
      }

      else
      {
        v36 = 0.0;
        std::vector<float>::push_back[abi:nn200100](&__p, &v36);
      }

      v5 += 8;
    }

    while (v5 != v4);
    if (v34 != __p)
    {
      std::__sort<std::__less<float,float> &,float *>();
      Percentile = Nightingale::getPercentile(&__p, 1, 0.5);
      if (Percentile > 50.0)
      {
        Percentile = 50.0;
      }

      *(a2 + 4) = llroundf(Percentile);
      v18 = Nightingale::getPercentile(&__p, 1, 0.3);
      if (v18 > 50.0)
      {
        v18 = 50.0;
      }

      *(a2 + 12) = llroundf(v18);
    }

    *(a2 + 44) = Nightingale::getCABoundedNumberOfDays(v16);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }

  v20 = *(this + 34);
  v19 = *(this + 35);
  if (v19 == v20)
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    v21 = 0;
    v22 = (v19 - v20) >> 3;
    v23 = *(this + 34);
    do
    {
      if (*(v23 + 4) == 1 && *v23 > 11)
      {
        ++v21;
      }

      v23 += 8;
    }

    while (v23 != v19);
    v24 = 0;
    v25 = v22;
    *(a2 + 32) = v21 / v22;
    v26 = v20;
    do
    {
      if (*(v26 + 4) == 1 && *v26 > 17)
      {
        ++v24;
      }

      v26 += 8;
    }

    while (v26 != v19);
    v27 = 0;
    *(a2 + 36) = v24 / v25;
    v28 = v20;
    do
    {
      if (*(v28 + 4) == 1 && *v28 > 23)
      {
        ++v27;
      }

      v28 += 8;
    }

    while (v28 != v19);
    v29 = 0;
    *(a2 + 40) = v27 / v25;
    __p = 0;
    v34 = 0;
    v35 = 0;
    do
    {
      if (*(v20 + 4) == 1)
      {
        v36 = *v20;
        std::vector<float>::push_back[abi:nn200100](&__p, &v36);
        if ((*(v20 + 4) & 1) == 0)
        {
          goto LABEL_70;
        }

        if (*v20 < *(*(this + 24) + 136))
        {
          v29 = v29;
        }

        else
        {
          v29 = (v29 + 1);
        }
      }

      else
      {
        v36 = 0.0;
        std::vector<float>::push_back[abi:nn200100](&__p, &v36);
      }

      v20 += 8;
    }

    while (v20 != v19);
    if (v34 != __p)
    {
      std::__sort<std::__less<float,float> &,float *>();
      v30 = Nightingale::getPercentile(&__p, 1, 0.5);
      if (v30 > 50.0)
      {
        v30 = 50.0;
      }

      *(a2 + 8) = llroundf(v30);
      v31 = Nightingale::getPercentile(&__p, 1, 0.3);
      if (v31 > 50.0)
      {
        v31 = 50.0;
      }

      *(a2 + 16) = llroundf(v31);
    }

    *(a2 + 48) = Nightingale::getCABoundedNumberOfDays(v29);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }
}

double Nightingale::lstmHrFw::getHrSignalQuality@<D0>(Nightingale::lstmHrFw *this@<X0>, uint64_t a2@<X8>)
{
  if (Nightingale::lstmHr::acquireHr(this))
  {

    Nightingale::lstmHrFw::computeHrSignalQuality(this, a2);
  }

  else
  {
    *a2 = -1082130432;
    *(a2 + 4) = -1;
    *(a2 + 12) = -1;
    __asm { FMOV            V0.4S, #-1.0 }

    *(a2 + 20) = _Q0;
    __asm { FMOV            V0.2S, #-1.0 }

    *(a2 + 36) = _Q0;
    result = NAN;
    *(a2 + 44) = -1;
  }

  return result;
}

uint64_t Nightingale::lstmHrPeriod::lstmHrPeriod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_2869C6258;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 360) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  Nightingale::heartRateInputAcquisition::heartRateInputAcquisition((a1 + 372));
  *a1 = &unk_2869C6288;
  *(a1 + 388) = a6;
  Nightingale::CGradient::CGradient(a1 + 400);
  *(a1 + 456) = 0;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 468) = 0;
  *(a1 + 472) = 0;
  *(a1 + 476) = 0;
  *(a1 + 480) = 0;
  *(a1 + 484) = 0;
  *(a1 + 488) = 0;
  *(a1 + 580) = 0;
  return a1;
}

void Nightingale::lstmHrPeriod::~lstmHrPeriod(Nightingale::lstmHrPeriod *this)
{
  *this = &unk_2869C6288;
  v2 = *(this + 50);
  if (v2)
  {
    *(this + 51) = v2;
    operator delete(v2);
  }

  Nightingale::lstmHr::~lstmHr(this);
}

uint64_t Nightingale::lstmHrPeriod::estimatePeriodStartHr@<X0>(Nightingale::lstmHrPeriod *this@<X0>, _BYTE *a2@<X8>)
{
  result = Nightingale::CGradient::CGradient(a2);
  a2[56] = 0;
  a2[60] = 0;
  a2[64] = 0;
  a2[68] = 0;
  a2[72] = 0;
  a2[76] = 0;
  a2[80] = 0;
  a2[84] = 0;
  if (*(this + 392) == 1)
  {
    v5 = *(*(this + 23) + 104);
    if ((v5 & 0x100000000) == 0 || ((v6 = *(this + 388), v7 = v5 + 1, (v6 & 0x100000000) != 0) ? (v8 = v7 < v6) : (v8 = 1), v8))
    {
      result = Nightingale::lstmHr::acquireHr(this);
      if (result)
      {
        result = Nightingale::lstmHr::validateHr(this, 0);
        if (result)
        {
          result = Nightingale::lstmHr::preConditionHr(this);
          if (result)
          {
            if (*(this + 108) & 1) != 0 && (*(this + 116) & 1) != 0 && (*(this + 236))
            {
              Nightingale::lstmHr::prepareUiVectors(this, *(this + 26), *(this + 28), *(this + 58));
              Nightingale::lstmHrPeriod::applyAlgs(this);
            }

            v9 = std::__throw_bad_optional_access[abi:nn200100]();
            return Nightingale::lstmHrPeriod::checkDayToRunPeriodDLLessThanOPK(v9, v10, v11);
          }
        }
      }
    }
  }

  return result;
}

__n128 Nightingale::lstmHrPeriod::getEnsembleTelemetry@<Q0>(Nightingale::lstmHrPeriod *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 536);
  *(a2 + 32) = *(this + 520);
  *(a2 + 48) = v2;
  v3 = *(this + 568);
  *(a2 + 64) = *(this + 552);
  *(a2 + 80) = v3;
  result = *(this + 488);
  v5 = *(this + 504);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t Nightingale::lstmHrPeriod::acquireHrSlices(Nightingale::lstmHrPeriod *this)
{
  if (*(this + 392))
  {
    Nightingale::heartRateInputAcquisition::acquireSlicesPeriodDayStream(this + 372, *(this + 22), *(this + 97), this + 8);
    result = Nightingale::heartRateInputAcquisition::get1stJDayDailyIdx((this + 372));
    *(this + 58) = result;
    *(this + 236) = BYTE4(result);
    *(this + 60) = v3;
    *(this + 244) = v4;
  }

  else
  {
    v5 = std::__throw_bad_optional_access[abi:nn200100]();
    return Nightingale::lstmHrPeriod::getPeriodProjFromLstmModel(v5, v6);
  }

  return result;
}

void Nightingale::lstmHrPeriod::getPeriodProjFromLstmModel(Nightingale::lstmHrPeriod *this, Nightingale::lstmModelCommonPeriod *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  *v4 = 0u;
  Nightingale::lstmHr::copyASliceToLstmStruct(this, v4, this + 1, 0, 0x2Du);
  Nightingale::lstmHr::copyASliceToLstmStruct(this, &v5[1], this + 4, 0, 0x2Du);
  std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v6, *&v6[0], *(this + 37), (*(this + 37) + 180), 45);
  std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v6[1] + 1, *(&v6[1] + 1), *(this + 40), (*(this + 40) + 180), 45);
  std::vector<double>::__insert_with_size[abi:nn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v7, v7, *(this + 43), (*(this + 43) + 180), 45);
  Nightingale::ngt_dnn_period_predict_t::ngt_dnn_period_predict_t(&v3, *(this + 24));
  Nightingale::ngt_dnn_period_predict_t::ngt_dnn_process_period(&v3);
}

uint64_t std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) + 1;
    if (v9 > 0x2AAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = a2 - v8;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 5);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) + 1;
    }

    if (v11 >= 0x155555555555555)
    {
      v13 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    v19 = a1;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>>(a1, v13);
    }

    v15 = 0;
    v16 = 32 * (v10 >> 5);
    v17 = v16;
    v18 = 0;
    std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::emplace_back<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>(&v15, a3);
    v4 = std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__swap_out_circular_buffer(a1, &v15, v4);
    std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::~__split_buffer(&v15);
  }

  else if (a2 == v7)
  {
    *v7 = 0;
    *(v7 + 88) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v7, a3);
    a1[1] = v7 + 96;
  }

  else
  {
    std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__move_range(a1, a2, a1[1], a2 + 96);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v4, a3);
  }

  return v4;
}

void Nightingale::lstmHrPeriod::getEnsembleInput(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  Nightingale::uiLogProcessor::uiLogProcessor(v17, *(*(a1 + 192) + 48));
  Nightingale::uiLogProcessor::getEnsembleInput(v17, *(a1 + 184), *(a1 + 192), a4);
  if (*(a2 + 8) != *a2)
  {
    Nightingale::get_width_and_days_to_drs(*a2, a3);
    a4[3] = v8;
    a4[4] = v9;
    if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5) > 1)
    {
      Nightingale::get_width_and_days_to_drs((*a2 + 96), a3);
      a4[5] = v10;
      a4[6] = v11;
      if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5) > 2)
      {
        Nightingale::get_width_and_days_to_drs((*a2 + 192), a3);
        a4[7] = v12;
        a4[8] = v13;
        v14 = *(a1 + 192);
        if (*(v14 + 52) == 1)
        {
          v15 = *(v14 + 48);
        }

        else
        {
          v15 = 2143289344;
        }

        a4[9] = v15;
        v16 = *(a1 + 136) - *(a1 + 128);
        Nightingale::vMean<float>();
      }
    }
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t Nightingale::CGradient::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  v4 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 24) = v4;
  return a1;
}

uint64_t Nightingale::get_phase_day_format(Nightingale *this)
{
  v1 = 0x100000000;
  if (this == -2)
  {
    v2 = 254;
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  if (this == -2)
  {
    v3 = -256;
  }

  else
  {
    v3 = 0;
  }

  if (this >= 0)
  {
    v1 = 0x100000000;
    v2 = (this - 1);
    v3 = (this - 1) & 0xFFFFFF00;
  }

  return v1 | v3 | v2;
}

uint64_t Nightingale::get_days_since(uint64_t a1, int a2)
{
  v2 = a2 - a1;
  if (a2 <= a1 || a1 == -2)
  {
    v2 = -1;
  }

  if ((a1 & 0x100000000) != 0)
  {
    return v2;
  }

  else
  {
    return 4294967293;
  }
}

void Nightingale::get_width_and_days_to_drs(unsigned int *a1, int a2)
{
  v5 = a2;
  v4[0] = &v5;
  v4[1] = &v5;
  v2 = a1[22];
  if (v2 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:nn200100](v3);
  }

  else
  {
    v6 = v4;
    (*(&off_2869C6300 + v2))(&v6, a1);
  }
}

void std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<BOOL>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<BOOL>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v5 = *(i - 24);
    v4 = v5;
    if (v5)
    {
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void *std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void *std::vector<std::optional<float>>::vector[abi:nn200100]<std::__wrap_iter<std::optional<float> const*>,0>(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    std::vector<std::optional<float>>::__vallocate[abi:nn200100](result, (a3 - a2) >> 3);
  }

  return result;
}

void Nightingale::ngt_hr_DLin_t::~ngt_hr_DLin_t(Nightingale::ngt_hr_DLin_t *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

uint64_t std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      *v10 = 0;
      *(v10 + 88) = -1;
      result = std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v10, v8);
      v8 += 96;
      v10 += 96;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 96;
    v12 = a4 - v7;
    v13 = a2 + v7 - 96 - a4;
    do
    {
      result = std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v11, v13);
      v11 -= 96;
      v13 -= 96;
      v12 += 96;
    }

    while (v12);
  }

  return result;
}

uint64_t std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::emplace_back<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 5);
      }

      v10 = a1[4];
      v12 = a1[4];
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>>(v10, v9);
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 5) + 1) / -2;
    v5 = v6 - 96 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 5) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v5, v6);
        v6 += 96;
        v5 += 96;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 96 * v8;
    a1[2] = v5;
  }

  *v5 = 0;
  *(v5 + 88) = -1;
  result = std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(v5, a2);
  a1[2] += 96;
  return result;
}

uint64_t std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 88);
  if (v4 != -1)
  {
    result = (off_2869C62D0[v4])(&v7, result);
  }

  *(v3 + 88) = -1;
  v5 = *(a2 + 88);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_2869C62E0[v5])(&v6, a2);
    *(v3 + 88) = v5;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN11Nightingale19lstmPeriodOutStructENS8_21lstmPeriodTFOutStructEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN11Nightingale19lstmPeriodOutStructENS8_21lstmPeriodTFOutStructEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(a2 + 24);
  *(v2 + 33) = *(a2 + 33);
  *(v2 + 24) = v3;
  result = *(a2 + 56);
  *(v2 + 69) = *(a2 + 69);
  *(v2 + 56) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = *(a2 + 24);
  *(v2 + 33) = *(a2 + 33);
  *(v2 + 24) = result;
  *(v2 + 56) = *(a2 + 56);
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 88);
  v4 = *(a2 + 88);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_2869C62D0[v3])(&v6, result, a2);
    *(v2 + 88) = -1;
    return result;
  }

  v5 = result;
  return (off_2869C62F0[v4])(&v5, result, a2);
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__assign_alt[abi:nn200100]<0ul,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodOutStruct>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88))
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__emplace[abi:nn200100]<0ul,Nightingale::lstmPeriodOutStruct>(a1, a3);
  }

  else
  {
    std::vector<float>::__move_assign(a2, a3);
    v6 = *(a3 + 24);
    *(a2 + 33) = *(a3 + 33);
    *(a2 + 24) = v6;
    result = *(a3 + 56);
    *(a2 + 69) = *(a3 + 69);
    *(a2 + 56) = result;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__emplace[abi:nn200100]<0ul,Nightingale::lstmPeriodOutStruct>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  if (v4 != -1)
  {
    (off_2869C62D0[v4])(&v8, a1);
  }

  *(a1 + 88) = -1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 24) = v5;
  v6 = *(a2 + 56);
  *(a1 + 69) = *(a2 + 69);
  *(a1 + 56) = v6;
  *(a1 + 88) = 0;
  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__assign_alt[abi:nn200100]<1ul,Nightingale::lstmPeriodTFOutStruct,Nightingale::lstmPeriodTFOutStruct>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88) == 1)
  {
    std::vector<float>::__move_assign(a2, a3);
    v5 = *(a3 + 24);
    *(a2 + 33) = *(a3 + 33);
    *(a2 + 24) = v5;
    *(a2 + 56) = *(a3 + 56);
  }

  else
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__emplace[abi:nn200100]<1ul,Nightingale::lstmPeriodTFOutStruct>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__emplace[abi:nn200100]<1ul,Nightingale::lstmPeriodTFOutStruct>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  if (v4 != -1)
  {
    (off_2869C62D0[v4])(&v7, a1);
  }

  *(a1 + 88) = -1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 24) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 88) = 1;
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>,std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v13 = v4;
    v14 = v5;
    v8 = a2;
    v9 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 88) = -1;
      result = std::__variant_detail::__ctor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>,(std::__variant_detail::_Trait)1>>(a4, v9);
      v9 += 96;
      a4 += 96;
    }

    while (v9 != a3);
    for (; v8 != a3; v8 += 96)
    {
      v11 = *(v8 + 88);
      if (v11 != -1)
      {
        result = (off_2869C62D0[v11])(&v12, v8);
      }

      *(v8 + 88) = -1;
    }
  }

  return result;
}

void **std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::clear[abi:nn200100](uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != v1)
  {
    v3 = result;
    do
    {
      v4 = v2 - 96;
      *(v3 + 16) = v2 - 96;
      v5 = *(v2 - 8);
      if (v5 != -1)
      {
        result = (off_2869C62D0[v5])(&v6);
        v4 = *(v3 + 16);
      }

      *(v2 - 8) = -1;
      v2 = v4;
    }

    while (v4 != v1);
  }

  return result;
}

void std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = v3 - 96;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        result = (off_2869C62D0[v5])(&v6, v3 - 96);
      }

      *(v3 - 8) = -1;
      v3 -= 96;
    }

    while (v4 != v2);
  }

  v1[1] = v2;
  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<Nightingale::overloaded<Nightingale::get_width_and_days_to_drs(std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&,int)::$_0,Nightingale::get_width_and_days_to_drs(std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&,int)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&>(int ***a1, float **this)
{
  v3 = *a1;
  expectation = Nightingale::CGradient::get_expectation(this);
  if (*(this + 68) & 1) != 0 && (*(this + 60))
  {
    v5 = round(expectation - **v3);
    LODWORD(v5) = roundf((*(this + 16) - *(this + 14)) + 1.0);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:nn200100]();
    std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<Nightingale::overloaded<Nightingale::get_width_and_days_to_drs(std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&,int)::$_0,Nightingale::get_width_and_days_to_drs(std::variant<Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&,int)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,Nightingale::lstmPeriodOutStruct,Nightingale::lstmPeriodTFOutStruct> const&>(v6, v7);
  }
}

void sub_258940898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  Nightingale::ngt_Config::~ngt_Config(va);
  _Unwind_Resume(a1);
}

void sub_258940CCC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_258941A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _Unwind_Exception *exception_object, MAIDayStreamProcessorOutput *a37, uint64_t a38, char a39)
{
  Nightingale::ngt_DayStreamProcOut::~ngt_DayStreamProcOut(&a39);
  MAIDayStreamProcessorOutput::~MAIDayStreamProcessorOutput(a37);

  _Unwind_Resume(a1);
}

id retrieve_id_for_core_analytics(void)
{
  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 valueForKeyPath:@"HADateOfPseudoDeviceIDGeneration"];

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 valueForKeyPath:@"HAPseudoDeviceID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v0 timeIntervalSinceDate:v2], v5 / 86400.0 <= 180.0) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v4;
  }

  else
  {
    v7 = ha_get_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2588F5000, v7, OS_LOG_TYPE_DEFAULT, "generated a new unique ID for CoreAnalytics", v12, 2u);
    }

    v8 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v8 UUIDString];

    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v9 setValue:v0 forKeyPath:@"HADateOfPseudoDeviceIDGeneration"];

    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v10 setValue:v6 forKeyPath:@"HAPseudoDeviceID"];
  }

  return v6;
}

void sub_258941FB4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void Nightingale::ngt_DayStreamProcOut::~ngt_DayStreamProcOut(Nightingale::ngt_DayStreamProcOut *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

Nightingale::ngt_DayStreamProcessor *std::unique_ptr<Nightingale::ngt_DayStreamProcessor>::reset[abi:nn200100](Nightingale::ngt_DayStreamProcessor **a1, Nightingale::ngt_DayStreamProcessor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Nightingale::ngt_DayStreamProcessor::~ngt_DayStreamProcessor(result);

    JUMPOUT(0x259C8E7C0);
  }

  return result;
}

uint64_t *Nightingale::PhaseCondenser::begin_phase(uint64_t a1, unsigned int a2, int a3)
{
  v5 = a3;
  v6 = &v5;
  result = std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, &v5);
  if (a2 >= 9)
  {
    abort();
  }

  ++*(result + a2 + 16);
  return result;
}

uint64_t *Nightingale::PhaseCondenser::end_phase(uint64_t a1, unsigned int a2, int a3)
{
  v5 = a3 + 1;
  v6 = &v5;
  result = std::__tree<std::__value_type<int,std::array<short,9ul>>,std::__map_value_compare<int,std::__value_type<int,std::array<short,9ul>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::array<short,9ul>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, &v5);
  if (a2 >= 9)
  {
    abort();
  }

  --*(result + a2 + 16);
  return result;
}

void Nightingale::PhaseCondenser::phase_updates(Nightingale::PhaseCondenser *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<Nightingale::PhaseUpdate>::reserve(a2, *(this + 2));
  v30 = 0uLL;
  v31 = 0;
  v4 = *this;
  v5 = this + 8;
  if (*this != (this + 8))
  {
    do
    {
      v6 = a2[1];
      if (*a2 == v6)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(v6 - 2);
      }

      v8 = 0;
      v29 = v7;
      v27 = *(v4 + 2);
      v28 = *(v4 + 24);
      do
      {
        *(&v30 + v8) += *(&v27 + v8);
        v8 += 2;
      }

      while (v8 != 18);
      v24 = v30;
      v25 = v31;
      v26 = Nightingale::PhaseCondenser::flatten_counted_phase_set(&v24);
      if ((std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,9ul>,true,true>(&v29, 0, &v29, 9u, &v26) & 1) == 0)
      {
        v9 = *(v4 + 7);
        v11 = a2[1];
        v10 = a2[2];
        if (v11 >= v10)
        {
          v13 = (v11 - *a2) >> 4;
          v14 = v13 + 1;
          if ((v13 + 1) >> 60)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v15 = v10 - *a2;
          if (v15 >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseUpdate>>(a2, v16);
          }

          v17 = 16 * v13;
          *v17 = v26;
          *(v17 + 8) = v9;
          v12 = 16 * v13 + 16;
          v18 = a2[1] - *a2;
          v19 = (16 * v13 - v18);
          memcpy(v19, *a2, v18);
          v20 = *a2;
          *a2 = v19;
          a2[1] = v12;
          a2[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v11 = v26;
          *(v11 + 2) = v9;
          v12 = (v11 + 16);
        }

        a2[1] = v12;
      }

      v21 = *(v4 + 1);
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
          v22 = *(v4 + 2);
          v23 = *v22 == v4;
          v4 = v22;
        }

        while (!v23);
      }

      v4 = v22;
    }

    while (v22 != v5);
  }
}

void *std::vector<Nightingale::PhaseUpdate>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseUpdate>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t Nightingale::PhaseCondenser::flatten_counted_phase_set(uint64_t a1)
{
  v2 = 0;
  v4 = 0;
  do
  {
    if (*(a1 + 2 * v2) >= 1)
    {
      Nightingale::PhaseSet::add(&v4, v2);
    }

    ++v2;
  }

  while (v2 != 9);
  return v4;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Nightingale::PhaseUpdate>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,9ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}