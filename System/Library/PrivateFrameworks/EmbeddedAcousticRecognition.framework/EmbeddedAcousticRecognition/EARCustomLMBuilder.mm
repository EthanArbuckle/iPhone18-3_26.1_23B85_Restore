@interface EARCustomLMBuilder
@end

@implementation EARCustomLMBuilder

void __68___EARCustomLMBuilder_getFstGrammar_overrideFolder_weight_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (v3)
  {
    [v3 ear_toString];
  }

  else
  {
    *__p = 0uLL;
    v21 = 0;
  }

  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  if (v7 >= v6)
  {
    v8 = *(v5 + 48);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v22.__end_cap_.__value_ = (v5 + 48);
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v5 + 48, v12);
    }

    v13 = 24 * v9;
    *(v13 + 16) = v21;
    *v13 = *__p;
    v14 = 24 * v9 + 24;
    v15 = *(v5 + 48);
    v16 = *(v5 + 56) - v15;
    v17 = 24 * v9 - v16;
    memcpy((v13 - v16), v15, v16);
    v18 = *(v5 + 48);
    *(v5 + 48) = v17;
    *(v5 + 56) = v14;
    v19 = *(v5 + 64);
    *(v5 + 64) = 0;
    v22.__end_ = v18;
    v22.__end_cap_.__value_ = v19;
    v22.__first_ = v18;
    v22.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v22);
    *(v5 + 56) = v14;
  }

  else
  {
    *(v7 + 16) = v21;
    *v7 = *__p;
    *(v5 + 56) = v7 + 24;
  }
}

@end