void *REQueryCreateIsChildCallbackEntityPredicate(void *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 88, 8);
  v4 = _Block_copy(v1);

  v6[0] = &unk_1F5D2C518;
  v6[1] = v4;
  v6[3] = v6;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = v3 + 3;
  v3[4] = v3 + 3;
  v3[5] = 0;
  v3[6] = 0;
  *v3 = &unk_1F5D2C218;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::__value_func[abi:nn200100]((v3 + 7), v6);
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](v6);
  return v3;
}

void REQueryEvaluateEntityQuery(uint64_t a1, uint64_t a2, void *a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  v5[1] = a2;
  v5[2] = a3;
  v5[0] = &unk_1F5D2C278;
  v4 = *(a1 + 8);
  v6[0] = *a1;
  v6[1] = &v4->__vftable;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v6);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  else
  {
    csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v6);
  }

  v5[4] = 0;
  v5[5] = 0;
  v5[3] = v5;
  csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource>::reset();
}

void REQueryEvaluateEntityQueryWithRootEntity(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v7[2] = a4;
  v7[3] = a3;
  v7[0] = &unk_1F5D2C278;
  v7[1] = a2;
  v6 = *(a1 + 8);
  v8[0] = *a1;
  v8[1] = &v6->__vftable;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v8);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  else
  {
    csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v8);
  }

  v7[5] = 0;
  v7[6] = 0;
  v7[4] = v7;
  csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource>::reset();
}

void REQueryEvaluateComponentQuery(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v12 = v7;
  if (a3)
  {
    v8 = *(a3 + 16);
    if (a2[28] > v8)
    {
      v9 = *(a2[30] + 8 * v8);
      if (v9)
      {
        v10 = a2 + 1;
        v11 = *(a1 + 8);
        v16[0] = *a1;
        v16[1] = &v11->__vftable;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          csq::v2::Query<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::notifyPerformQuery(v16);
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        else
        {
          csq::v2::Query<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::notifyPerformQuery(v16);
        }

        v14 = 0;
        v15 = 0;
        v13 = v9 + 368;
        csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::reset();
      }
    }
  }
}

void csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::~AndPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == (a1 + 24))
  {
    return 1;
  }

  do
  {
    v7 = v4[2];
    v8 = v4[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v7 + 16))(v7, a2, a3);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

    v4 = v4[1];
  }

  while (v4 != v3);
  return v9;
}

void csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v22, (a1 + 8));
  csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>(&v24, &v22, 0, a2);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  if (v24)
  {
    v6 = v25;
    *a3 = v24;
    a3[1] = v6;
  }

  else
  {
    std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v20, (a1 + 8));
    v7 = v20;
    v8 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v8;
    v9 = *(v7 + 32);
    for (i = v7 + 24; v9 != i; v9 = v9[1])
    {
      v11 = v9[2];
      if (v11)
      {
        if (v12)
        {
          v13 = v12;
          v14 = v9[3];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v12[5])
          {
            v15 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__insert_with_sentinel[abi:nn200100]<std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>,std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>>(i, v9, v12[4], (v12 + 3));
            std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(i, v9);
            v16 = v13[5];
            v9 = v15;
            v17 = v16 - 1;
            if ((v16 - 1) < 0)
            {
              do
              {
                v9 = *v9;
              }

              while (!__CFADD__(v17++, 1));
            }

            else if (v16 != 1)
            {
              do
              {
                v9 = v9[1];
                --v16;
              }

              while (v16 > 1);
            }

            *(a2 + 24) = 1;
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v14);
          }
        }
      }
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    *a3 = 0;
    a3[1] = 0;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }
  }
}

void csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(void *a1, uint64_t a2)
{
  v19[0] = v19;
  v19[1] = v19;
  v20 = 0;
  *v16 = 0u;
  *__p = 0u;
  v18 = 1065353216;
  v4 = a1 + 3;
  v5 = a1[4];
  if (v5 == a1 + 3)
  {
    v6 = 0;
    v7 = -1;
  }

  else
  {
    v6 = 0;
    v7 = -1;
    do
    {
      (*(*v5[2] + 40))(v5[2], a2);
      if (*(*(a2 + 8) + 64))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = -1;
        *(a2 + 32) = -1;
      }

      *&v15 = v5 + 2;
      std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v16, v5[2])[4] = v8;
      v9 = *(a2 + 8);
      if (*(v9 + 64))
      {
        v10 = *(a2 + 32);
        if (v10 < v7)
        {
          std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__move_assign(v19, (v9 + 16));
          v6 = 3;
          v7 = v10;
        }
      }

      v5 = v5[1];
    }

    while (v5 != v4);
    if (v20)
    {
      std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v15, a1 + 1);
      operator new();
    }
  }

  std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__move_assign((*(a2 + 8) + 16), v19);
  *(a2 + 32) = v7;
  *(*(a2 + 8) + 64) = v6;
  *&v15 = v16;
  std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__sort<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(csq::v2::OptimizationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &)::{lambda(std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>)#1}>(a1[4], v4, a1[5], &v15);
  *(a2 + 24) = 1;
  v11 = __p[0];
  if (__p[0])
  {
    do
    {
      v12 = *v11;
      v13 = v11[3];
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v14 = v16[0];
  v16[0] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(v19);
}

void csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>(void *a1, uint64_t *a2, char a3, uint64_t a4)
{
  v5 = *(*a2 + 32);
  v6 = *a2 + 24;
  if (v5 == v6)
  {
    goto LABEL_32;
  }

  v10 = 0;
  v11 = 0;
  v12 = a1[1];
  v25 = a1;
  v26 = *a1;
  do
  {
    if (v10)
    {
      std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(v6, v11);
      *(a4 + 24) = 1;
    }

    (*(**(v5 + 16) + 32))(&v27);
    v13 = v27;
    if (v27)
    {
      v14 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(v5 + 24);
      *(v5 + 16) = v13;
      *(v5 + 24) = v14;
      if (!v15)
      {
        goto LABEL_11;
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_11:
    if (!v16)
    {
LABEL_21:
      v10 = 0;
      v20 = 1;
      goto LABEL_22;
    }

    v17 = v16;
    v18 = *(v5 + 24);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v17[48] ^ a3;
    v19 = v5;
    if ((v10 & 1) == 0)
    {
      *(a4 + 24) = 1;
      v12 = *(v5 + 24);
      v26 = *(v5 + 16);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = v11;
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    v20 = v10;
    v11 = v19;
LABEL_22:
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    if ((v20 & 1) == 0)
    {
      *v25 = v26;
      v25[1] = v12;
      return;
    }

    v5 = *(v5 + 8);
    v21 = *a2;
    v6 = *a2 + 24;
  }

  while (v5 != v6);
  a1 = v25;
  if ((v10 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v21 + 40) != 1)
  {
    std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(v6, v11);
    *(a4 + 24) = 1;
LABEL_32:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v22 = *(v21 + 32);
  v24 = *(v22 + 16);
  v23 = *(v22 + 24);
  *v25 = v24;
  v25[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(__p);
}

uint64_t std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__insert_with_sentinel[abi:nn200100]<std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>,std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__sort<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(csq::v2::OptimizationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &)::{lambda(std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>)#1}>(uint64_t a1, uint64_t *a2, unint64_t a3, void **a4)
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      v9 = *(*a2 + 16);
      v10 = *(*a2 + 24);
      v84 = v9;
      v85 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v82 = v12;
      v83 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *a4;
      v86 = &v84;
      v14 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v13, v9)[4];
      v15 = *a4;
      v86 = &v82;
      v16 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v15, v12)[4];
      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v83);
      }

      if (v85)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v85);
      }

      if (v14 < v16)
      {
        v18 = *v8;
        v17 = v8[1];
        *(v18 + 8) = v17;
        *v17 = v18;
        v19 = *v4;
        v19[1] = v8;
        *v8 = v19;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v21 = a3 >> 1;
      v22 = (a3 >> 1) + 1;
      v23 = a1;
      do
      {
        v23 = *(v23 + 8);
        --v22;
      }

      while (v22 > 1);
      v24 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__sort<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(csq::v2::OptimizationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &)::{lambda(std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>)#1}>(a1, v23, a3 >> 1, a4);
      v4 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__sort<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(csq::v2::OptimizationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &)::{lambda(std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>)#1}>(v23, a2, a3 - v21, a4);
      v25 = v4[2];
      v26 = v4[3];
      v80 = v25;
      v81 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v24[3];
      v78 = v24[2];
      v79 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *a4;
      v86 = &v80;
      v29 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v28, v25)[4];
      v30 = *a4;
      v86 = &v78;
      v31 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v30, v78)[4];
      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v79);
      }

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v81);
      }

      if (v29 >= v31)
      {
        v44 = v24[1];
        i = v4;
        v4 = v24;
      }

      else
      {
        for (i = v4[1]; i != a2; i = i[1])
        {
          v33 = i[2];
          v34 = i[3];
          v76 = v33;
          v77 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v35 = v24[3];
          v74 = v24[2];
          v75 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v36 = *a4;
          v86 = &v76;
          v37 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v36, v33)[4];
          v38 = *a4;
          v86 = &v74;
          v39 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v38, v74)[4];
          if (v75)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v75);
          }

          if (v77)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v77);
          }

          if (v37 >= v39)
          {
            break;
          }
        }

        v40 = *i;
        v41 = *(*i + 8);
        v42 = *v4;
        v42[1] = v41;
        *v41 = v42;
        v43 = *v24;
        v44 = v24[1];
        v43[1] = v4;
        *v4 = v43;
        *v24 = v40;
        v40[1] = v24;
      }

      if (v44 != i && i != a2)
      {
        v45 = i;
        do
        {
          v46 = i[2];
          v47 = i[3];
          v72 = v46;
          v73 = v47;
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v48 = v44[3];
          v70 = v44[2];
          v71 = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = *a4;
          v86 = &v72;
          v50 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v49, v46)[4];
          v51 = *a4;
          v86 = &v70;
          v52 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v51, v70)[4];
          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v71);
          }

          if (v73)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v73);
          }

          if (v50 >= v52)
          {
            v44 = v44[1];
          }

          else
          {
            for (j = i[1]; j != a2; j = j[1])
            {
              v54 = j[2];
              v55 = j[3];
              v68 = v54;
              v69 = v55;
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v56 = v44[3];
              v66 = v44[2];
              v67 = v56;
              if (v56)
              {
                atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v57 = *a4;
              v86 = &v68;
              v58 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v57, v54)[4];
              v59 = *a4;
              v86 = &v66;
              v60 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v59, v66)[4];
              if (v67)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v67);
              }

              if (v69)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v69);
              }

              if (v58 >= v60)
              {
                break;
              }
            }

            v61 = *j;
            v62 = *(*j + 8);
            v63 = *i;
            *(v63 + 8) = v62;
            *v62 = v63;
            if (v45 == i)
            {
              v45 = j;
            }

            v65 = *v44;
            v64 = v44[1];
            *(v65 + 8) = i;
            *i = v65;
            *v44 = v61;
            *(v61 + 8) = v44;
            v44 = v64;
            i = j;
          }
        }

        while (v44 != v45 && i != a2);
      }
    }
  }

  return v4;
}

void csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::~AndPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == (a1 + 24))
  {
    return 1;
  }

  do
  {
    v7 = v4[2];
    v8 = v4[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v7 + 16))(v7, a2, a3);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

    v4 = v4[1];
  }

  while (v4 != v3);
  return v9;
}

void csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v27[0] = v6;
  if (!v5)
  {
    goto LABEL_28;
  }

  v8 = std::__shared_weak_count::lock(v5);
  v27[1] = v8;
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = v8;
  csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>(&v28, v27, 0, a2);
  std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  if (v28)
  {
    v10 = v29;
    *a3 = v28;
    a3[1] = v10;
    return;
  }

  v11 = *(a1 + 16);
  if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
LABEL_28:
    v25 = std::__throw_bad_weak_ptr[abi:nn200100]();
    csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::preEvaluateOptimize(v25);
    return;
  }

  v26 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v12 + 32);
  for (i = v12 + 24; v14 != i; v14 = v14[1])
  {
    v16 = v14[2];
    if (v16)
    {
      if (v17)
      {
        v18 = v17;
        v19 = v14[3];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17[5])
        {
          v20 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__insert_with_sentinel[abi:nn200100]<std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>,std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>>(i, v14, v17[4], (v17 + 3));
          std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(i, v14);
          v21 = v18[5];
          v14 = v20;
          v22 = v21 - 1;
          if ((v21 - 1) < 0)
          {
            do
            {
              v14 = *v14;
            }

            while (!__CFADD__(v22++, 1));
          }

          else if (v21 != 1)
          {
            do
            {
              v14 = v14[1];
              --v21;
            }

            while (v21 > 1);
          }

          *(a2 + 24) = 1;
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }
      }
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  *a3 = 0;
  a3[1] = 0;
  v24 = v29;
  if (v29)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }
}

void csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::preEvaluateOptimize(void *a1, uint64_t a2)
{
  v19[0] = v19;
  v19[1] = v19;
  v20 = 0;
  *v16 = 0u;
  *__p = 0u;
  v18 = 1065353216;
  v4 = a1 + 3;
  v5 = a1[4];
  if (v5 == a1 + 3)
  {
    v6 = 0;
    v7 = -1;
  }

  else
  {
    v6 = 0;
    v7 = -1;
    do
    {
      (*(**(v5 + 16) + 40))(*(v5 + 16), a2);
      if (*(*(a2 + 8) + 64))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = -1;
        *(a2 + 32) = -1;
      }

      v21 = (v5 + 16);
      std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v16, *(v5 + 16))[4] = v8;
      v9 = *(a2 + 8);
      if (*(v9 + 64))
      {
        v10 = *(a2 + 32);
        if (v10 < v7)
        {
          std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__move_assign(v19, (v9 + 16));
          v6 = 3;
          v7 = v10;
        }
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    if (v20)
    {
      v11 = a1[2];
      if (v11 && std::__shared_weak_count::lock(v11))
      {
        operator new();
      }

      std::__throw_bad_weak_ptr[abi:nn200100]();
      JUMPOUT(0x1E2EE1F0CLL);
    }
  }

  std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__move_assign((*(a2 + 8) + 16), v19);
  *(a2 + 32) = v7;
  *(*(a2 + 8) + 64) = v6;
  v21 = v16;
  std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__sort<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(csq::v2::OptimizationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &)::{lambda(std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>)#1}>(a1[4], v4, a1[5], &v21);
  *(a2 + 24) = 1;
  v12 = __p[0];
  if (__p[0])
  {
    do
    {
      v13 = *v12;
      v14 = v12[3];
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v15 = v16[0];
  v16[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(v19);
}

void csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

void *csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(void *a1)
{
  *a1 = &unk_1F5D2BC88;
  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1 + 3);
  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1 + 3);
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>(void *a1, uint64_t *a2, char a3, uint64_t a4)
{
  v5 = *(*a2 + 32);
  v6 = *a2 + 24;
  if (v5 == v6)
  {
    goto LABEL_32;
  }

  v10 = 0;
  v11 = 0;
  v12 = a1[1];
  v25 = a1;
  v26 = *a1;
  do
  {
    if (v10)
    {
      std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(v6, v11);
      *(a4 + 24) = 1;
    }

    (*(**(v5 + 16) + 32))(&v27);
    v13 = v27;
    if (v27)
    {
      v14 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(v5 + 24);
      *(v5 + 16) = v13;
      *(v5 + 24) = v14;
      if (!v15)
      {
        goto LABEL_11;
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_11:
    if (!v16)
    {
LABEL_21:
      v10 = 0;
      v20 = 1;
      goto LABEL_22;
    }

    v17 = v16;
    v18 = *(v5 + 24);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v17[48] ^ a3;
    v19 = v5;
    if ((v10 & 1) == 0)
    {
      *(a4 + 24) = 1;
      v12 = *(v5 + 24);
      v26 = *(v5 + 16);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = v11;
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    v20 = v10;
    v11 = v19;
LABEL_22:
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    if ((v20 & 1) == 0)
    {
      *v25 = v26;
      v25[1] = v12;
      return;
    }

    v5 = *(v5 + 8);
    v21 = *a2;
    v6 = *a2 + 24;
  }

  while (v5 != v6);
  a1 = v25;
  if ((v10 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v21 + 40) != 1)
  {
    std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(v6, v11);
    *(a4 + 24) = 1;
LABEL_32:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v22 = *(v21 + 32);
  v24 = *(v22 + 16);
  v23 = *(v22 + 24);
  *v25 = v24;
  v25[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }
}

void csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::~OrPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == (a1 + 24))
  {
    return 0;
  }

  do
  {
    v7 = v4[2];
    v8 = v4[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v7 + 16))(v7, a2, a3);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if (v9)
    {
      break;
    }

    v4 = v4[1];
  }

  while (v4 != v3);
  return v9;
}

void csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v6;
  if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), v8 = *(a2 + 8), (v9 = *(a2 + 16)) != 0))
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(v8 + 48) - *(v8 + 40);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  else
  {
    v10 = *(v8 + 48) - *(v8 + 40);
  }

  if (v10 >> 4)
  {
    if (v10 >> 4 == 1)
    {
      v25 = v7;
      v26 = v6;
      v27 = *(v6 + 40);
      v29 = *v27;
      v28 = v27[1];
      v30 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = *(a2 + 16);
      *(a2 + 8) = v29;
      *(a2 + 16) = v28;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v31);
      }

      v32 = *(v29 + 24);
      v33 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__function::__value_func<void ()(re::ecs2::Entity *)>::__value_func[abi:nn200100](v41, a4);
      (*(*v33 + 24))(v33, a2, v33, v41);
      std::__function::__value_func<void ()(re::ecs2::Entity *)>::~__value_func[abi:nn200100](v41);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(a2 + 16);
      *(a2 + 8) = v26;
      *(a2 + 16) = v25;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v34);
      }

      v24 = v30;
      v7 = v25;
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v35 = v6;
      v36 = v7;
      *v37 = 0u;
      *__p = 0u;
      v39 = 1065353216;
      v11 = *(v6 + 40);
      v12 = *(v6 + 48);
      if (v11 == v12)
      {
        v18 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *v11;
          v15 = v11[1];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v16 = *(a2 + 16);
          *(a2 + 8) = v14;
          *(a2 + 16) = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v16);
          }

          v17 = *(v14 + 24);
          v19 = *(v17 + 16);
          v18 = *(v17 + 24);
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }

          v40[0] = &unk_1F5D2BD20;
          v40[1] = v37;
          v40[2] = a4;
          v40[3] = v40;
          (*(*v19 + 24))(v19, a2, v19, v40);
          std::__function::__value_func<void ()(re::ecs2::Entity *)>::~__value_func[abi:nn200100](v40);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v15);
          }

          v11 += 2;
          v13 = v18;
        }

        while (v11 != v12);
      }

      v7 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(a2 + 16);
      *(a2 + 8) = v35;
      *(a2 + 16) = v36;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      v21 = __p[0];
      if (__p[0])
      {
        do
        {
          v22 = *v21;
          operator delete(v21);
          v21 = v22;
        }

        while (v22);
      }

      v23 = v37[0];
      v37[0] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      v24 = 0;
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
LABEL_32:
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v22, (a1 + 8));
  csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>(&v24, &v22, 1, a2);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  if (v24)
  {
    v6 = v25;
    *a3 = v24;
    a3[1] = v6;
  }

  else
  {
    std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v20, (a1 + 8));
    v7 = v20;
    v8 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v8;
    v9 = *(v7 + 32);
    for (i = v7 + 24; v9 != i; v9 = v9[1])
    {
      v11 = v9[2];
      if (v11)
      {
        if (v12)
        {
          v13 = v12;
          v14 = v9[3];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v12[5])
          {
            v15 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__insert_with_sentinel[abi:nn200100]<std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>,std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>>(i, v9, v12[4], (v12 + 3));
            std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(i, v9);
            v16 = v13[5];
            v9 = v15;
            v17 = v16 - 1;
            if ((v16 - 1) < 0)
            {
              do
              {
                v9 = *v9;
              }

              while (!__CFADD__(v17++, 1));
            }

            else if (v16 != 1)
            {
              do
              {
                v9 = v9[1];
                --v16;
              }

              while (v16 > 1);
            }

            *(a2 + 24) = 1;
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v14);
          }
        }
      }
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    *a3 = 0;
    a3[1] = 0;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }
  }
}

void csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(uint64_t a1)
{
  std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v1, (a1 + 8));
  v3 = v1;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }

  operator new();
}

uint64_t std::__function::__value_func<void ()(re::ecs2::Entity *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::ecs2::Entity *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1}>,void ()(re::ecs2::Entity*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2BD20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1}>,void ()(re::ecs2::Entity*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = v4[1];
  if (!*&v8)
  {
    goto LABEL_17;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*v4 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_17:
    std::function<void ()(re::ecs2::Entity *)>::operator()(*(a1 + 16), *a2);
    v14 = *(a1 + 8);
    v15 = v14[1];
    if (v15)
    {
      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      if (v16.u32[0] > 1uLL)
      {
        v17 = v7;
        if (v7 >= *&v15)
        {
          v17 = v7 % *&v15;
        }
      }

      else
      {
        v17 = (*&v15 - 1) & v7;
      }

      v18 = *(*v14 + 8 * v17);
      if (v18)
      {
        for (i = *v18; i; i = *i)
        {
          v20 = i[1];
          if (v20 == v7)
          {
            if (i[2] == v3)
            {
              return;
            }
          }

          else
          {
            if (v16.u32[0] > 1uLL)
            {
              if (v20 >= *&v15)
              {
                v20 %= *&v15;
              }
            }

            else
            {
              v20 &= *&v15 - 1;
            }

            if (v20 != v17)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_17;
    }

LABEL_16:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v12[2] != v3)
  {
    goto LABEL_16;
  }
}

uint64_t std::__function::__func<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1}>,void ()(re::ecs2::Entity*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<csq::v2::DataSourceTreeNode<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2BDB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<csq::v2::DataSourceTreeNode<re::ecs2::Entity,re::query::SceneEntityDataSource>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1 + 5);
  v6 = a1[4];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::~OrPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == (a1 + 24))
  {
    return 0;
  }

  do
  {
    v7 = v4[2];
    v8 = v4[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v7 + 16))(v7, a2, a3);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if (v9)
    {
      break;
    }

    v4 = v4[1];
  }

  while (v4 != v3);
  return v9;
}

void csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v6;
  if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), v8 = *(a2 + 8), (v9 = *(a2 + 16)) != 0))
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(v8 + 48) - *(v8 + 40);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  else
  {
    v10 = *(v8 + 48) - *(v8 + 40);
  }

  if (v10 >> 4)
  {
    if (v10 >> 4 == 1)
    {
      v25 = v7;
      v26 = v6;
      v27 = *(v6 + 40);
      v29 = *v27;
      v28 = v27[1];
      v30 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = *(a2 + 16);
      *(a2 + 8) = v29;
      *(a2 + 16) = v28;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v31);
      }

      v32 = *(v29 + 24);
      v33 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__function::__value_func<void ()(re::ecs2::Component *)>::__value_func[abi:nn200100](v41, a4);
      (*(*v33 + 24))(v33, a2, v33, v41);
      std::__function::__value_func<void ()(re::ecs2::Component *)>::~__value_func[abi:nn200100](v41);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(a2 + 16);
      *(a2 + 8) = v26;
      *(a2 + 16) = v25;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v34);
      }

      v24 = v30;
      v7 = v25;
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v35 = v6;
      v36 = v7;
      *v37 = 0u;
      *__p = 0u;
      v39 = 1065353216;
      v11 = *(v6 + 40);
      v12 = *(v6 + 48);
      if (v11 == v12)
      {
        v18 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *v11;
          v15 = v11[1];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v16 = *(a2 + 16);
          *(a2 + 8) = v14;
          *(a2 + 16) = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v16);
          }

          v17 = *(v14 + 24);
          v19 = *(v17 + 16);
          v18 = *(v17 + 24);
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }

          v40[0] = &unk_1F5D2BE60;
          v40[1] = v37;
          v40[2] = a4;
          v40[3] = v40;
          (*(*v19 + 24))(v19, a2, v19, v40);
          std::__function::__value_func<void ()(re::ecs2::Component *)>::~__value_func[abi:nn200100](v40);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v15);
          }

          v11 += 2;
          v13 = v18;
        }

        while (v11 != v12);
      }

      v7 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(a2 + 16);
      *(a2 + 8) = v35;
      *(a2 + 16) = v36;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      v21 = __p[0];
      if (__p[0])
      {
        do
        {
          v22 = *v21;
          operator delete(v21);
          v21 = v22;
        }

        while (v22);
      }

      v23 = v37[0];
      v37[0] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      v24 = 0;
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
LABEL_32:
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v27[0] = v6;
  if (!v5)
  {
    goto LABEL_28;
  }

  v8 = std::__shared_weak_count::lock(v5);
  v27[1] = v8;
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = v8;
  csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>(&v28, v27, 1, a2);
  std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  if (v28)
  {
    v10 = v29;
    *a3 = v28;
    a3[1] = v10;
    return;
  }

  v11 = *(a1 + 16);
  if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
LABEL_28:
    v25 = std::__throw_bad_weak_ptr[abi:nn200100]();
    csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::preEvaluateOptimize(v25);
    return;
  }

  v26 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v12 + 32);
  for (i = v12 + 24; v14 != i; v14 = v14[1])
  {
    v16 = v14[2];
    if (v16)
    {
      if (v17)
      {
        v18 = v17;
        v19 = v14[3];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17[5])
        {
          v20 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__insert_with_sentinel[abi:nn200100]<std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>,std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>>(i, v14, v17[4], (v17 + 3));
          std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(i, v14);
          v21 = v18[5];
          v14 = v20;
          v22 = v21 - 1;
          if ((v21 - 1) < 0)
          {
            do
            {
              v14 = *v14;
            }

            while (!__CFADD__(v22++, 1));
          }

          else if (v21 != 1)
          {
            do
            {
              v14 = v14[1];
              --v21;
            }

            while (v21 > 1);
          }

          *(a2 + 24) = 1;
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }
      }
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  *a3 = 0;
  a3[1] = 0;
  v24 = v29;
  if (v29)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }
}

uint64_t csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::preEvaluateOptimize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
      operator new();
    }
  }

  v3 = std::__throw_bad_weak_ptr[abi:nn200100]();
  return std::__function::__value_func<void ()(re::ecs2::Component *)>::__value_func[abi:nn200100](v3, v4);
}

uint64_t std::__function::__value_func<void ()(re::ecs2::Component *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::ecs2::Component *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1}>,void ()(re::ecs2::Component*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2BE60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1}>,void ()(re::ecs2::Component*)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *(result + 8);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = v4[1];
  if (!*&v8)
  {
    goto LABEL_17;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*v4 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_17:
    v14 = *(*(result + 16) + 24);
    v22 = *a2;
    if (!v14)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      std::string::__throw_length_error[abi:nn200100]();
    }

    result = (*(*v14 + 48))(v14, &v22);
    v15 = *(v2 + 8);
    v16 = v15[1];
    if (v16)
    {
      v17 = vcnt_s8(v16);
      v17.i16[0] = vaddlv_u8(v17);
      if (v17.u32[0] > 1uLL)
      {
        v18 = v7;
        if (v7 >= *&v16)
        {
          v18 = v7 % *&v16;
        }
      }

      else
      {
        v18 = (*&v16 - 1) & v7;
      }

      v19 = *(*v15 + 8 * v18);
      if (v19)
      {
        for (i = *v19; i; i = *i)
        {
          v21 = i[1];
          if (v21 == v7)
          {
            if (i[2] == v3)
            {
              return result;
            }
          }

          else
          {
            if (v17.u32[0] > 1uLL)
            {
              if (v21 >= *&v16)
              {
                v21 %= *&v16;
              }
            }

            else
            {
              v21 &= *&v16 - 1;
            }

            if (v21 != v18)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_17;
    }

LABEL_16:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v12[2] != v3)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t std::__function::__func<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1}>,void ()(re::ecs2::Component*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<csq::v2::DataSourceTreeNode<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2BEF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<csq::v2::DataSourceTreeNode<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1 + 5);
  v6 = a1[4];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void csq::v2::NotPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::~NotPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

void csq::v2::NotPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1 + 24;
  v7 = *(a1 + 32);
  if (v7 != a1 + 24)
  {
    do
    {
      (*(**(v7 + 16) + 32))(&v24);
      v8 = v24;
      if (v24)
      {
        v9 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(v7 + 24);
        *(v7 + 16) = v8;
        *(v7 + 24) = v9;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v6);
    v7 = *(a1 + 32);
  }

  v11 = *(v7 + 16);
  if (!v11)
  {
    goto LABEL_29;
  }

  if (!v12)
  {
    v17 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = *(v7 + 24);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = 1;
  v15 = v13[4];
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (v16)
  {
    *a3 = v16;
    a3[1] = v17;
    return;
  }

  v7 = *(a1 + 32);
  v11 = *(v7 + 16);
  if (v11)
  {
LABEL_23:
    {
      v18 = *(v7 + 24);
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v17)
  {
LABEL_28:
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

LABEL_29:
  v19 = *(a1 + 32);
  v20 = *(v19 + 16);
  if (v20)
  {
    v22 = v21;
    if (v21)
    {
      v23 = *(v19 + 24);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v21[48] ^= 1u;
      *(a2 + 24) = 1;
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
      goto LABEL_34;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = 0;
LABEL_34:
  if (v22)
  {
    *a3 = v22;
    a3[1] = v23;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }
}

void std::__shared_ptr_emplace<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2BFA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<csq::v2::NotPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2BFF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void csq::v2::NotPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::~NotPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

void csq::v2::NotPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1 + 24;
  v7 = *(a1 + 32);
  if (v7 != a1 + 24)
  {
    do
    {
      (*(**(v7 + 16) + 32))(&v24);
      v8 = v24;
      if (v24)
      {
        v9 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(v7 + 24);
        *(v7 + 16) = v8;
        *(v7 + 24) = v9;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v6);
    v7 = *(a1 + 32);
  }

  v11 = *(v7 + 16);
  if (!v11)
  {
    goto LABEL_29;
  }

  if (!v12)
  {
    v17 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = *(v7 + 24);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = 1;
  v15 = v13[4];
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (v16)
  {
    *a3 = v16;
    a3[1] = v17;
    return;
  }

  v7 = *(a1 + 32);
  v11 = *(v7 + 16);
  if (v11)
  {
LABEL_23:
    {
      v18 = *(v7 + 24);
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v17)
  {
LABEL_28:
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

LABEL_29:
  v19 = *(a1 + 32);
  v20 = *(v19 + 16);
  if (v20)
  {
    v22 = v21;
    if (v21)
    {
      v23 = *(v19 + 24);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v21[48] ^= 1u;
      *(a2 + 24) = 1;
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
      goto LABEL_34;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = 0;
LABEL_34:
  if (v22)
  {
    *a3 = v22;
    a3[1] = v23;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }
}

void std::__shared_ptr_emplace<csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2C0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<csq::v2::NotPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2C0F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void csq::v2::FunctorBasedPropertyPredicate<csq::v2::PropertyValueBasedFunctor<re::query::EntityActiveProperty,std::equal_to<BOOL>>,re::query::EntityActiveProperty,re::ecs2::Entity,re::query::SceneEntityDataSource>::~FunctorBasedPropertyPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

void re::query::IsDescendantPredicate::~IsDescendantPredicate(re::query::IsDescendantPredicate *this)
{
  *this = &unk_1F5D2C1B8;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](this + 56);

  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(this);
}

{
  *this = &unk_1F5D2C1B8;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](this + 56);
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::query::IsDescendantPredicate::evaluate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a2 + 32);
    if (!v3 || (*(v3 + 304) & 0x80) != 0)
    {
      return 0;
    }

    else
    {
      do
      {
        result = v2 == v3;
        if (v2 == v3)
        {
          break;
        }

        v3 = *(v3 + 32);
        if (!v3)
        {
          break;
        }
      }

      while ((*(v3 + 304) & 0x80) == 0);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_ancester != nullptr", "evaluate", 28);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::query::IsDescendantPredicate::onPerformQuery(re::query::IsDescendantPredicate *this)
{
  result = *(this + 10);
  if (result)
  {
    result = (*(*result + 48))(result);
    *(this + 6) = result;
  }

  return result;
}

uint64_t std::__function::__value_func<re::ecs2::Entity const* ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void re::query::IsChildPredicate::~IsChildPredicate(re::query::IsChildPredicate *this)
{
  *this = &unk_1F5D2C218;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](this + 56);

  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(this);
}

{
  *this = &unk_1F5D2C218;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](this + 56);
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::query::IsChildPredicate::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    if (*(*(*(a3 + 8) + 16) + 16) == a1)
    {
      return 1;
    }

    else
    {
      v6 = *(a2 + 32);
      if (v6)
      {
        if ((*(v6 + 304) & 0x80) != 0)
        {
          v6 = 0;
        }
      }

      return v5 == v6;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_parent != nullptr", "evaluate", 81, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::query::IsChildPredicate::forEachInSubset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 344);
  if (v5)
  {
    v9 = *(v4 + 360);
    v10 = 8 * v5;
    do
    {
      v11 = *v9;
      if ((*(*v9 + 305) & 4) == 0)
      {
        if ((*(*a3 + 16))(a3, *v9, a2))
        {
          std::function<void ()(re::ecs2::Entity *)>::operator()(a4, v11);
        }
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }
}

void re::query::IsChildPredicate::preEvaluateOptimize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v2 = *(v2 + 344);
  }

  *(a2 + 32) = v2;
  v4[0] = v4;
  v4[1] = v4;
  v4[2] = 0;
  std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v3, (a1 + 8));
  operator new();
}

uint64_t re::query::IsChildPredicate::onPerformQuery(re::query::IsChildPredicate *this)
{
  result = *(this + 10);
  if (result)
  {
    result = (*(*result + 48))(result);
    *(this + 6) = result;
  }

  return result;
}

uint64_t std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<REQueryCreateCustomEntityPredicate::$_0,std::allocator<REQueryCreateCustomEntityPredicate::$_0>,BOOL ()(re::ecs2::Entity const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<REQueryCreateCustomEntityPredicate::$_0,std::allocator<REQueryCreateCustomEntityPredicate::$_0>,BOOL ()(re::ecs2::Entity const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2C2A8;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<REQueryCreateCustomEntityPredicate::$_0,std::allocator<REQueryCreateCustomEntityPredicate::$_0>,BOOL ()(re::ecs2::Entity const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<REQueryCreateCustomEntityPredicate::$_0,std::allocator<REQueryCreateCustomEntityPredicate::$_0>,BOOL ()(re::ecs2::Entity const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(re::ecs2::Entity const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *csq::v2::CustomPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::~CustomPredicate(void *a1)
{
  *a1 = &unk_1F5D2C338;
  std::__function::__value_func<BOOL ()(re::ecs2::Entity const*)>::~__value_func[abi:nn200100]((a1 + 6));

  return csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);
}

void csq::v2::CustomPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::~CustomPredicate(void *a1)
{
  *a1 = &unk_1F5D2C338;
  std::__function::__value_func<BOOL ()(re::ecs2::Entity const*)>::~__value_func[abi:nn200100]((a1 + 6));
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::CustomPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::evaluate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v5 = a2;
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<REQueryCreateCustomComponentPredicate::$_0,std::allocator<REQueryCreateCustomComponentPredicate::$_0>,BOOL ()(re::ecs2::Component const*)>::~__func(v4);
}

void std::__function::__func<REQueryCreateCustomComponentPredicate::$_0,std::allocator<REQueryCreateCustomComponentPredicate::$_0>,BOOL ()(re::ecs2::Component const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<REQueryCreateCustomComponentPredicate::$_0,std::allocator<REQueryCreateCustomComponentPredicate::$_0>,BOOL ()(re::ecs2::Component const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2C398;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<REQueryCreateCustomComponentPredicate::$_0,std::allocator<REQueryCreateCustomComponentPredicate::$_0>,BOOL ()(re::ecs2::Component const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<REQueryCreateCustomComponentPredicate::$_0,std::allocator<REQueryCreateCustomComponentPredicate::$_0>,BOOL ()(re::ecs2::Component const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(re::ecs2::Component const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *csq::v2::CustomPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::~CustomPredicate(void *a1)
{
  *a1 = &unk_1F5D2C428;
  std::__function::__value_func<BOOL ()(re::ecs2::Component const*)>::~__value_func[abi:nn200100]((a1 + 6));

  return csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);
}

void csq::v2::CustomPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::~CustomPredicate(void *a1)
{
  *a1 = &unk_1F5D2C428;
  std::__function::__value_func<BOOL ()(re::ecs2::Component const*)>::~__value_func[abi:nn200100]((a1 + 6));
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::CustomPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::evaluate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v5 = a2;
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<REQueryCreateIsDescendantCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsDescendantCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::~__func(v4);
}

void std::__function::__func<REQueryCreateIsDescendantCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsDescendantCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<REQueryCreateIsDescendantCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsDescendantCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2C488;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<REQueryCreateIsDescendantCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsDescendantCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<REQueryCreateIsDescendantCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsDescendantCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<REQueryCreateIsChildCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsChildCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<REQueryCreateIsChildCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsChildCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2C518;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<REQueryCreateIsChildCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsChildCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<REQueryCreateIsChildCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsChildCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,REQueryConnectEntityPredicates::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,REQueryConnectEntityPredicates::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,REQueryConnectComponentPredicates::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,REQueryConnectComponentPredicates::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,REQueryCreateEntityQuery::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,REQueryCreateEntityQuery::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,REQueryCreateComponentQuery::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,REQueryCreateComponentQuery::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(void **a1)
{
  v2 = *a1;
  v3 = v2 + 3;
  v4 = v2[4];
  if (v4 != v2 + 3)
  {
    do
    {
      v5 = v4[3];
      v8[0] = v4[2];
      v8[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v8);
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      else
      {
        csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v8);
      }

      v4 = v4[1];
    }

    while (v4 != v3);
    v2 = *a1;
  }

  v6 = *(*v2 + 48);

  return v6();
}

uint64_t std::__function::__func<REQueryEvaluateEntityQuery::$_0,std::allocator<REQueryEvaluateEntityQuery::$_0>,void ()(re::ecs2::Entity *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D2C718;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<REQueryEvaluateEntityQuery::$_0,std::allocator<REQueryEvaluateEntityQuery::$_0>,void ()(re::ecs2::Entity *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<REQueryEvaluateEntityQueryWithRootEntity::$_0,std::allocator<REQueryEvaluateEntityQueryWithRootEntity::$_0>,void ()(re::ecs2::Entity *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2C798;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<REQueryEvaluateEntityQueryWithRootEntity::$_0,std::allocator<REQueryEvaluateEntityQueryWithRootEntity::$_0>,void ()(re::ecs2::Entity *)>::operator()(uint64_t result, re::ecs2::ECSHelper **a2, const re::ecs2::Entity *a3)
{
  v3 = *a2;
  if ((*(*a2 + 305) & 4) == 0)
  {
    v4 = result;
    v5 = **(result + 8);
    v6 = !v5 || v3 == v5;
    if (v6 || (result = re::ecs2::ECSHelper::isDescendant(v3, v5, a3), result))
    {
      v7 = *(**(v4 + 16) + 16);

      return v7();
    }
  }

  return result;
}

uint64_t std::__function::__func<REQueryEvaluateEntityQueryWithRootEntity::$_0,std::allocator<REQueryEvaluateEntityQueryWithRootEntity::$_0>,void ()(re::ecs2::Entity *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t csq::v2::Query<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::notifyPerformQuery(void **a1)
{
  v2 = *a1;
  v3 = v2 + 3;
  v4 = v2[4];
  if (v4 != v2 + 3)
  {
    do
    {
      v5 = v4[3];
      v8[0] = v4[2];
      v8[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        csq::v2::Query<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::notifyPerformQuery(v8);
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      else
      {
        csq::v2::Query<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::notifyPerformQuery(v8);
      }

      v4 = v4[1];
    }

    while (v4 != v3);
    v2 = *a1;
  }

  v6 = *(*v2 + 48);

  return v6();
}

uint64_t std::__function::__func<REQueryEvaluateComponentQuery::$_0,std::allocator<REQueryEvaluateComponentQuery::$_0>,void ()(re::ecs2::Component *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D2C818;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<REQueryEvaluateComponentQuery::$_0,std::allocator<REQueryEvaluateComponentQuery::$_0>,void ()(re::ecs2::Component *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RECIntrospectionAlloc(re *a1, uint64_t a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) byteCount must not be negative.", "byteCount >= 0", "RECIntrospectionAlloc", 9);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v2 = *(*re::globalAllocators(a1)[2] + 32);

    return v2();
  }

  return result;
}

re *RECIntrospectionFree(re *result)
{
  if (result)
  {
    v1 = *(*re::globalAllocators(result)[2] + 40);

    return v1();
  }

  return result;
}

void REFromToByAnimationDefaultParameters(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
}

double RESampledAnimationDefaultParameters@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 1;
  *(a1 + 20) = 1023969417;
  return result;
}

int64x2_t REAnimationClipDefaultParameters@<Q0>(int64x2_t *a1@<X8>)
{
  a1->i8[0] = 0;
  a1->i64[1] = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[1] = result;
  a1[2].i64[0] = 0;
  a1[2].i64[1] = 0;
  a1[3].i64[0] = 0x7FF8000000000000;
  a1[3].i32[2] = 1065353216;
  a1[3].i16[6] = 0;
  return result;
}

int64x2_t REAnimationClipDefaultParametersEx@<Q0>(int64x2_t *a1@<X8>)
{
  a1->i8[0] = 0;
  a1->i64[1] = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[1] = result;
  a1[2].i64[0] = 0;
  a1[2].i64[1] = 0;
  a1[3].i64[0] = 0x7FF8000000000000;
  a1[3].i32[2] = 1065353216;
  a1[3].i16[6] = 0;
  a1[3].i8[14] = 0;
  return result;
}

void RECreateBackEase(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = &unk_1F5CAE400;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
}

uint64_t RECreateBounceEase@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(a2 + 8) = 1;
  *a2 = &unk_1F5CAE458;
  *(a2 + 16) = result;
  *(a2 + 20) = a3;
  return result;
}

double RECreateCircleEase@<D0>(void *a1@<X8>)
{
  *&result = 2;
  a1[1] = 2;
  *a1 = &unk_1F5CAE4B0;
  return result;
}

uint64_t RECreateElasticEase@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(a2 + 8) = 3;
  *a2 = &unk_1F5CAE508;
  *(a2 + 16) = result;
  *(a2 + 20) = a3;
  return result;
}

void RECreateExponentialEase(uint64_t a1@<X8>, float a2@<S0>)
{
  *(a1 + 8) = 4;
  *a1 = &unk_1F5CAE560;
  *(a1 + 16) = a2;
}

double RECreateHermiteEase@<D0>(void *a1@<X8>)
{
  *&result = 5;
  a1[1] = 5;
  *a1 = &unk_1F5CADE60;
  return result;
}

void RECreateLogarithmicEase(uint64_t a1@<X8>, float a2@<S0>)
{
  *(a1 + 8) = 6;
  *a1 = &unk_1F5CAE5B8;
  *(a1 + 16) = a2;
}

void RECreatePowerEase(uint64_t a1@<X8>, float a2@<S0>)
{
  *(a1 + 8) = 7;
  *a1 = &unk_1F5CAE610;
  *(a1 + 16) = a2;
}

double RECreateSineEase@<D0>(void *a1@<X8>)
{
  *&result = 8;
  a1[1] = 8;
  *a1 = &unk_1F5CAE668;
  return result;
}

void RECreateCubicBezierEase(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *(a1 + 8) = 9;
  *a1 = &unk_1F5CAE6C0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

float REEasingFunctionEvaluateBackEase(float a1, float a2)
{
  v4 = a2 * a2;
  v5 = sinf(a2 * -3.1416);
  v6 = 0.0;
  if (a1 > 0.0)
  {
    v6 = a1;
  }

  return (v5 * (v6 * a2)) + (v4 * a2);
}

float REEasingFunctionEvaluateCircleEase(float a1)
{
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  if (a1 < -1.0)
  {
    a1 = -1.0;
  }

  return 1.0 - sqrtf(1.0 - (a1 * a1));
}

float REEasingFunctionEvaluateElasticEase(unsigned int a1, float a2, float a3)
{
  v5 = fmaxf(a2, 0.0);
  v6 = a3;
  if (v5 >= 0.00001)
  {
    v7 = 1.0 - expf(v5 * a3);
    v6 = v7 / (1.0 - expf(v5));
  }

  return sinf(((fmaxf(a1, 0.0) + 0.25) * 6.2832) * a3) * v6;
}

float REEasingFunctionEvaluateExponentialEase(float a1, float a2)
{
  if (fabsf(a1) >= 0.00001)
  {
    v3 = 1.0 - expf(a1 * a2);
    return v3 / (1.0 - expf(a1));
  }

  return a2;
}

float REEasingFunctionEvaluateHermiteEase(float a1)
{
  v1 = 0.0;
  if (a1 > 0.0)
  {
    v1 = 1.0;
    if (a1 < 1.0)
    {
      return ((a1 * a1) * (3.0 - a1)) * 0.5;
    }
  }

  return v1;
}

void REEasingFunctionEvaluateLogarithmicEase(float a1, float a2)
{
  if (a2 >= 0.0)
  {
    logf(((a1 + -1.0) * a2) + 1.0);
    logf(a1);
  }
}

uint64_t REEasingFunctionSetMode(uint64_t result, int a2)
{
  if (*(result + 8) <= 8u)
  {
    *(result + 12) = a2;
  }

  return result;
}

uint64_t REEasingFunctionGetMode(uint64_t a1)
{
  if (*(a1 + 8) > 8u)
  {
    return 0;
  }

  else
  {
    return *(a1 + 12);
  }
}

uint64_t REEasingFunctionEvaluate(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

_anonymous_namespace_ *RECreateBackEaseEx(re *a1, float a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *v4 = &unk_1F5CAE400;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1065353216;
  v7[0] = &unk_1F5D2C898;
  v7[3] = v7;
  v8 = v4;
  v9[3] = v9;
  v9[0] = &unk_1F5D2C898;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v7);
  *(v8 + 16) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v8, v7);
  v5 = v7[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v8);
  return v5;
}

_anonymous_namespace_ *RECreateBounceEaseEx(re *a1, float a2)
{
  v3 = a1;
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 24, 8);
  v5[1] = 1;
  *v5 = &unk_1F5CAE458;
  v5[2] = 0x4000000000000003;
  v9[0] = &unk_1F5D2C918;
  v9[3] = v9;
  v10 = v5;
  v11[3] = v11;
  v11[0] = &unk_1F5D2C918;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v9);
  v6 = v10;
  *(v10 + 4) = v3;
  *(v6 + 20) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v10, v9);
  v7 = v9[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v10);
  return v7;
}

_anonymous_namespace_ *RECreateCircleEaseEx(re *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 16, 8);
  v2[1] = 2;
  *v2 = &unk_1F5CAE4B0;
  v5[0] = &unk_1F5D2C998;
  v5[3] = v5;
  v6 = v2;
  v7[3] = v7;
  v7[0] = &unk_1F5D2C998;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v5);
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v6, v5);
  v3 = v5[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v6);
  return v3;
}

_anonymous_namespace_ *RECreateElasticEaseEx(re *a1, float a2)
{
  v3 = a1;
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 24, 8);
  v5[1] = 3;
  *v5 = &unk_1F5CAE508;
  v5[2] = 0x4040000000000003;
  v9[0] = &unk_1F5D2CA18;
  v9[3] = v9;
  v10 = v5;
  v11[3] = v11;
  v11[0] = &unk_1F5D2CA18;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v9);
  v6 = v10;
  *(v10 + 4) = v3;
  *(v6 + 20) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v10, v9);
  v7 = v9[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v10);
  return v7;
}

_anonymous_namespace_ *RECreateExponentialEaseEx(re *a1, float a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = 4;
  *v4 = &unk_1F5CAE560;
  *(v4 + 16) = 0x40000000;
  v7[0] = &unk_1F5D2CA98;
  v7[3] = v7;
  v8 = v4;
  v9[3] = v9;
  v9[0] = &unk_1F5D2CA98;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v7);
  *(v8 + 16) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v8, v7);
  v5 = v7[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v8);
  return v5;
}

_anonymous_namespace_ *RECreateHermiteEaseEx(re *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 16, 8);
  v2[1] = 5;
  *v2 = &unk_1F5CADE60;
  v5[0] = &unk_1F5D2CB18;
  v5[3] = v5;
  v6 = v2;
  v7[3] = v7;
  v7[0] = &unk_1F5D2CB18;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v5);
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v6, v5);
  v3 = v5[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v6);
  return v3;
}

_anonymous_namespace_ *RECreateLogarithmicEaseEx(re *a1, float a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = 6;
  *v4 = &unk_1F5CAE5B8;
  *(v4 + 16) = 0x40000000;
  v7[0] = &unk_1F5D2CB98;
  v7[3] = v7;
  v8 = v4;
  v9[3] = v9;
  v9[0] = &unk_1F5D2CB98;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v7);
  *(v8 + 16) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v8, v7);
  v5 = v7[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v8);
  return v5;
}

_anonymous_namespace_ *RECreatePowerEaseEx(re *a1, float a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = 7;
  *v4 = &unk_1F5CAE610;
  *(v4 + 16) = 0x40000000;
  v7[0] = &unk_1F5D2CC18;
  v7[3] = v7;
  v8 = v4;
  v9[3] = v9;
  v9[0] = &unk_1F5D2CC18;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v7);
  *(v8 + 16) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v8, v7);
  v5 = v7[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v8);
  return v5;
}

_anonymous_namespace_ *RECreateSineEaseEx(re *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 16, 8);
  v2[1] = 8;
  *v2 = &unk_1F5CAE668;
  v5[0] = &unk_1F5D2CC98;
  v5[3] = v5;
  v6 = v2;
  v7[3] = v7;
  v7[0] = &unk_1F5D2CC98;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v5);
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v6, v5);
  v3 = v5[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v6);
  return v3;
}

_anonymous_namespace_ *RECreateCubicBezierEaseEx(re *a1, double a2, double a3)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 32, 8);
  *(v6 + 8) = 9;
  *v6 = &unk_1F5CAE6C0;
  *(v6 + 16) = 0x3DCCCCCD3E800000;
  *(v6 + 24) = 0x3F8000003E800000;
  v10[0] = &unk_1F5D2CD18;
  v10[3] = v10;
  v11 = v6;
  v12[3] = v12;
  v12[0] = &unk_1F5D2CD18;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v10);
  v7 = v11;
  *(v11 + 16) = a2;
  *(v7 + 24) = a3;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v11, v10);
  v8 = v10[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v11);
  return v8;
}

uint64_t REEasingFunctionSetModeEx(uint64_t result, int a2)
{
  v2 = *(result + 24);
  if (*(v2 + 8) <= 8u)
  {
    *(v2 + 12) = a2;
  }

  return result;
}

uint64_t REEasingFunctionGetModeEx(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(v1 + 8) > 8u)
  {
    return 0;
  }

  else
  {
    return *(v1 + 12);
  }
}

void REAnimationHandoffDefaultDescEx(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0x80000000;
  *(a1 + 16) = "";
  *(a1 + 24) = 0;
}

double REAnimationAssetGetTotalDuration(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  v1 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v5);
  v2 = 0.0;
  if (v1)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      v2 = (*(*v3 + 40))(v3);
    }
  }

  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

uint64_t REAnimationAssetGetName(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v4);
  if (v1)
  {
    v2 = *(*(v1 + 8) + 32);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

void REAnimationAssetGetFromToBy2(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  re::AssetAPIHelper::assetHandleCreate(a1, &v12);
  re::AssetHandle::loadNow(v13, 0);
  ++*(v13 + 276);
  v9 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v12);
  if (!v9)
  {
    goto LABEL_64;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_64;
  }

  if (a2 > 2)
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        if (*(v10 + 8) != 14)
        {
          goto LABEL_64;
        }
      }

      else if (*(v10 + 8) != 15)
      {
        goto LABEL_64;
      }

LABEL_44:
      if (a3 && *(v10 + 96) == 1)
      {
        *a3 = v10 + 112;
      }

      if (a4 && *(v10 + 128) == 1)
      {
        *a4 = v10 + 144;
      }

      if (a5 && (*(v10 + 160) & 1) != 0)
      {
        v11 = 176;
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    if (a2 == 5)
    {
      if (*(v10 + 8) != 16)
      {
        goto LABEL_64;
      }

      goto LABEL_44;
    }

    if (a2 != 6 || *(v10 + 8) != 17)
    {
      goto LABEL_64;
    }

    if (a3 && *(v10 + 96) == 1)
    {
      *a3 = v10 + 112;
    }

    if (a4 && *(v10 + 160) == 1)
    {
      *a4 = v10 + 176;
    }

    if (!a5 || *(v10 + 224) != 1)
    {
      goto LABEL_64;
    }

    v11 = 240;
LABEL_63:
    *a5 = v10 + v11;
    goto LABEL_64;
  }

  if (!a2)
  {
    if (*(v10 + 8) != 11)
    {
      goto LABEL_64;
    }

    if (a3 && *(v10 + 88) == 1)
    {
      *a3 = v10 + 92;
    }

    if (a4 && *(v10 + 96) == 1)
    {
      *a4 = v10 + 100;
    }

    if (!a5 || (*(v10 + 104) & 1) == 0)
    {
      goto LABEL_64;
    }

    v11 = 108;
    goto LABEL_63;
  }

  if (a2 == 1)
  {
    if (*(v10 + 8) != 12)
    {
      goto LABEL_64;
    }
  }

  else if (a2 != 2 || *(v10 + 8) != 13)
  {
    goto LABEL_64;
  }

  if (a3 && *(v10 + 88) == 1)
  {
    *a3 = v10 + 96;
  }

  if (a4 && *(v10 + 104) == 1)
  {
    *a4 = v10 + 112;
  }

  if (a5 && (*(v10 + 120) & 1) != 0)
  {
    v11 = 128;
    goto LABEL_63;
  }

LABEL_64:
  re::AssetHandle::~AssetHandle(&v12);
}

uint64_t REAnimationIsInterpolationEnabled(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v14);
  if (!v15)
  {
    goto LABEL_15;
  }

  v1 = atomic_load((v15 + 896));
  if (v1 != 2)
  {
    goto LABEL_15;
  }

  v2 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v3 = v15;
  if (v15)
  {
    v3 = *(v15 + 280);
  }

  if (v2 == v3)
  {
    v10 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(&v14);
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = *(v10 + 1);
    if (v11)
    {
      v12 = atomic_load((v11 + 896));
      if (v12 == 2)
      {
        v7 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v10);
        goto LABEL_8;
      }

      re::AssetHandle::loadAsync(v10);
    }

LABEL_15:
    IsInterpolationEnabled = 1;
    goto LABEL_16;
  }

  v4 = re::TimelineAsset::assetType(v2);
  v6 = *(v15 + 280);
  if (v4 == v6)
  {
    v7 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(&v14);
    if (v7)
    {
LABEL_8:
LABEL_16:
      re::AssetHandle::~AssetHandle(&v14);
      return IsInterpolationEnabled;
    }

LABEL_13:
    IsInterpolationEnabled = 0;
    goto LABEL_16;
  }

  re::internal::assertLog(5, v5, "assertion failure: '%s' (%s:line %i) Unknown timeline asset handle type: %s", "!Unreachable code", "REAnimationIsInterpolationEnabled", 925, *v6);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t anonymous namespace::processIsInterpolationEnabled(_anonymous_namespace_ *this, const re::Timeline *a2)
{
  if (this)
  {
    v2 = this;
    v3 = *(this + 2);
    if ((v3 - 19) < 0x10 || v3 == 61)
    {
      LOBYTE(this) = *(this + 73);
    }

    else
    {
      this = (*(*this + 24))(this, a2);
      if (this)
      {
        v5 = this;
        v6 = 1;
        do
        {
          v7 = (*(*v2 + 32))(v2, v6 - 1);
          if (v6 >= v5)
          {
            break;
          }

          ++v6;
        }

        while ((this & 1) == 0);
      }
    }
  }

  return this & 1;
}

uint64_t REAnimationServiceStartAnimation(re::AnimationManager *a1, uint64_t a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v17);
  re::AssetHandle::loadNow(v18, 0);
  ++*(v18 + 276);
  v5 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v17);
  v6 = 0;
  if (!v5)
  {
    goto LABEL_49;
  }

  v7 = *(v5 + 16);
  v8 = *(a3 + 24);
  if (v8 > 3)
  {
    if (*(a3 + 24) > 5u)
    {
      if (v8 == 6)
      {
        v6 = 0;
        if (!a1 || !v7)
        {
          goto LABEL_49;
        }

        {
          re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
        }

        v9 = re::introspect<re::GenericSRT<float>>(BOOL)::info;
        v10 = (a3 + 25);
        v11 = (a3 + 32);
        v12 = (a3 + 80);
      }

      else
      {
        if (v8 != 7)
        {
          goto LABEL_49;
        }

        v6 = 0;
        if (!a1 || !v7)
        {
          goto LABEL_49;
        }

        {
          re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
        }

        v9 = re::introspect<re::SkeletalPose>(BOOL)::info;
        v10 = (a3 + 25);
        v11 = (a3 + 32);
        v12 = (a3 + 120);
      }

      goto LABEL_46;
    }

    if (v8 == 4)
    {
      v6 = 0;
      if (!a1 || !v7)
      {
        goto LABEL_49;
      }

      {
        re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      }

      v9 = re::introspect<re::Vector4<float>>(BOOL)::info;
    }

    else
    {
      if (v8 != 5)
      {
        goto LABEL_49;
      }

      v6 = 0;
      if (!a1 || !v7)
      {
        goto LABEL_49;
      }

      {
        re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
      }

      v9 = re::introspect<re::Quaternion<float>>(BOOL)::info;
    }
  }

  else
  {
    if (*(a3 + 24) <= 1u)
    {
      if (!*(a3 + 24))
      {
        v6 = 0;
        if (!a1 || !v7)
        {
          goto LABEL_49;
        }

        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v15);
        }

        v9 = re::introspect<float>(BOOL)::info;
        v10 = (a3 + 25);
        v11 = (a3 + 28);
        v12 = (a3 + 32);
        goto LABEL_46;
      }

      v6 = 0;
      if (!a1 || !v7)
      {
        goto LABEL_49;
      }

      {
        re::introspect<double>(BOOL)::info = re::introspect_double(0, v16);
      }

      v9 = re::introspect<double>(BOOL)::info;
      goto LABEL_41;
    }

    if (v8 == 2)
    {
      v6 = 0;
      if (!a1 || !v7)
      {
        goto LABEL_49;
      }

      {
        re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      }

      v9 = re::introspect<re::Vector2<float>>(BOOL)::info;
LABEL_41:
      v10 = (a3 + 25);
      v11 = (a3 + 32);
      v12 = (a3 + 40);
      goto LABEL_46;
    }

    if (v8 != 3)
    {
      goto LABEL_49;
    }

    v6 = 0;
    if (!a1 || !v7)
    {
      goto LABEL_49;
    }

    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }

    v9 = re::introspect<re::Vector3<float>>(BOOL)::info;
  }

  v10 = (a3 + 25);
  v11 = (a3 + 32);
  v12 = (a3 + 48);
LABEL_46:
  re::makeBindPoint(v9, v10, v11, v12, &v19);
  v22.n128_u8[8] = 0;
  v21 = 0;
  v22.n128_u64[0] = 0;
  v22.n128_u32[3] = 0x80000000;
  v23 = "";
  v22.n128_u64[0] = re::AnimationManager::startAnimation(a1, v7, 0, &v19, &v22, 0, 0, &v21, 0, 0);
  v22.n128_u64[1] = v13;
  if (v21)
  {
  }

  re::make::shared::object<re::internal::AnimationControllerData,decltype(nullptr),re::AnimationController const&>(&v21, &v22);
  v6 = v21;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v20);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v20);
LABEL_49:
  re::AssetHandle::~AssetHandle(&v17);
  return v6;
}

uint64_t REAnimatableValueCreate(int a1, uint64_t *a2)
{
  result = 0;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 != 7)
        {
          return result;
        }

        v10 = re::globalAllocators(0);
        v6 = (*(*v10[2] + 32))(v10[2], 208, 8);
        *v6 = 0u;
        *(v6 + 16) = 0u;
        *(v6 + 32) = 0u;
        *(v6 + 48) = 0u;
        *(v6 + 64) = 0u;
        *(v6 + 80) = 0u;
        *(v6 + 96) = 0u;
        *(v6 + 112) = 0u;
        *(v6 + 128) = 0u;
        *(v6 + 144) = 0u;
        *(v6 + 160) = 0u;
        *(v6 + 176) = 0u;
        *(v6 + 192) = 0u;
        ArcSharedObject::ArcSharedObject(v6, 0);
        *(v6 + 25) = 0;
        *v6 = &unk_1F5D2CFF0;
        *(v6 + 32) = 0;
        *(v6 + 40) = &str_67;
        *(v6 + 48) = 0u;
        *(v6 + 64) = 0u;
        *(v6 + 80) = 0u;
        *(v6 + 96) = 0;
        *(v6 + 104) = 0;
        *(v6 + 112) = 0;
        *(v6 + 120) = 0;
        *(v6 + 128) = &str_67;
        *(v6 + 136) = 0u;
        *(v6 + 152) = 0u;
        *(v6 + 168) = 0u;
        *(v6 + 184) = 0;
        *(v6 + 192) = 0;
        *(v6 + 200) = 0;
        *(v6 + 24) = 7;
        goto LABEL_19;
      }

      v14 = re::globalAllocators(0);
      v6 = (*(*v14[2] + 32))(v14[2], 128, 16);
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0u;
      *(v6 + 96) = 0u;
      *(v6 + 112) = 0u;
      ArcSharedObject::ArcSharedObject(v6, 0);
      *v6 = &unk_1F5D2CFA8;
      *(v6 + 32) = 0x3F8000003F800000;
      *(v6 + 40) = 1065353216;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0x3F80000000000000;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0x3F8000003F800000;
      *(v6 + 88) = 1065353216;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0x3F80000000000000;
      *(v6 + 112) = 0u;
      v7 = 6;
    }

    else if (a1 == 4)
    {
      v12 = re::globalAllocators(0);
      v6 = (*(*v12[2] + 32))(v12[2], 64, 16);
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      ArcSharedObject::ArcSharedObject(v6, 0);
      *v6 = &unk_1F5D2CF18;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      v7 = 4;
    }

    else
    {
      v8 = re::globalAllocators(0);
      v6 = (*(*v8[2] + 32))(v8[2], 64, 16);
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      ArcSharedObject::ArcSharedObject(v6, 0);
      *v6 = &unk_1F5D2CF60;
      *(v6 + 32) = xmmword_1E30474D0;
      *(v6 + 48) = xmmword_1E30474D0;
      v7 = 5;
    }

LABEL_18:
    *(v6 + 24) = v7;
    goto LABEL_19;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v13 = re::globalAllocators(0);
      v6 = (*(*v13[2] + 32))(v13[2], 48, 8);
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      ArcSharedObject::ArcSharedObject(v6, 0);
      *v6 = &unk_1F5D2CE88;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v7 = 2;
    }

    else
    {
      v9 = re::globalAllocators(0);
      v6 = (*(*v9[2] + 32))(v9[2], 64, 16);
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      ArcSharedObject::ArcSharedObject(v6, 0);
      *v6 = &unk_1F5D2CED0;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      v7 = 3;
    }

    goto LABEL_18;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v5 = re::globalAllocators(0);
    v6 = (*(*v5[2] + 32))(v5[2], 48, 8);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    ArcSharedObject::ArcSharedObject(v6, 0);
    *v6 = &unk_1F5D2CE40;
    v7 = 1;
    goto LABEL_18;
  }

  v11 = re::globalAllocators(0);
  v6 = (*(*v11[2] + 32))(v11[2], 40, 8);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  ArcSharedObject::ArcSharedObject(v6, 0);
  *v6 = &unk_1F5D2CDE0;
  *(v6 + 24) = 0;
LABEL_19:
  *a2 = v6;
  return 1;
}

float REAnimatableValueGetFloat(uint64_t a1)
{
  v1 = 28;
  if (*(a1 + 25))
  {
    v1 = 32;
  }

  return *(a1 + v1);
}

double REAnimatableValueGetDouble(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 40;
  }

  return *(a1 + v1);
}

double REAnimatableValueGetVector2F(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 40;
  }

  return *(a1 + v1);
}

__n128 REAnimatableValueGetVector3F(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 48;
  }

  return *(a1 + v1);
}

__n128 REAnimatableValueGetVector4F(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 48;
  }

  return *(a1 + v1);
}

__n128 REAnimatableValueGetQuaternionF(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 48;
  }

  return *(a1 + v1);
}

__n128 REAnimatableValueGetSRT(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 80;
  }

  return *(a1 + v1);
}

__n128 *REAnimatableValueSetSRT(__n128 *result, __n128 a2, __n128 a3, __n128 a4)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

uint64_t std::__function::__func<RECreateBackEaseEx::$_0,std::allocator<RECreateBackEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateBounceEaseEx::$_0,std::allocator<RECreateBounceEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateCircleEaseEx::$_0,std::allocator<RECreateCircleEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateElasticEaseEx::$_0,std::allocator<RECreateElasticEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateExponentialEaseEx::$_0,std::allocator<RECreateExponentialEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateHermiteEaseEx::$_0,std::allocator<RECreateHermiteEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateLogarithmicEaseEx::$_0,std::allocator<RECreateLogarithmicEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreatePowerEaseEx::$_0,std::allocator<RECreatePowerEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateSineEaseEx::$_0,std::allocator<RECreateSineEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateCubicBezierEaseEx::$_0,std::allocator<RECreateCubicBezierEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 re::make::shared::object<re::internal::AnimationControllerData,decltype(nullptr),re::AnimationController const&>(re *a1, __n128 *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 48, 8);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *(v5 + 24) = 0;
  *v5 = &unk_1F5D2CD98;
  result = *a2;
  *(v5 + 32) = *a2;
  *a1 = v5;
  return result;
}

void re::internal::AnimationControllerData::~AnimationControllerData(re::internal::AnimationControllerData *this)
{
  *this = &unk_1F5D2CD98;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2CD98;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<float>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<float>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<double>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<double>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::Vector2<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::Vector2<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::Vector3<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::Vector3<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::Vector4<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::Vector4<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::Quaternion<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::Quaternion<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::GenericSRT<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::GenericSRT<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::SkeletalPose>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5D2CFF0;
  v2 = (a1 + 4);
  re::SkeletalPose::~SkeletalPose((a1 + 15));
  re::SkeletalPose::~SkeletalPose(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::SkeletalPose>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5D2CFF0;
  v2 = (a1 + 4);
  re::SkeletalPose::~SkeletalPose((a1 + 15));
  re::SkeletalPose::~SkeletalPose(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *RERayCastResultComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
}

char *RERayCastResultComponentGetHitEntity(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::safeCast(a1, a2);
  v3 = *(v2 + 16);
  v4 = (v2 + 64);

  return re::ecs2::EntityHandle::resolve(v4, v3);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1) == re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)
    {
      return v2;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) component must not be null.", "component", "safeCast", 97);
    _os_crash();
    __break(1u);
  }

  (*(*v2 + 40))(v2);
  v5 = *(v3[500] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash();
  __break(1u);
  return result;
}

void *REAudioMixerComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void *REVideoPlayerStatusComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void **REVideoPlayerStatusComponentDidUpdateInApp(void **this)
{
  if (this)
  {
    return re::ecs2::VideoPlayerStatusComponent::didUpdateInApp(this);
  }

  return this;
}

uint64_t REVideoPlayerStatusComponentGetContentInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 66);
  }

  return result;
}

uint64_t REVideoPlayerStatusComponentGetMediaInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 65);
  }

  return result;
}

double REVideoPlayerStatusComponentGetCurrentPlayerScreenSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 72);
  }

  else
  {
    return 0.0;
  }
}

double REVideoPlayerStatusComponentGetCurrentPlayerScreenVideoDimension(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 80);
  }

  else
  {
    return 0.0;
  }
}

float REVideoPlayerStatusComponentGetSafeZoneRadius(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 28);
  }

  else
  {
    return -1.0;
  }
}

uint64_t REVideoPlayerStatusComponentGetInsets@<X0>(uint64_t result@<X0>, float64x2_t *a2@<X8>)
{
  if (result)
  {
    v4 = *(result + 48);
    v2.i64[1] = v4 >> 64;
    v3 = v4;
    *v2.f32 = v3;
    v5 = vcvt_hight_f64_f32(v2);
    v6 = vcvtq_f64_f32(v3);
  }

  else
  {
    v6 = 0uLL;
    v5 = 0uLL;
  }

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t REVideoPlayerStatusComponentGetIsPlayControlsOn(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 64);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

double REVideoPlayerStatusComponentGetCurrentSceneSize(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

uint64_t REVideoPlayerStatusComponentGetCurrentViewingMode(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t REVideoPlayerStatusComponentGetCurrentSpatialVideoMode(unsigned __int8 *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1) == re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      return v2[208];
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) component must not be null.", "component", "safeCast", 97);
    _os_crash();
    __break(1u);
  }

  (*(*v2 + 40))(v2);
  v5 = *(v3[448] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash();
  __break(1u);
  return result;
}

re *REAnimationControllerCopyEx(re::ecs2::AnimationComponent *a1, uint64_t a2)
{
  result = re::ecs2::AnimationComponent::shadowAnimationController(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = re::globalAllocators(result);
    v6 = (*(*v5[2] + 32))(v5[2], 48, 8);
    return re::internal::AnimationControllerData::AnimationControllerData(v6, a1, v4);
  }

  return result;
}

re::internal::AnimationControllerData *REAnimationControllerCopy(re *a1, unint64_t a2)
{
  if (*(a1 + 6) <= a2)
  {
    return 0;
  }

  v3 = *(a1 + 8) + 72 * a2;
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 48, 8);
  return re::internal::AnimationControllerData::AnimationControllerData(v5, a1, (v3 + 56));
}

double REAnimationControllerGetDuration(uint64_t a1)
{
  v1 = re::AnimationController::timeline((a1 + 32));
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(*v1 + 40);

  v2();
  return result;
}

double REAnimationControllerGetTime(uint64_t a1, double *a2)
{
  re::AnimationController::time((a1 + 32), v4);
  if (v4[0] == 1)
  {
    result = v5;
    *a2 = v5;
  }

  return result;
}

re::internal::AnimationControllerData *re::internal::AnimationControllerData::AnimationControllerData(re::internal::AnimationControllerData *this, re::ecs2::AnimationComponent *a2, const re::AnimationController *a3)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = a2;
  *this = &unk_1F5D2CD98;
  if (a2)
  {
    v6 = a2 + 8;
  }

  *(this + 2) = *a3;
  return this;
}

uint64_t REPerformanceMetricsGetFrameMetrics(uint64_t result, uint64_t a2)
{
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  if ((*(result + 428) & 0x10) != 0)
  {
    result = re::ServiceLocator::service<re::RenderManager>(*(result + 688));
    v3 = *(result + 112);
    if (v3)
    {
      v4 = *(v3 + 1648);
      if (v4)
      {
        *(a2 + 4) = *(v4 + 236) - *(v4 + 240);
        *(a2 + 8) = *(v4 + 232);
        if (*a2 >= 2u)
        {
          *(a2 + 16) = 0;
          *(a2 + 12) = 0;
        }
      }
    }
  }

  return result;
}

void *REMaterialParameterBlockArrayComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REMaterialParameterBlockArrayComponentClear(uint64_t a1)
{
  re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::clear(a1 + 32);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(a1 + 72);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentResize(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2)
{
  re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetParameterCountAtIndex(uint64_t a1, unint64_t a2)
{
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = (*(a1 + 64) + 32 * a2);
  v5 = *v4;
  if (!*v4)
  {
    v5 = v4[1];
  }

  return *(v5 + 332);
}

uint64_t REMaterialParameterBlockArrayComponentClearBlockAtIndex(uint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_20:
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1 + 64) + 32 * a2;
  v5 = *v4;
  if ((*v4 || (v5 = *(v4 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v11, v5);
    ++*(v4 + 16);
    v6 = v11;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v4, v11);
    *(v4 + 8) = 0;
    if (v6)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 64) + 32 * a2;
  ++*(v7 + 16);
  re::ecs2::SerializableMaterialParameterBlock::clearParameters(*v7);
  if (*(a1 + 88) <= a2)
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 104);
  v9 = *(v8 + 8 * a2);
  if (v9)
  {

    *(v8 + 8 * a2) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

CFStringRef REMaterialParameterBlockArrayComponentCopyParameterNameAtIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = (*(a1 + 64) + 32 * a2);
  v7 = *v6;
  if (!*v6)
  {
    v7 = v6[1];
  }

  v8 = *(v7 + 336);
  if (v8)
  {
    v9 = 0;
    v10 = *(v7 + 320);
    while ((*v10 & 0x80000000) == 0)
    {
      v10 += 80;
      if (v8 == ++v9)
      {
        LODWORD(v9) = *(v7 + 336);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 == v8)
  {
    return 0;
  }

  v11 = 0;
  while (v11 != a3)
  {
    ++v11;
    if (v8 <= v9 + 1)
    {
      v12 = v9 + 1;
    }

    else
    {
      v12 = *(v7 + 336);
    }

    while (v12 - 1 != v9)
    {
      LODWORD(v9) = v9 + 1;
      if ((*(*(v7 + 320) + 320 * v9) & 0x80000000) != 0)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v9) = v12;
LABEL_24:
    if (v9 == v8)
    {
      return 0;
    }
  }

  v14 = *(*(v7 + 320) + 320 * v9 + 16);

  return CFStringCreateWithCString(0, v14, 0x8000100u);
}

_anonymous_namespace_ *REMaterialParameterBlockArrayComponentGetParameterTypeAtIndex(uint64_t a1, unint64_t a2, char *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (a3)
  {
    v6 = *a3;
    if (*a3)
    {
      v7 = a3[1];
      if (v7)
      {
        v8 = (a3 + 2);
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v17[0] = 2 * v6;
  v17[1] = a3;
  v10 = *(a1 + 48);
  if (v10 <= a2)
  {
    v17[2] = 0;
    memset(v26, 0, sizeof(v26));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    v21 = 789;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = (*(a1 + 64) + 32 * a2);
  v12 = *v11;
  if (!*v11)
  {
    v12 = v11[1];
  }

  v13 = (0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31))) ^ ((0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31))) >> 27);
  v14 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v12 + 304, v17, (0x94D049BB133111EBLL * v13) ^ ((0x94D049BB133111EBLL * v13) >> 31), v26);
  if (HIDWORD(v26[0]) == 0x7FFFFFFF)
  {
    v15 = 0;
  }

  else
  {
    v14 = re::convert(*(*(v12 + 320) + 320 * HIDWORD(v26[0]) + 32));
    v15 = v14;
  }

  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  return v15;
}

uint64_t REMaterialParameterBlockArrayComponentGetParameterTypeWithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    memset(v10, 0, sizeof(v10));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = (*(a1 + 64) + 32 * a2);
  v7 = *v6;
  if (!*v6)
  {
    v7 = v6[1];
  }

  v8 = 0xBF58476D1CE4E5B9 * ((*(a3 + 24) >> 31) ^ (*(a3 + 24) >> 1));
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 304, (a3 + 24), (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), v10);
  if (HIDWORD(v10[0]) == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return re::convert(*(*(v7 + 320) + 320 * HIDWORD(v10[0]) + 32));
  }
}

uint64_t REMaterialAssetGetTextureParameterType(uint64_t a1, const char *a2, _DWORD *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v15);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v15);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 1776);
  if (!v6)
  {
    goto LABEL_11;
  }

  if (!*(v6 + 280))
  {
    v15[3] = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    v19 = 468;
    v20 = 2048;
    v21 = 0;
    v22 = 2048;
    v23 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(*(v6 + 288) + 48);
  if (v7)
  {
    v8 = (v7 + 8);
    CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(v7);
    v10 = *(CustomUniformsArgument + 9);
    if (v10)
    {
      v11 = *(CustomUniformsArgument + 10) + 64;
      v12 = 80 * v10;
      while (*(v11 + 13) != 1 || strcmp(*(v11 - 40), a2))
      {
        v11 += 80;
        v12 -= 80;
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      *a3 = *v11;
      v13 = 1;
    }

    else
    {
LABEL_10:
      v13 = 0;
    }
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  re::AssetHandle::~AssetHandle(v15);
  return v13;
}

uint64_t REMaterialAssetGetParameterType(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v22);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v22);
  if (!v3)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v4 = v3;
  v5 = re::AssetHandle::AssetHandle(v31, (v3 + 40));
  v6 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v5);
  OriginalConstantParameterType = re::MaterialDefinitionAsset::getOriginalConstantParameterType(v6, a2);
  if (OriginalConstantParameterType)
  {
    goto LABEL_4;
  }

  OriginalConstantParameterType = re::MaterialAsset::getOriginalConstantParameterType(v4, a2);
  if (OriginalConstantParameterType)
  {
    goto LABEL_4;
  }

  re::MaterialParameterBlock::handle(*(v4 + 1784), a2, v28);
  v10 = BYTE4(v29);
  if ((BYTE4(v29) & 7) == 0)
  {
    v11 = *(v4 + 1776);
    if (a2)
    {
      v12 = *a2;
      if (*a2)
      {
        v13 = a2[1];
        if (v13)
        {
          v14 = (a2 + 2);
          do
          {
            v12 = 31 * v12 + v13;
            v15 = *v14++;
            v13 = v15;
          }

          while (v15);
        }

        v12 &= ~0x8000000000000000;
      }
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v24 = v12;
    re::MaterialParameterTable::handle((v11 + 304), &v24, v25);
    v29 = v26;
    v30 = v27;
    v24 = 0;
    v10 = BYTE4(v26);
    if ((BYTE4(v26) & 7) == 0)
    {
      v16 = *(*(v4 + 1776) + 16);
      if (a2)
      {
        v17 = *a2;
        if (*a2)
        {
          v18 = a2[1];
          if (v18)
          {
            v19 = (a2 + 2);
            do
            {
              v17 = 31 * v17 + v18;
              v20 = *v19++;
              v18 = v20;
            }

            while (v20);
          }

          v17 &= ~0x8000000000000000;
        }
      }

      else
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v23 = v17;
      re::MaterialParameterTable::handle((v16 + 248), &v23, v25);
      v30 = v27;
      v29 = v26;
      v23 = 0;
      v10 = BYTE4(v26);
      if ((BYTE4(v26) & 7) == 0)
      {
        v8 = 0;
        goto LABEL_5;
      }
    }
  }

  v21 = v10 & 7;
  if (v21 > 2)
  {
    if (v21 == 3)
    {
      OriginalConstantParameterType = 128;
      goto LABEL_4;
    }

    if (v21 == 4)
    {
      OriginalConstantParameterType = 192;
      goto LABEL_4;
    }

LABEL_32:
    OriginalConstantParameterType = 0;
    goto LABEL_4;
  }

  if (v21 == 1)
  {
    OriginalConstantParameterType = v30;
    goto LABEL_4;
  }

  if (v21 != 2)
  {
    goto LABEL_32;
  }

  OriginalConstantParameterType = 64;
LABEL_4:
  v8 = re::convert(OriginalConstantParameterType);
LABEL_5:
  re::AssetHandle::~AssetHandle(v31);
LABEL_7:
  re::AssetHandle::~AssetHandle(v22);
  return v8;
}

uint64_t REMaterialAssetGetParameterTypeWithHandle(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v17);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v17);
  if (v3)
  {
    v4 = v3;
    v5 = re::AssetHandle::AssetHandle(v27, (v3 + 40));
    v6 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v5);
    v24 = *(a2 + 24) >> 1;
    v7 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 2280, &v24);
    if (v7)
    {
      v8 = *(v7 + 20);
      if (v8)
      {
        goto LABEL_20;
      }
    }

    v24 = *(a2 + 24) >> 1;
    v9 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v4 + 1792, &v24);
    if (v9)
    {
      v8 = *(v9 + 20);
      if (v8)
      {
        goto LABEL_20;
      }
    }

    v10 = *(v4 + 1784);
    v23 = *(a2 + 24) >> 1;
    re::MaterialParameterBlock::handle(v10, &v23, &v24);
    v23 = 0;
    v11 = BYTE4(v25);
    if ((BYTE4(v25) & 7) == 0)
    {
      v12 = *(v4 + 1776);
      v19 = *(a2 + 24) >> 1;
      re::MaterialParameterTable::handle((v12 + 304), &v19, v20);
      v25 = v21;
      v26 = v22;
      v19 = 0;
      v11 = BYTE4(v21);
      if ((BYTE4(v21) & 7) == 0)
      {
        v13 = *(*(v4 + 1776) + 16);
        v18 = *(a2 + 24) >> 1;
        re::MaterialParameterTable::handle((v13 + 248), &v18, v20);
        v26 = v22;
        v25 = v21;
        v18 = 0;
        v11 = BYTE4(v21);
        if ((BYTE4(v21) & 7) == 0)
        {
          v15 = 0;
          goto LABEL_21;
        }
      }
    }

    v14 = v11 & 7;
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v8 = 128;
        goto LABEL_20;
      }

      if (v14 == 4)
      {
        v8 = 192;
        goto LABEL_20;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v8 = v26;
        goto LABEL_20;
      }

      if (v14 == 2)
      {
        v8 = 64;
LABEL_20:
        v15 = re::convert(v8);
LABEL_21:
        re::AssetHandle::~AssetHandle(v27);
        goto LABEL_22;
      }
    }

    v8 = 0;
    goto LABEL_20;
  }

  v15 = 0;
LABEL_22:
  re::AssetHandle::~AssetHandle(v17);
  return v15;
}

uint64_t REMaterialAssetGetMetalShaderParameterType(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v14);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v14);
  if (v3)
  {
    v4 = *(v3 + 1776);
    if (a2)
    {
      v5 = *a2;
      if (*a2)
      {
        v6 = a2[1];
        if (v6)
        {
          v7 = (a2 + 2);
          do
          {
            v5 = 31 * v5 + v6;
            v8 = *v7++;
            v6 = v8;
          }

          while (v8);
        }

        v5 &= ~0x8000000000000000;
      }
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (*(v4 + 120))
    {
      v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
      v10 = *(*(v4 + 128) + 4 * ((v9 ^ (v9 >> 31)) % *(v4 + 144)));
      if (v10 != 0x7FFFFFFF)
      {
        v13 = *(v4 + 136);
        if (*(v13 + 24 * v10 + 8) == v5)
        {
LABEL_16:
          v11 = re::convert(*(v13 + 24 * v10 + 16));
          goto LABEL_12;
        }

        while (1)
        {
          LODWORD(v10) = *(v13 + 24 * v10) & 0x7FFFFFFF;
          if (v10 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v13 + 24 * v10 + 8) == v5)
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

  v11 = 0;
LABEL_12:
  re::AssetHandle::~AssetHandle(v14);
  return v11;
}

uint64_t REMaterialParameterBlockArrayComponentSetBlockAtIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (a3)
  {
    v6 = (a3 + 8);
  }

  if (*(a1 + 88) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(a1 + 104);
  v8 = *(v7 + 8 * a2);
  *(v7 + 8 * a2) = a3;
  if (v8)
  {
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetBlockAtIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 88) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 104) + 8 * a2);
  }
}

void REMaterialParameterBlockArrayComponentClearParameterAtIndex(uint64_t a1, unint64_t a2, char *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 48);
  if (v6 <= a2)
  {
    *&v17.var0 = 0;
    v31 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v18 = 0;
    v31 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v27, v8);
    ++*(v7 + 16);
    v9 = v27;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v27);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (a3)
  {
    v10 = *a3;
    if (*a3)
    {
      v11 = a3[1];
      if (v11)
      {
        v12 = (a3 + 2);
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  *&v17.var0 = 2 * v10;
  v17.var1 = a3;
  v6 = *(a1 + 48);
  if (v6 <= a2)
  {
    goto LABEL_31;
  }

  v14 = *(a1 + 64) + 32 * a2;
  ++*(v14 + 16);
  if (re::ecs2::SerializableMaterialParameterBlock::removeParameter(*v14, &v17))
  {
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 88);
  if (v6 <= a2)
  {
LABEL_32:
    v18 = 0;
    v31 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(a1 + 104);
  v16 = *(v15 + 8 * a2);
  if (v16)
  {
    re::MaterialParameterBlock::handle(v16, a3, &v27);
    if ((BYTE12(v27) & 7) != 0)
    {
      re::MaterialParameterBlock::removeParameter(*(v15 + 8 * a2), a3);
    }

    v16 = re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*&v17.var0)
  {
    if (*&v17.var0)
    {
    }
  }
}

uint64_t REMaterialParameterBlockArrayComponentClearParameterWithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(a1 + 64) + 32 * a2;
  v7 = *v6;
  if ((*v6 || (v7 = *(v6 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v11, v7);
    ++*(v6 + 16);
    v8 = v11;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v6, v11);
    *(v6 + 8) = 0;
    if (v8)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_18:
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(a1 + 64) + 32 * a2;
  ++*(v9 + 16);
  result = re::ecs2::SerializableMaterialParameterBlock::removeParameter(*v9, (a3 + 24));
  if (result)
  {

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetBoolAtIndex(uint64_t a1, unint64_t a2, char *a3, char a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  LOBYTE(v14) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 2, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetBoolWithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  LOBYTE(v14) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 2, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetBoolAtIndex(uint64_t a1, unint64_t a2, const char *a3, _BYTE *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    v19 = 789;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::BOOLValue(v10, a3, v14);
  if (v14[0] == 1)
  {
    v11 = v14[1];
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    v19 = 789;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v24);
    if ((BYTE12(v24) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v24, 2))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v24);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloatAtIndex(uint64_t a1, unint64_t a2, char *a3, float a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  *&v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 1, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloatWithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  *&v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 1, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetFloatAtIndex(uint64_t a1, unint64_t a2, const char *a3, _DWORD *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::floatValue(v10, a3, v14);
  if (v14[0] == 1)
  {
    v11 = v15;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v25);
    if ((BYTE12(v25) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 1))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v25);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetIntAtIndex(uint64_t a1, unint64_t a2, char *a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  LODWORD(v14) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 3, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetIntWithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  LODWORD(v14) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 3, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetIntAtIndex(uint64_t a1, unint64_t a2, const char *a3, _DWORD *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::intValue(v10, a3, v14);
  if (v14[0] == 1)
  {
    v11 = v15;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v25);
    if ((BYTE12(v25) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 3))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v25);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetUIntAtIndex(uint64_t a1, unint64_t a2, char *a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  LODWORD(v14) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 7, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetUIntWithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  LODWORD(v14) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 7, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetUIntAtIndex(uint64_t a1, unint64_t a2, const char *a3, _DWORD *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::uintValue(v10, a3, v14);
  if (v14[0] == 1)
  {
    v11 = v15;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v25);
    if ((BYTE12(v25) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 7))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v25);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat2AtIndex(uint64_t a1, unint64_t a2, char *a3, double a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  *&v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 32, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat2WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  *&v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 32, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetFloat2AtIndex(uint64_t a1, unint64_t a2, const char *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v13[0] = 0;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::vector2FValue(v10, a3, v13);
  if (LOBYTE(v13[0]) == 1)
  {
    *a4 = v13[1];
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v13[2] = 0;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 104);
  result = *(v12 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v22);
    if ((BYTE12(v22) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v22, 32))
    {
      *a4 = *re::ShaderGraphMaterial::getConstant(*(v12 + 8 * a2), &v22);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetInt2AtIndex(uint64_t a1, unint64_t a2, char *a3, double a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  *&v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 4, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetInt2WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  *&v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 4, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetInt2AtIndex(uint64_t a1, unint64_t a2, const char *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v14[0] = 0;
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::int2Value(v10, a3, v14);
  if (LOBYTE(v14[0]) == 1)
  {
    v11 = v14[1];
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v14[2] = 0;
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v23);
    if ((BYTE12(v23) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v23, 4))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v23);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt2AtIndex(uint64_t a1, unint64_t a2, char *a3, double a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  *&v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 8, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt2WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(a1 + 64) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v9);
    ++*(v8 + 16);
    v10 = v14;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v14);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 64) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  *&v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 8, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetUInt2AtIndex(uint64_t a1, unint64_t a2, const char *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v14[0] = 0;
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::uint2Value(v10, a3, v14);
  if (LOBYTE(v14[0]) == 1)
  {
    v11 = v14[1];
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v14[2] = 0;
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v23);
    if ((BYTE12(v23) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v23, 8))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v23);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat3AtIndex(uint64_t a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, a3, 33, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat3WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, (a3 + 24), 33, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetFloat3AtIndex(uint64_t a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v23 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    *v22 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    a4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_28:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_16;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::vector3FValue(v10, a3, &v23);
  if (v23 == 1)
  {
    v11 = v24;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    goto LABEL_27;
  }

  v13 = *(a1 + 64) + 32 * a2;
  v14 = *v13;
  if (!*v13)
  {
    v14 = *(v13 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::colorGamut3FValue(v14, a3, v22);
  if (v22[0] != 1)
  {
    v18 = *(a1 + 88);
    if (v18 <= a2)
    {
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      v29 = 789;
      v30 = 2048;
      v31 = a2;
      v32 = 2048;
      v33 = v18;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v19 = *(a1 + 104);
    v20 = *(v19 + 8 * a2);
    if (!v20)
    {
      return 0;
    }

    re::MaterialParameterBlock::handle(v20, a3, buf);
    if ((buf[12] & 7) == 0 || !re::MaterialParameterHandle::isParameterType(buf, 33))
    {
      return 0;
    }

    v11 = *re::ShaderGraphMaterial::getConstant(*(v19 + 8 * a2), buf);
    goto LABEL_10;
  }

  if (CoreRELog::onceToken != -1)
  {
    goto LABEL_28;
  }

LABEL_16:
  v15 = CoreRELog::log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "REMaterialParameterBlockArrayComponentGetFloat3AtIndex was called for parameter of type Color3.To get the right color space context for the color value, REMaterialParameterBlockArrayComponentGetColor3AtIndex should be used instead.", buf, 2u);
  }

  v12 = 1;
  *&v16 = re::ColorGamut3F::as(&v22[4], 0, 1);
  DWORD2(v16) = v17;
  *a4 = v16;
  return v12;
}

uint64_t REMaterialParameterBlockArrayComponentSetColor3AtIndex(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, __n128 a5)
{
  v20 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v15, v10);
    ++*(v9 + 16);
    v11 = v15;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v15);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_16:
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 64) + 32 * a2;
  ++*(v12 + 16);
  re::ecs2::SerializableMaterialParameterBlock::setColorGamut3F(*v12, a3, a5.n128_u32[0] | (a5.n128_u32[1] << 32), a5.n128_u32[2] | (a4 << 32));

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetColor3WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v20 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v15, v10);
    ++*(v9 + 16);
    v11 = v15;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v15);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_16:
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 64) + 32 * a2;
  ++*(v12 + 16);
  re::ecs2::SerializableMaterialParameterBlock::setColorGamut3F(*v12, (a3 + 24), a5.n128_u32[0] | (a5.n128_u32[1] << 32), a5.n128_u32[2] | (a4 << 32));

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetColor3AtIndex(uint64_t a1, unint64_t a2, const char *a3, _OWORD *a4, unsigned __int8 *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v10 = *(a1 + 48);
  if (v10 <= a2)
  {
    *v23 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 789;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 789;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  v11 = *(a1 + 64) + 32 * a2;
  v12 = *v11;
  if (!*v11)
  {
    v12 = *(v11 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::colorGamut3FValue(v12, a3, v23);
  if (v23[0] == 1)
  {
    v13 = v23[16];
    *a4 = *&v23[4];
    *a5 = v13;
    return 1;
  }

  v10 = *(a1 + 48);
  if (v10 <= a2)
  {
    goto LABEL_27;
  }

  v15 = *(a1 + 64) + 32 * a2;
  v16 = *v15;
  if (!*v15)
  {
    v16 = *(v15 + 8);
  }

  v17 = re::ecs2::SerializableMaterialParameterBlock::valueType(v16, a3);
  if (v17 != 21 && v17 != 0)
  {
    return 0;
  }

  v10 = *(a1 + 88);
  if (v10 <= a2)
  {
LABEL_28:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 789;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v19 = *(a1 + 104);
  result = *(v19 + 8 * a2);
  if (!result)
  {
    return result;
  }

  re::MaterialParameterBlock::handle(result, a3, &v33);
  if ((BYTE12(v33) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v33, 20))
  {
    *&v20 = re::MaterialParameterBlock::colorGamut3FValue(*(v19 + 8 * a2), &v33);
    DWORD2(v20) = v21;
    *a4 = v20;
    *a5 = v22;
    return 1;
  }

  return 0;
}

uint64_t REMaterialParameterBlockArrayComponentSetInt3AtIndex(uint64_t a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, a3, 5, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetInt3WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, (a3 + 24), 5, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetInt3AtIndex(uint64_t a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v14 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::int3Value(v10, a3, &v14);
  if (v14 == 1)
  {
    v11 = v15;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v25);
    if ((BYTE12(v25) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 5))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v25);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt3AtIndex(uint64_t a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, a3, 9, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt3WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, (a3 + 24), 9, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetUInt3AtIndex(uint64_t a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v14 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::uint3Value(v10, a3, &v14);
  if (v14 == 1)
  {
    v11 = v15;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v25);
    if ((BYTE12(v25) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 9))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v25);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat4AtIndex(uint64_t a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, a3, 34, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat4WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, (a3 + 24), 34, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetFloat4AtIndex(uint64_t a1, unint64_t a2, const char *a3, float32x4_t *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v23 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_30:
    *v21 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    a4 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_31;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::vector4FValue(v10, a3, &v23);
  if (v23 == 1)
  {
    v11 = v24;
LABEL_26:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    goto LABEL_30;
  }

  v12 = *(a1 + 64) + 32 * a2;
  v13 = *v12;
  if (!*v12)
  {
    v13 = *(v12 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::colorGamut4FValue(v13, a3, v21);
  if (v21[0] == 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_15:
      v14 = CoreRELog::log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "REMaterialParameterBlockArrayComponentGetFloat4AtIndex was called for parameter of type Color4.To get the right color space context for the color value, REMaterialParameterBlockArrayComponentGetColor4AtIndex should be used instead.", buf, 2u);
      }

      if (v22)
      {
        re::ColorHelpers::computeGamutTransformMatrix(v22, 0, buf);
        v15 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*buf, *&v21[4]), v35, *&v21[8]), v36, *&v21[12]);
        v15.i32[3] = 0;
        v11 = vmaxnmq_f32(v15, 0);
        v11.i32[3] = *&v21[16];
      }

      else
      {
        v11 = *&v21[4];
      }

      goto LABEL_26;
    }

LABEL_31:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_15;
  }

  v16 = *(a1 + 88);
  if (v16 <= a2)
  {
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v17 = *(a1 + 104);
  result = *(v17 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, buf);
    if ((buf[12] & 7) == 0 || !re::MaterialParameterHandle::isParameterType(buf, 34))
    {
      return 0;
    }

    Constant = re::ShaderGraphMaterial::getConstant(*(v17 + 8 * a2), buf);
    v20 = Constant[1];
    a4->i64[0] = *Constant;
    a4->i64[1] = v20;
    return 1;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetColor4AtIndex(uint64_t a1, unint64_t a2, char *a3, char a4, __n128 a5)
{
  v21 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v16, v10);
    ++*(v9 + 16);
    v11 = v16.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v16.n128_i64[0]);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_16:
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 64) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  v16 = a5;
  LOBYTE(v17) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setColorGamut4F(v13, a3, &v16);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetColor4WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v21 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v16, v10);
    ++*(v9 + 16);
    v11 = v16.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v16.n128_i64[0]);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_16:
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 64) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  v16 = a5;
  LOBYTE(v17) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setColorGamut4F(v13, (a3 + 24), &v16);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetColor4AtIndex(uint64_t a1, unint64_t a2, const char *a3, _OWORD *a4, _BYTE *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v10 = *(a1 + 48);
  if (v10 <= a2)
  {
    *v20 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v23 = 136315906;
    *&v23[4] = "operator[]";
    *&v23[12] = 1024;
    *&v23[14] = 789;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_27:
    v22 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v23 = 136315906;
    *&v23[4] = "operator[]";
    *&v23[12] = 1024;
    *&v23[14] = 789;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  v11 = *(a1 + 64) + 32 * a2;
  v12 = *v11;
  if (!*v11)
  {
    v12 = *(v11 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::colorGamut4FValue(v12, a3, v20);
  if (v20[0] == 1)
  {
    *a4 = *&v20[4];
    v13 = v21;
LABEL_10:
    *a5 = v13;
    return 1;
  }

  v10 = *(a1 + 48);
  if (v10 <= a2)
  {
    goto LABEL_27;
  }

  v15 = *(a1 + 64) + 32 * a2;
  v16 = *v15;
  if (!*v15)
  {
    v16 = *(v15 + 8);
  }

  v17 = re::ecs2::SerializableMaterialParameterBlock::valueType(v16, a3);
  if (v17 != 21 && v17 != 0)
  {
    return 0;
  }

  v10 = *(a1 + 88);
  if (v10 <= a2)
  {
LABEL_28:
    v22 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v23 = 136315906;
    *&v23[4] = "operator[]";
    *&v23[12] = 1024;
    *&v23[14] = 789;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v19 = *(a1 + 104);
  result = *(v19 + 8 * a2);
  if (!result)
  {
    return result;
  }

  re::MaterialParameterBlock::handle(result, a3, &v28);
  if ((BYTE12(v28) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v28, 21))
  {
    re::MaterialParameterBlock::colorGamut4FValue(*(v19 + 8 * a2), &v28, v23);
    *a4 = *v23;
    v13 = v23[16];
    goto LABEL_10;
  }

  return 0;
}

uint64_t REMaterialParameterBlockArrayComponentSetInt4AtIndex(uint64_t a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, a3, 6, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetInt4WithHandleAtIndex(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 48) <= a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(a1 + 64) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v14, v8);
    ++*(v7 + 16);
    v9 = v14.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v14.n128_i64[0]);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (*(a1 + 48) <= a2)
  {
LABEL_14:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 64) + 32 * a2;
  ++*(v10 + 16);
  v11 = *v10;
  v14 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v11, (a3 + 24), 6, &v14);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetInt4AtIndex(uint64_t a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 48) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 88) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 48);
  if (v8 <= a2)
  {
    v14 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 64) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::int4Value(v10, a3, &v14);
  if (v14 == 1)
  {
    v11 = v15;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 88);
  if (v8 <= a2)
  {
LABEL_19:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 104);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(result, a3, &v25);
    if ((BYTE12(v25) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v25, 6))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v25);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}