BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::ReshuffleIndicesAndUpdateConstraints(void *a1, uint64_t *a2, void *a3)
{
  memset(v34, 0, sizeof(v34));
  v7 = *a2;
  v6 = a2[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
  std::vector<std::vector<unsigned long>>::resize(v34, v8);
  if (v6 == v7)
  {
    std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::resize(a3, v8);
    v9 = 1;
  }

  else
  {
    v33 = a3;
    v9 = 0;
    v10 = 0;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    while (1)
    {
      v12 = (*a2 + 24 * v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = (v14 - *v12) >> 3;
      v16 = (v34[0] + 24 * v10);
      std::vector<float>::resize(v16, v15);
      if (v14 != v13)
      {
        break;
      }

LABEL_12:
      v9 = ++v10 >= v8;
      if (v10 == v11)
      {
        std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::resize(v33, v8);
        v24 = 0;
        v9 = 1;
        do
        {
          v25 = (*(v34[0] + 24 * v24 + 8) - *(v34[0] + 24 * v24)) >> 2;
          v26 = (*v33 + 24 * v24);
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v26, v25);
          v27 = v25 - 1;
          if (v27)
          {
            v28 = 0;
            do
            {
              v29 = v28 + 1;
              v30 = *(*(v34[0] + 24 * v24) + 4 * v28);
              *(*v26 + 8 * v28) = v30;
              geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddConstraintToSet(v30, a1 + 48);
              v28 = v29;
            }

            while (v27 != v29);
          }

          v31 = *(*(v34[0] + 24 * v24) + 4 * v27) | (**(v34[0] + 24 * v24) << 32);
          *(*v26 + 8 * v27) = v31;
          geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddConstraintToSet(v31, a1 + 48);
          ++v24;
        }

        while (v24 != v11);
        goto LABEL_20;
      }
    }

    v17 = 0;
    v18 = *(*a2 + 24 * v10);
    v19 = a1[8];
    v20 = (a1[9] - v19) >> 2;
    if (v15 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v15;
    }

    while (1)
    {
      v22 = *(v18 + 8 * v17);
      if (v20 <= v22)
      {
        break;
      }

      v23 = *(v19 + 4 * v22);
      if (v23 == -1)
      {
        break;
      }

      v16->__begin_[v17++] = v23;
      if (v21 == v17)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_20:
  v35 = v34;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v35);
  return v9;
}

void std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<geo::math::Matrix<unsigned int,2,1>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<geo::math::Matrix<unsigned int,2,1>>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<geo::math::Matrix<unsigned int,2,1>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddConstraintToSet(uint64_t a1, void *a2)
{
  v4 = a1;
  if (a1 < HIDWORD(a1))
  {
    return std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,2,1>,geo::math::Matrix<unsigned int,2,1> const&>(a2, &v4);
  }

  v3[0] = HIDWORD(a1);
  v3[1] = a1;
  return std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,2,1>,geo::math::Matrix<unsigned int,2,1> const&>(a2, v3);
}

void *std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,2,1>,geo::math::Matrix<unsigned int,2,1> const&>(void *a1, _DWORD *a2)
{
  v2 = (a2[1] ^ *a2) + 2654435769;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = (a2[1] ^ *a2) + 2654435769;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 + 0x1FFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned long>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeConstraint(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, uint64_t a3)
{
  v6 = *(*(this + 25) + 24 * a2);
  v7 = *(*(this + 25) + 24 * a2 + 8);
  v8 = v7 - v6;
  if (v7 != v6)
  {
    v9 = 0;
    v10 = v8 >> 2;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    while (*(v6 + 4 * v9) != a3)
    {
      if (v10 == ++v9)
      {
        goto LABEL_8;
      }
    }

    if (v9 != -1)
    {
      return 1;
    }
  }

LABEL_8:
  result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::ApplyConstraint(this, a2, a3);
  if (result)
  {
    result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::AdjustByConstraint(this, a2, a3);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::ApplyConstraint(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 3) - *(this + 2);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = v6 >> 3;
    v10 = 0xAAAAAAAAAAAAAAABLL * v9;
    if (0xAAAAAAAAAAAAAAABLL * v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * v9;
    }

    v20 = v11;
    v12 = *(this + 25);
    do
    {
      v13 = *(v12 + 24 * v8);
      if (*(v12 + 24 * v8 + 8) != v13)
      {
        v14 = 0;
        v15 = v8 << 32;
        do
        {
          v16 = *(v13 + 4 * v14);
          if (geo::math::ConstrainedDelaunayTriangulationMesherDetails::IsIntersect(this, v8, *(v13 + 4 * v14), a2, a3))
          {
            v17 = v15 | v16;
            v18 = __ROR8__(v15 | v16, 32);
            if (v16 > v8)
            {
              v17 = v18;
            }

            v21 = v17;
            if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 48, &v21))
            {
              return v7;
            }

            geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v8, v16);
          }

          else
          {
            ++v14;
          }

          v12 = *(this + 25);
          v13 = *(v12 + 24 * v8);
        }

        while (v14 < (*(v12 + 24 * v8 + 8) - v13) >> 2);
      }

      v7 = ++v8 >= v10;
    }

    while (v8 != v20);
  }

  else
  {
    v7 = 1;
  }

  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(this, a2, a3);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeDirectional(this, a3, a2);
  return v7;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::AdjustByConstraint(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  ConstrainedLeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, a2, a3);
  ConstrainedRightCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v4, v3);
  result = 0;
  if (ConstrainedLeftCandidate != -1 && ConstrainedRightCandidate != -1)
  {
    v9 = 0;
    v10 = v3;
    v11 = v4;
    while (1)
    {
      v12 = ConstrainedRightCandidate == v10 && ConstrainedLeftCandidate == v11;
      if (v12 || ConstrainedLeftCandidate == ConstrainedRightCandidate)
      {
        break;
      }

      if (++v9 >= *this)
      {
        return 0;
      }

      v14 = this;
      if (ConstrainedLeftCandidate == v11)
      {
        started = geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(this, ConstrainedLeftCandidate, ConstrainedRightCandidate, v10, v10);
      }

      else
      {
        if (ConstrainedRightCandidate != v10)
        {
          if (geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, v11, v10, ConstrainedLeftCandidate, ConstrainedRightCandidate) == 2)
          {
            result = geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(this, v11, ConstrainedRightCandidate, v10, v10);
            if (!result)
            {
              return result;
            }

            goto LABEL_21;
          }

          v14 = this;
        }

        started = geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgeNextToStartPreToEnd(v14, ConstrainedLeftCandidate, v10, v11, v11);
        ConstrainedRightCandidate = v10;
      }

      v11 = ConstrainedLeftCandidate;
      if ((started & 1) == 0)
      {
        return 0;
      }

LABEL_21:
      ConstrainedLeftCandidate = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, v11, ConstrainedRightCandidate);
      v16 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v11, ConstrainedRightCandidate);
      result = 0;
      if (ConstrainedLeftCandidate != -1)
      {
        v10 = ConstrainedRightCandidate;
        ConstrainedRightCandidate = v16;
        if (v16 != -1)
        {
          continue;
        }
      }

      return result;
    }

    v17 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, v3, v4);
    v18 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v3, v4);
    result = 0;
    if (v18 != -1 && v17 != -1)
    {
      v19 = 0;
      while (1)
      {
        v21 = v18 == v4 && v17 == v3 || v18 == v17;
        v22 = !v21;
        if (v21)
        {
          return v22 ^ 1u;
        }

        if (++v19 >= *this)
        {
          return v22 ^ 1u;
        }

        if (v18 == v4)
        {
          break;
        }

        if (v17 == v3 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, v4, v18, v3, v17) != 2)
        {
          v23 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgePreToStartNextToEnd(this, v18, v3, v4, v4);
          v17 = v3;
LABEL_46:
          v4 = v18;
          if ((v23 & 1) == 0)
          {
            return v22 ^ 1u;
          }

          goto LABEL_47;
        }

        if (!geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgePreToStartNextToEnd(this, v4, v17, v3, v3))
        {
          return v22 ^ 1u;
        }

LABEL_47:
        v24 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(this, v17, v4);
        v25 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(this, v17, v4);
        if (v25 != -1)
        {
          v18 = v25;
          v3 = v17;
          v17 = v24;
          if (v24 != -1)
          {
            continue;
          }
        }

        return v22 ^ 1u;
      }

      v23 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgePreToStartNextToEnd(this, v18, v17, v3, v3);
      goto LABEL_46;
    }
  }

  return result;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::IsIntersect(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  result = 0;
  if (a3 != a5 && a3 != a4 && a2 != a4 && a2 != a5)
  {
    v11 = *(this + 2);
    v12 = (v11 + 24 * a2);
    v13 = v11 + 24 * a4;
    if (*v12 == *v13 && *(v12 + 1) == *(v13 + 8) && *(v12 + 2) == *(v13 + 16))
    {
      return 0;
    }

    v16 = v11 + 24 * a5;
    v17 = *v12 == *v16 && *(v12 + 1) == *(v16 + 8);
    if (v17 && *(v12 + 2) == *(v16 + 16))
    {
      return 0;
    }

    v19 = (v11 + 24 * a3);
    v20 = *v19 == *v13 && *(v19 + 1) == *(v13 + 8);
    if (v20 && *(v19 + 2) == *(v13 + 16))
    {
      return 0;
    }

    v22 = *v19 == *v16 && *(v19 + 1) == *(v16 + 8);
    if (v22 && *(v19 + 2) == *(v16 + 16))
    {
      return 0;
    }

    else
    {
      v53 = v8;
      v54 = v7;
      v55 = v5;
      v56 = v6;
      v24 = 0;
      v25 = *(v13 + 8);
      v26 = *(v16 + 8);
      v27 = *v12;
      v28 = v12[1];
      v29 = *v16 - *v13;
      v30 = v29 * (v28 - v25) - (v26 - v25) * (*v12 - *v13);
      v31 = *v19;
      v32 = v19[1];
      v33 = v29 * (v32 - v25) - (v26 - v25) * (*v19 - *v13);
      v34 = (*v19 - v27) * (v25 - v28) - (v32 - v28) * (*v13 - v27);
      v35 = (*v19 - v27) * (v26 - v28) - (v32 - v28) * (*v16 - v27);
      v49 = 0.0;
      v50 = 0.0;
      v51 = 0uLL;
      v52 = 0;
      do
      {
        *(&v51 + v24 * 8) = v12[v24] - v19[v24];
        ++v24;
      }

      while (v24 != 3);
      v36 = 0;
      v37 = 0.0;
      do
      {
        v37 = v37 + *(&v51 + v36) * *(&v51 + v36);
        v36 += 8;
      }

      while (v36 != 24);
      if (v30 >= 0.0)
      {
        v38 = v30 <= 0.0;
      }

      else
      {
        v38 = 2;
      }

      if (v33 >= 0.0)
      {
        v39 = v33 <= 0.0;
      }

      else
      {
        v39 = 2;
      }

      if (v34 >= 0.0)
      {
        v40 = v34 <= 0.0;
      }

      else
      {
        v40 = 2;
      }

      if (v35 >= 0.0)
      {
        v41 = v35 <= 0.0;
      }

      else
      {
        v41 = 2;
      }

      if (sqrt(v37) < 0.00000001)
      {
        return 0;
      }

      v42 = (v28 - v32) / (v27 - v31);
      v43 = v28 < v32;
      v44 = -1.79769313e308;
      if (v43)
      {
        v44 = 1.79769313e308;
      }

      if (v27 == v31)
      {
        v45 = v44;
      }

      else
      {
        v45 = v42;
      }

      v46 = v28 - v45 * v27;
      if (fabs(v45) == 1.79769313e308)
      {
        v47 = 1.79769313e308;
      }

      else
      {
        v47 = v46;
      }

      result = geo::math::FindSlopeIntercept<double,3ul>(v13, v16, &v50, &v49);
      if (result)
      {
        if (vabdd_f64(v45, v50) < 0.000001 && vabdd_f64(v47, v49) < 0.000001)
        {
          return 0;
        }

        return v38 != v39 && v40 != v41;
      }
    }
  }

  return result;
}

BOOL geo::math::FindSlopeIntercept<double,3ul>(double *a1, double *a2, double *a3, double *a4)
{
  v4 = 0;
  v18 = 0;
  do
  {
    *(&v17 + v4 * 8) = a1[v4] - a2[v4];
    ++v4;
  }

  while (v4 != 3);
  v5 = 0;
  v6 = 0.0;
  do
  {
    v6 = v6 + *(&v17 + v5) * *(&v17 + v5);
    v5 += 8;
  }

  while (v5 != 24);
  v7 = sqrt(v6);
  if (v7 >= 0.00000001)
  {
    v8 = a1[1];
    v9 = a2[1];
    v10 = (v8 - v9) / (*a1 - *a2);
    v11 = v8 < v9;
    v12 = -1.79769313e308;
    if (v11)
    {
      v12 = 1.79769313e308;
    }

    if (*a1 == *a2)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    *a3 = v13;
    v14 = fabs(v13);
    v15 = a1[1] - v13 * *a1;
    if (v14 == 1.79769313e308)
    {
      v15 = 1.79769313e308;
    }

    *a4 = v15;
  }

  return v7 >= 0.00000001;
}

void *std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = (a2[1] ^ *a2) + 2654435769;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = (a2[1] ^ *a2) + 2654435769;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 + 0x1FFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedLeftCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, uint64_t a2, unsigned int a3)
{
  NextEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetNextEdge(this, a2, a3);
  v7 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetNextEdge(this, a2, NextEdge);
  v8 = 0xFFFFFFFFLL;
  if (NextEdge != -1 && v7 != -1 && *this)
  {
    v9 = 0;
    v8 = NextEdge;
    while (1)
    {
      v10 = *(this + 2);
      v11 = (v10 + 24 * a2);
      if ((*(v10 + 24 * a3) - *v11) * (*(v10 + 24 * v8 + 8) - v11[1]) - (*(v10 + 24 * a3 + 8) - v11[1]) * (*(v10 + 24 * v8) - *v11) <= 0.0)
      {
        break;
      }

      v12 = v7;
      v13 = (a2 << 32) | v8;
      v14 = __ROR8__(v13, 32);
      if (v8 > a2)
      {
        v13 = v14;
      }

      v18 = v13;
      if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 48, &v18))
      {
        return v8;
      }

      v15 = *(this + 2);
      v16 = (v15 + 24 * a2);
      if ((*(v15 + 24 * a3) - *v16) * (*(v15 + 24 * v12 + 8) - v16[1]) - (*(v15 + 24 * a3 + 8) - v16[1]) * (*(v15 + 24 * v12) - *v16) <= 0.0 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, a2, a3, v8, v12) != 2)
      {
        return v8;
      }

      geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, a2, v8);
      v7 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetNextEdge(this, a2, v12);
      ++v9;
      v8 = v12;
      if (v9 >= *this)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return a2;
  }

  return v8;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::FindConstrainedRightCandidate(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, unsigned int a2, uint64_t a3)
{
  PreviousEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, a3, a2);
  v7 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, a3, PreviousEdge);
  v8 = 0xFFFFFFFFLL;
  if (PreviousEdge != -1 && v7 != -1 && *this)
  {
    v9 = 0;
    v8 = PreviousEdge;
    while (1)
    {
      v10 = *(this + 2);
      v11 = (v10 + 24 * a3);
      if ((*(v10 + 24 * a2) - *v11) * (*(v10 + 24 * v8 + 8) - v11[1]) - (*(v10 + 24 * a2 + 8) - v11[1]) * (*(v10 + 24 * v8) - *v11) >= 0.0)
      {
        break;
      }

      v12 = v7;
      v13 = (a3 << 32) | v8;
      v14 = __ROR8__(v13, 32);
      if (v8 > a3)
      {
        v13 = v14;
      }

      v18 = v13;
      if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 48, &v18))
      {
        return v8;
      }

      v15 = *(this + 2);
      v16 = (v15 + 24 * a3);
      if ((*(v15 + 24 * a2) - *v16) * (*(v15 + 24 * v12 + 8) - v16[1]) - (*(v15 + 24 * a2 + 8) - v16[1]) * (*(v15 + 24 * v12) - *v16) >= 0.0 || geo::math::ConstrainedDelaunayTriangulationMesherDetails::InCircle(this, a2, a3, v8, v12) != 2)
      {
        return v8;
      }

      if (geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, a3, v8))
      {
        v7 = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetPreviousEdge(this, a3, v12);
        if (v7 != -1)
        {
          ++v9;
          v8 = v12;
          if (v9 < *this)
          {
            continue;
          }
        }
      }

      return 0xFFFFFFFFLL;
    }

    return a3;
  }

  return v8;
}

uint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::AddEdgePreToStartNextToEnd(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, std::vector<unsigned int>::value_type a2, std::vector<unsigned int>::value_type a3, int a4, int a5)
{
  __x = a3;
  v27 = a2;
  v6 = (*(this + 25) + 24 * a2);
  begin = v6->__begin_;
  end = v6->__end_;
  v9 = end - v6->__begin_;
  if (end == v6->__begin_)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = v9 >> 2;
  if (v13 <= 1)
  {
    v13 = 1;
  }

  v14 = -v13;
  while (begin[v12] != a4)
  {
    ++v12;
    if (v14 == --v11)
    {
      return 0;
    }
  }

  if (v11 == 1)
  {
    return 0;
  }

  v15.__i_ = (begin + ((v12 * 4) & 0x3FFFFFFFCLL));
  std::vector<unsigned int>::insert(v6, v15, &__x);
  v16 = (*(this + 25) + 24 * __x);
  v17 = v16->__begin_;
  v18 = v16->__end_;
  v19 = v18 - v16->__begin_;
  if (v18 == v16->__begin_)
  {
    return 0;
  }

  v20 = 0;
  v21 = 0;
  v22 = v19 >> 2;
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v23 = -v22;
  while (v17[v21] != a5)
  {
    ++v21;
    if (v23 == --v20)
    {
      return 0;
    }
  }

  if (v20 == 1)
  {
    return 0;
  }

  v25.__i_ = (v17 + ((v21 * 4) & 0x3FFFFFFFCLL) + 4);
  std::vector<unsigned int>::insert(v16, v25, &v27);
  return 1;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearSpaceByConstraints(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, void *a2)
{
  v3 = *a2;
  v2 = a2[1];
  __src = 0;
  v69 = 0;
  v70 = 0;
  v4 = v2 - v3;
  if (!v4)
  {
    LOBYTE(v9) = 1;
    return v9;
  }

  v5 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  v63 = v11;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v62 = v11;
  while (1)
  {
    v12 = *(*v5 + 24 * v10);
    v13 = *(*v5 + 24 * v10 + 8);
    v14 = v13 - v12;
    if (v13 != v12)
    {
      break;
    }

LABEL_57:
    v9 = ++v10 >= v63;
    if (v10 == v62)
    {
      goto LABEL_62;
    }
  }

  v15 = 0;
  if ((v14 >> 3) <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v14 >> 3;
  }

  while (2)
  {
    v17 = *(*v5 + 24 * v10);
    v18 = (v17 + 8 * v15);
    v19 = *v18;
    v20 = (v17 + v14);
    if (v15)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    v22 = (*(this + 25) + 24 * v19);
    v23 = *v22;
    v24 = v22[1] - *v22;
    if (v24)
    {
      v25 = 0;
      v26 = *(v21 - 2);
      v27 = v24 >> 2;
      v28 = (v24 >> 2) <= 1 ? 1 : v24 >> 2;
      while (*(v23 + 4 * v25) != HIDWORD(v19))
      {
        if (v28 == ++v25)
        {
          LODWORD(v25) = -1;
          break;
        }
      }

      v29 = 0;
      do
      {
        if (*(v23 + 4 * v29) == HIDWORD(v19))
        {
          LODWORD(v25) = v29;
        }

        ++v29;
      }

      while (v28 != v29);
      if (v25 != -1)
      {
        v30 = 0;
        while (*(v23 + 4 * v30) != v26)
        {
          if (v28 == ++v30)
          {
            goto LABEL_59;
          }
        }

        if (v30 == -1)
        {
LABEL_59:
          if (*(this + 8) != 1)
          {
            goto LABEL_62;
          }

          v54 = MEMORY[0x277D82670];
          v55 = "ClearSpaceByConstraints failed: cannot locate previous edge!";
          v56 = 60;
          goto LABEL_61;
        }

        v64 = v16;
        v65 = v15;
        v66 = v14;
        v67 = v10;
        v31 = v24 >> 2;
        if (v25 >= v30)
        {
          LODWORD(v31) = 0;
        }

        v32 = (v31 + v25);
        v69 = v8;
        if (v30 + 1 < v32)
        {
          v60 = v5;
          v61 = v9;
          v33 = v19 << 32;
          v34 = (v30 + 1);
          do
          {
            v35 = v34 % v27;
            v36 = *(*(*(this + 25) + 24 * v19) + 4 * (v34 % v27));
            v37 = __ROR8__(v33 | v36, 32);
            if (v36 <= v19)
            {
              v38 = (v33 | v36);
            }

            else
            {
              v38 = v37;
            }

            v71.__locale_ = v38;
            if (!std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 48, &v71))
            {
              v39 = *(*(this + 25) + 24 * v19);
              v40 = v69;
              if (v69 >= v70)
              {
                v42 = __src;
                v43 = v69 - __src;
                v44 = (v69 - __src) >> 2;
                v45 = v44 + 1;
                if ((v44 + 1) >> 62)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v46 = v70 - __src;
                if ((v70 - __src) >> 1 > v45)
                {
                  v45 = v46 >> 1;
                }

                v47 = v46 >= 0x7FFFFFFFFFFFFFFCLL;
                v48 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v47)
                {
                  v48 = v45;
                }

                if (v48)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&__src, v48);
                }

                v49 = (4 * v44);
                v50 = *(v39 + 4 * v35);
                v51 = &v49[-((v69 - __src) >> 2)];
                *v49 = v50;
                v41 = (v49 + 1);
                memcpy(v51, v42, v43);
                v52 = __src;
                __src = v51;
                v69 = v41;
                v70 = 0;
                if (v52)
                {
                  operator delete(v52);
                }
              }

              else
              {
                *v69 = *(v39 + 4 * v35);
                v41 = v40 + 4;
              }

              v33 = v19 << 32;
              v69 = v41;
            }

            ++v34;
          }

          while (v32 != v34);
          v7 = __src;
          v8 = v69;
          v9 = v61;
          v5 = v60;
        }

        if (v8 == v7)
        {
          v14 = v66;
          v10 = v67;
          v16 = v64;
        }

        else
        {
          v53 = 0;
          v14 = v66;
          v10 = v67;
          v16 = v64;
          do
          {
            geo::math::ConstrainedDelaunayTriangulationMesherDetails::RemoveEdge(this, v19, *&v7[4 * v53++]);
            v7 = __src;
          }

          while (v53 < (v69 - __src) >> 2);
        }

        v15 = v65 + 1;
        v8 = v7;
        if (v65 + 1 != v16)
        {
          continue;
        }

        goto LABEL_57;
      }
    }

    break;
  }

  if (*(this + 8) == 1)
  {
    v54 = MEMORY[0x277D82670];
    v55 = "ClearSpaceByConstraints failed: cannot locate current edge!";
    v56 = 59;
LABEL_61:
    v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, v55, v56);
    std::ios_base::getloc((v57 + *(*v57 - 24)));
    v58 = std::locale::use_facet(&v71, MEMORY[0x277D82680]);
    (v58->__vftable[2].~facet_0)(v58, 10);
    std::locale::~locale(&v71);
    std::ostream::put();
    std::ostream::flush();
    v7 = __src;
  }

LABEL_62:
  if (v7)
  {
    v69 = v7;
    operator delete(v7);
  }

  return v9;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this, void *a2, uint64_t a3)
{
  v4 = *(this + 25);
  v5 = *(this + 26) - v4;
  if (v5)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v85 = v7;
    do
    {
      if (*(v4 + 24 * v6 + 8) - *(v4 + 24 * v6) >= 5uLL)
      {
        v8 = *(v4 + 24 * v6);
        if (*(v4 + 24 * v6 + 8) != v8)
        {
          v9 = 0;
          v86 = 24 * v6;
          v84 = v6 << 32;
          do
          {
            v10 = *(v8 + 4 * v9);
            NextEdge = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetNextEdge(this, v6, *(v8 + 4 * v9));
            v12 = *(this + 2);
            v13 = (v12 + 24 * v10);
            v14 = (v12 + 24 * NextEdge);
            v4 = *(this + 25);
            if ((*v13 - *(v12 + 24 * v6)) * (v14[1] - *(v12 + 24 * v6 + 8)) - (v13[1] - *(v12 + 24 * v6 + 8)) * (*v14 - *(v12 + 24 * v6)) > 0.0)
            {
              v15 = NextEdge;
              v16 = NextEdge;
              v17 = (v4 + 24 * NextEdge);
              v18 = *v17;
              v19 = v17[1];
              v20 = v19 - *v17;
              if (v19 != *v17)
              {
                v21 = 0;
                v22 = v10;
                v23 = v20 >> 2;
                if (v23 <= 1)
                {
                  v23 = 1;
                }

                while (*(v18 + 4 * v21) != v10)
                {
                  if (v23 == ++v21)
                  {
                    goto LABEL_108;
                  }
                }

                if (v21 != -1)
                {
                  v24 = 0;
                  v93 = 0uLL;
                  v94 = 0;
                  do
                  {
                    *(&v93 + v24 * 8) = *(v12 + v86 + v24 * 8) - v13[v24];
                    ++v24;
                  }

                  while (v24 != 3);
                  v25 = 0;
                  v91 = v93;
                  v92 = v94;
                  v26 = 0.0;
                  do
                  {
                    v26 = v26 + *(&v91 + v25) * *(&v91 + v25);
                    v25 += 8;
                  }

                  while (v25 != 24);
                  if (sqrt(v26) >= 0.00000001)
                  {
                    v27 = 0;
                    v93 = 0uLL;
                    v94 = 0;
                    do
                    {
                      *(&v93 + v27 * 8) = v13[v27] - v14[v27];
                      ++v27;
                    }

                    while (v27 != 3);
                    v28 = 0;
                    v89 = v93;
                    v90 = v94;
                    v29 = 0.0;
                    do
                    {
                      v29 = v29 + *(&v89 + v28) * *(&v89 + v28);
                      v28 += 8;
                    }

                    while (v28 != 24);
                    if (sqrt(v29) >= 0.00000001)
                    {
                      v30 = 0;
                      v93 = 0uLL;
                      v31 = v12 + v86;
                      v94 = 0;
                      do
                      {
                        *(&v93 + v30 * 8) = v14[v30] - *(v31 + v30 * 8);
                        ++v30;
                      }

                      while (v30 != 3);
                      v32 = 0;
                      v87 = v93;
                      v88 = v94;
                      v33 = 0.0;
                      do
                      {
                        v33 = v33 + *(&v87 + v32) * *(&v87 + v32);
                        v32 += 8;
                      }

                      while (v32 != 24);
                      if (sqrt(v33) >= 0.00000001)
                      {
                        DWORD2(v93) = 0;
                        *&v93 = 0;
                        if (v10 <= v6 || NextEdge <= v6)
                        {
                          if (v10 >= v6 || v10 >= NextEdge)
                          {
                            LODWORD(v93) = NextEdge;
                            v34 = v6;
                          }

                          else
                          {
                            LODWORD(v93) = v10;
                            v34 = NextEdge;
                            v22 = v6;
                          }
                        }

                        else
                        {
                          LODWORD(v93) = v6;
                          v34 = v10;
                          v22 = NextEdge;
                        }

                        *(&v93 + 4) = __PAIR64__(v22, v34);
                        v35 = v84 | v10;
                        v36 = __ROR8__(v84 | v10, 32);
                        if (v10 > v6)
                        {
                          v35 = v36;
                        }

                        *&v91 = v35;
                        if (!std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 48, &v91))
                        {
                          goto LABEL_93;
                        }

                        v37 = v16 | (v10 << 32);
                        v38 = __ROR8__(v37, 32);
                        if (v10 < v15)
                        {
                          v37 = v38;
                        }

                        *&v91 = v37;
                        if (!std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 48, &v91))
                        {
                          goto LABEL_93;
                        }

                        v39 = v84 | v16;
                        v40 = __ROR8__(v84 | v16, 32);
                        if (v15 > v6)
                        {
                          v39 = v40;
                        }

                        *&v91 = v39;
                        if (std::__hash_table<geo::math::Matrix<unsigned int,2,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,2,1>>,std::equal_to<geo::math::Matrix<unsigned int,2,1>>,std::allocator<geo::math::Matrix<unsigned int,2,1>>>::find<geo::math::Matrix<unsigned int,2,1>>(this + 48, &v91) && (v41 = *(this + 45), (v42 = *(this + 46) - v41) != 0))
                        {
                          v43 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 3);
                          if (v43 <= 1)
                          {
                            v43 = 1;
                          }

                          v44 = (v41 + 8);
                          while (1)
                          {
                            v45 = *(v44 - 1);
                            if (*v44 - v45 == 24)
                            {
                              v46 = *v45;
                              v47 = *v45 == v15 || v46 == v6;
                              if (v47 || v46 == v10)
                              {
                                v49 = v45[2];
                                v50 = v49 == v15 || v49 == v6;
                                if (v50 || v49 == v10)
                                {
                                  v52 = v45[4];
                                  v53 = v52 == v15 || v52 == v6;
                                  if (v53 || v52 == v10)
                                  {
                                    DWORD2(v91) = 0;
                                    *&v91 = 0;
                                    if (v46 >= v49 || v46 >= v52)
                                    {
                                      if (v49 >= v46 || v49 >= v52)
                                      {
                                        LODWORD(v91) = v52;
                                        v57 = v46;
                                        v52 = v49;
                                      }

                                      else
                                      {
                                        LODWORD(v91) = v49;
                                        v57 = v52;
                                        v52 = v46;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v91) = v46;
                                      v57 = v49;
                                    }

                                    DWORD1(v91) = v57;
                                    if (v93 != v91 || DWORD2(v93) != v52)
                                    {
                                      break;
                                    }
                                  }
                                }
                              }
                            }

                            v44 += 3;
                            if (!--v43)
                            {
                              goto LABEL_93;
                            }
                          }
                        }

                        else
                        {
LABEL_93:
                          if (!std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::find<geo::math::Matrix<unsigned int,3,1>>(this + 31, &v93))
                          {
                            std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,3,1>,geo::math::Matrix<unsigned int,3,1> const&>(this + 31, &v93);
                            v60 = *(this + 29);
                            v59 = *(this + 30);
                            if (v60 >= v59)
                            {
                              v63 = *(this + 28);
                              v64 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v63) >> 2);
                              v65 = v64 + 1;
                              if (v64 + 1 > 0x1555555555555555)
                              {
                                std::__throw_bad_array_new_length[abi:nn200100]();
                              }

                              v66 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v63) >> 2);
                              if (2 * v66 > v65)
                              {
                                v65 = 2 * v66;
                              }

                              if (v66 >= 0xAAAAAAAAAAAAAAALL)
                              {
                                v67 = 0x1555555555555555;
                              }

                              else
                              {
                                v67 = v65;
                              }

                              if (v67)
                              {
                                std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(this + 224, v67);
                              }

                              v68 = 12 * v64;
                              v69 = v93;
                              *(v68 + 8) = DWORD2(v93);
                              *v68 = v69;
                              v62 = 12 * v64 + 12;
                              v70 = *(this + 28);
                              v71 = *(this + 29) - v70;
                              v72 = v68 - v71;
                              memcpy((v68 - v71), v70, v71);
                              v73 = *(this + 28);
                              *(this + 28) = v72;
                              *(this + 29) = v62;
                              *(this + 30) = 0;
                              if (v73)
                              {
                                operator delete(v73);
                              }
                            }

                            else
                            {
                              v61 = v93;
                              *(v60 + 8) = DWORD2(v93);
                              *v60 = v61;
                              v62 = v60 + 12;
                            }

                            *(this + 29) = v62;
                          }
                        }

                        v4 = *(this + 25);
                      }
                    }
                  }
                }
              }
            }

LABEL_108:
            ++v9;
            v8 = *(v4 + 24 * v6);
          }

          while (v9 < (*(v4 + 24 * v6 + 8) - v8) >> 2);
        }
      }

      ++v6;
    }

    while (v6 != v85);
  }

  if (*(this + 8))
  {
    v74 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "The generated mesh contains ", 28);
    v75 = MEMORY[0x25305E300](v74, 0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - *(this + 2)) >> 3));
    v76 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v75, " vertices, ", 11);
    EdgeCount = geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetEdgeCount(this);
    v78 = MEMORY[0x25305E300](v76, EdgeCount);
    v79 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v78, " edges, and ", 12);
    v80 = MEMORY[0x25305E300](v79, 0xAAAAAAAAAAAAAAABLL * ((*(this + 29) - *(this + 28)) >> 2));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v80, " triangles.\n", 12);
  }

  return geo::math::ConstrainedDelaunayTriangulationMesherDetails::RebaseMesh(this, a2, a3);
}

uint64_t geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *a2 && *(a2 + 16) == *(a2 + 24))
  {
    *(a1 + 24) = *(a1 + 16);
    *a1 = *a2;
  }

  else
  {
    if (a1 != a2)
    {
      std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>((a1 + 16), *(a2 + 16), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 3));
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v4 == v5)
    {
      v4 = 0;
      v5 = 0;
    }

    *a1 = v5;
    *(a1 + 8) = v4;
  }

  if (*(a2 + 48) != *(a2 + 40) && *(a2 + 56) == *(a2 + 64))
  {
    *(a1 + 64) = *(a1 + 56);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    if (a1 != a2)
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    }

    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
    if (v6 == v7)
    {
      v6 = 0;
      v7 = 0;
    }

    *(a1 + 40) = v7;
    *(a1 + 48) = v6;
  }

  if (*(a2 + 88) != *(a2 + 80) && *(a2 + 96) == *(a2 + 104))
  {
    *(a1 + 104) = *(a1 + 96);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    if (a1 != a2)
    {
      std::vector<geo::math::Matrix<unsigned int,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<unsigned int,3,1>*,geo::math::Matrix<unsigned int,3,1>*>((a1 + 96), *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 2));
    }

    v9 = *(a1 + 96);
    v8 = *(a1 + 104);
    if (v8 == v9)
    {
      v8 = 0;
      v9 = 0;
    }

    *(a1 + 80) = v9;
    *(a1 + 88) = v8;
  }

  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  if (*(a2 + 184) != *(a2 + 176) && *(a2 + 192) == *(a2 + 200))
  {
    *(a1 + 200) = *(a1 + 192);
    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    if (a1 != a2)
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a1 + 192), *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 2);
    }

    v13 = *(a1 + 192);
    v12 = *(a1 + 200);
    if (v12 == v13)
    {
      v12 = 0;
      v13 = 0;
    }

    *(a1 + 176) = v13;
    *(a1 + 184) = v12;
  }

  if (*(a2 + 224) != *(a2 + 216) && *(a2 + 232) == *(a2 + 240))
  {
    *(a1 + 240) = *(a1 + 232);
    *(a1 + 216) = *(a2 + 216);
  }

  else
  {
    if (a1 != a2)
    {
      std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>((a1 + 232), *(a2 + 232), *(a2 + 240), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 240) - *(a2 + 232)) >> 3));
    }

    v15 = *(a1 + 232);
    v14 = *(a1 + 240);
    if (v14 == v15)
    {
      v14 = 0;
      v15 = 0;
    }

    *(a1 + 216) = v15;
    *(a1 + 224) = v14;
  }

  if (*(a2 + 264) != *(a2 + 256) && *(a2 + 272) == *(a2 + 280))
  {
    *(a1 + 280) = *(a1 + 272);
    *(a1 + 256) = *(a2 + 256);
  }

  else
  {
    if (a1 != a2)
    {
      std::vector<std::array<geo::math::Matrix<double,3,1>,3ul>>::__assign_with_size[abi:nn200100]<std::array<geo::math::Matrix<double,3,1>,3ul>*,std::array<geo::math::Matrix<double,3,1>,3ul>*>((a1 + 272), *(a2 + 272), *(a2 + 280), 0x8E38E38E38E38E39 * ((*(a2 + 280) - *(a2 + 272)) >> 3));
    }

    v17 = *(a1 + 272);
    v16 = *(a1 + 280);
    if (v16 == v17)
    {
      v16 = 0;
      v17 = 0;
    }

    *(a1 + 256) = v17;
    *(a1 + 264) = v16;
  }

  if (*(a2 + 184) != *(a2 + 176) && *(a2 + 192) == *(a2 + 200))
  {
    *(a1 + 320) = *(a1 + 312);
    *(a1 + 296) = *(a2 + 296);
  }

  else
  {
    if (a1 != a2)
    {
      std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>((a1 + 312), *(a2 + 312), *(a2 + 320), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 320) - *(a2 + 312)) >> 3));
    }

    v19 = *(a1 + 312);
    v18 = *(a1 + 320);
    if (v18 == v19)
    {
      v18 = 0;
      v19 = 0;
    }

    *(a1 + 296) = v19;
    *(a1 + 304) = v18;
  }

  if (*(a2 + 344) != *(a2 + 336) && *(a2 + 352) == *(a2 + 360))
  {
    *(a1 + 360) = *(a1 + 352);
    *(a1 + 336) = *(a2 + 336);
  }

  else
  {
    if (a1 != a2)
    {
      std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>((a1 + 352), *(a2 + 352), *(a2 + 360), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 360) - *(a2 + 352)) >> 3));
    }

    v21 = *(a1 + 352);
    v20 = *(a1 + 360);
    if (v20 == v21)
    {
      v20 = 0;
      v21 = 0;
    }

    *(a1 + 336) = v21;
    *(a1 + 344) = v20;
  }

  v23 = *(a2 + 376);
  v22 = *(a2 + 384);
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = *(a1 + 384);
  *(a1 + 376) = v23;
  *(a1 + 384) = v22;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 392) = *(a2 + 392);
  return a1;
}

unint64_t geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetEdgeCount(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  v2 = *(this + 25);
  v1 = *(this + 26);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = (v2 + 8);
  do
  {
    v4 += (*v6 - *(v6 - 1)) >> 2;
    v6 += 3;
    --v5;
  }

  while (v5);
  return v4 >> 1;
}

BOOL geo::math::ConstrainedDelaunayTriangulationMesherDetails::RebaseMesh(void *a1, void *a2, uint64_t a3)
{
  a2[1] = *a2;
  v4 = a1[2];
  v3 = a1[3];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
  v6 = a1[6] - a1[5];
  if (v5 == v6 >> 2)
  {
    v54 = a1[6] - a1[5];
    v11 = a1[14];
    v10 = a1[15];
    memset_pattern16(&__b, &unk_2500D1280, 0x18uLL);
    std::vector<geo::math::Matrix<double,3,1>>::resize(a2, v5 + ((v10 - v11) >> 5), &__b);
    if (v3 != v4)
    {
      v12 = 0;
      v13 = 0;
      if (v5 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
      }

      do
      {
        v15 = (a1[2] + v12);
        v16 = *a2 + 24 * *(a1[5] + 4 * v13);
        v17 = *v15;
        *(v16 + 16) = *(v15 + 2);
        *v16 = v17;
        ++v13;
        v12 += 24;
      }

      while (v14 != v13);
    }

    v18 = a1[14];
    if (a1[15] != v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v18 + v19;
        v22 = *a2 + 24 * *v21;
        v23 = *(v21 + 8);
        *(v22 + 16) = *(v21 + 24);
        *v22 = v23;
        ++v20;
        v18 = a1[14];
        v19 += 32;
      }

      while (v20 < (a1[15] - v18) >> 5);
    }

    __b = 0uLL;
    v57 = 0;
    v25 = a1[36];
    v24 = a1[37];
    if (v24 != v25)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        if (*(v25 + v26 + 8) - *(v25 + v26) == 24)
        {
          std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](&__b, (v25 + v26));
          v25 = a1[36];
          v24 = a1[37];
        }

        ++v27;
        v26 += 24;
      }

      while (v27 < 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3));
    }

    v55 = v5;
    v28 = *a3;
    *(a3 + 8) = *a3;
    v29 = a1[28];
    v30 = a1[29];
    if (v30 != v29)
    {
      v31 = 0;
      do
      {
        v32 = (v29 + 12 * v31);
        v33 = a1[5];
        v34 = *(v33 + 4 * *v32);
        v35 = *(v33 + 4 * v32[1]);
        v36 = *(v33 + 4 * v32[2]);
        if (*(&__b + 1) == __b)
        {
LABEL_36:
          v44 = *(a3 + 16);
          if (v28 >= v44)
          {
            v45 = 0xAAAAAAAAAAAAAAABLL * (&v28[-*a3] >> 2);
            v46 = v45 + 1;
            if (v45 + 1 > 0x1555555555555555)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v47 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *a3) >> 2);
            if (2 * v47 > v46)
            {
              v46 = 2 * v47;
            }

            if (v47 >= 0xAAAAAAAAAAAAAAALL)
            {
              v48 = 0x1555555555555555;
            }

            else
            {
              v48 = v46;
            }

            if (v48)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a3, v48);
            }

            v49 = 12 * v45;
            *v49 = v34;
            *(v49 + 4) = v35;
            *(v49 + 8) = v36;
            v28 = (12 * v45 + 12);
            v50 = *(a3 + 8) - *a3;
            v51 = v49 - v50;
            memcpy((v49 - v50), *a3, v50);
            v52 = *a3;
            *a3 = v51;
            *(a3 + 8) = v28;
            *(a3 + 16) = 0;
            if (v52)
            {
              operator delete(v52);
            }
          }

          else
          {
            *v28 = v34;
            *(v28 + 1) = v35;
            *(v28 + 2) = v36;
            v28 += 12;
          }

          *(a3 + 8) = v28;
          v29 = a1[28];
          v30 = a1[29];
        }

        else
        {
          v37 = 0;
          v38 = 0xAAAAAAAAAAAAAAABLL * ((*(&__b + 1) - __b) >> 3);
          if (v38 <= 1)
          {
            v38 = 1;
          }

          while (1)
          {
            v39 = __b + 24 * v37;
            v40 = *v39;
            v41 = *(v39 + 8);
            if (v40 != v41)
            {
              v42 = v40;
              while (*v42 != v34)
              {
                if (++v42 == v41)
                {
                  goto LABEL_35;
                }
              }

              if (v42 != v41)
              {
                v43 = v40;
                while (*v43 != v35)
                {
                  if (++v43 == v41)
                  {
                    goto LABEL_35;
                  }
                }

                if (v43 != v41)
                {
                  while (*v40 != v36)
                  {
                    if (++v40 == v41)
                    {
                      goto LABEL_35;
                    }
                  }

                  if (v40 != v41)
                  {
                    break;
                  }
                }
              }
            }

LABEL_35:
            if (++v37 == v38)
            {
              goto LABEL_36;
            }
          }
        }

        ++v31;
      }

      while (v31 < 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 2));
    }

    if (a1 + 28 != a3)
    {
      std::vector<geo::math::Matrix<unsigned int,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<unsigned int,3,1>*,geo::math::Matrix<unsigned int,3,1>*>(a1 + 28, *a3, v28, 0xAAAAAAAAAAAAAAABLL * (&v28[-*a3] >> 2));
    }

    p_b = &__b;
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&p_b);
    v6 = v54;
    v5 = v55;
  }

  return v5 == v6 >> 2;
}

uint64_t *std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::find<geo::math::Matrix<unsigned int,3,1>>(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 + 0x1FFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == *a2 && *(result + 6) == a2[2])
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<geo::math::Matrix<unsigned int,3,1>,geo::math::VectorHasher<geo::math::Matrix<unsigned int,3,1>>,std::equal_to<geo::math::Matrix<unsigned int,3,1>>,std::allocator<geo::math::Matrix<unsigned int,3,1>>>::__emplace_unique_key_args<geo::math::Matrix<unsigned int,3,1>,geo::math::Matrix<unsigned int,3,1> const&>(void *a1, _DWORD *a2)
{
  v2 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = ((a2[1] ^ *a2) ^ a2[2]) + 2654435769;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = v2 & (*&v3 + 0x1FFFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || *(v7 + 6) != a2[2])
  {
    goto LABEL_21;
  }

  return v7;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<geo::math::Matrix<double,3,1>>::resize(void *a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__append(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<geo::math::Matrix<double,3,1>>::__append(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<std::bitset<64ul>,3ul>>>(a1, v10);
    }

    v14 = 24 * v7;
    v15 = 3 * a2;
    v16 = 24 * v7 + 24 * a2;
    v17 = 8 * v15;
    v18 = 24 * v7;
    do
    {
      v19 = *a3;
      *(v18 + 16) = *(a3 + 2);
      *v18 = v19;
      v18 += 24;
      v17 -= 24;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v14 - v20;
    memcpy((v14 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void *std::vector<geo::math::Matrix<unsigned int,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<unsigned int,3,1>*,geo::math::Matrix<unsigned int,3,1>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<geo::math::Matrix<unsigned int,3,1>>::__vallocate[abi:nn200100](v6, v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<geo::math::Matrix<unsigned int,3,1>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<unsigned int,3,1>>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::DerivedData::DerivedData(_OWORD *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  operator new();
}

void std::__shared_ptr_emplace<std::multimap<geo::math::UndirectedEdge<unsigned long>,unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286292F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25305E3F0);
}

uint64_t *std::__hash_table<geo::math::DerivedChannel,geo::EnumHashFunction,std::equal_to<geo::math::DerivedChannel>,std::allocator<geo::math::DerivedChannel>>::__emplace_unique_key_args<geo::math::DerivedChannel,geo::math::DerivedChannel const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::RangeMesh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 16) = *a2;
  *(a1 + 32) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = *a3;
  *(a1 + 72) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 96) = *a4;
  *(a1 + 112) = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a1 + 120) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 136) = xmmword_2500D1250;
  *(a1 + 152) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  operator new();
}

void geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitDerivedData(uint64_t a1, uint64_t a2)
{
  *(a1 + 168) = *(a2 + 240);
  v4 = *(a2 + 192);
  v5 = *(a2 + 208);
  *(a1 + 152) = *(a2 + 224);
  *(a1 + 136) = v5;
  *(a1 + 120) = v4;
  *(a1 + 392) = *(a2 + 288);
  geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitVertexFlags(a1, (a2 + 248));
  geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitVertexNormals(a1, a2);
  geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitTriangleNormals(a1, (a2 + 40));
  geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitVerticesUvw(a1, (a2 + 80));
  geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitTrianglesUvw(a1, (a2 + 120));
  geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitSharedEdgeOwnership(a1, (a2 + 160));

  geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitDerivedChannels(a1, a2 + 296);
}

__n128 geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitVertexFlags(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[1] == a2->n128_u64[0])
  {
    a1[11].n128_u64[0] = 0;
    a1[11].n128_u64[1] = 0;
  }

  else
  {
    v5 = a2[1].n128_u64[0];
    v6 = a2[1].n128_u64[1];
    v7 = a2 + 1;
    if (v5 == v6)
    {
      result = *a2;
      a1[11] = *a2;
    }

    else
    {
      v8 = a1 + 12;
      if (&a1[12] != v7)
      {
        std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(v8, v5, v6, (v6 - v5) >> 2);
      }

      v11 = a1[12].n128_u64[0];
      v10 = a1[12].n128_u64[1];
      if (v10 == v11)
      {
        v10 = 0;
        v11 = 0;
      }

      a1[11].n128_u64[0] = v11;
      a1[11].n128_u64[1] = v10;
    }
  }

  return result;
}

__n128 geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitVertexNormals(void *a1, __n128 *a2)
{
  if (a2->n128_u64[1] == a2->n128_u64[0])
  {
    a1[27] = 0;
    a1[28] = 0;
  }

  else
  {
    v5 = a2[1].n128_u64[0];
    v6 = a2[1].n128_u64[1];
    v7 = a2 + 1;
    if (v5 == v6)
    {
      result = *a2;
      *(a1 + 27) = *a2;
    }

    else
    {
      v8 = a1 + 29;
      if (a1 + 29 != v7)
      {
        std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v8, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
      }

      v11 = a1[29];
      v10 = a1[30];
      if (v10 == v11)
      {
        v10 = 0;
        v11 = 0;
      }

      a1[27] = v11;
      a1[28] = v10;
    }
  }

  return result;
}

__n128 geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitTriangleNormals(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[1] == a2->n128_u64[0])
  {
    a1[16].n128_u64[0] = 0;
    a1[16].n128_u64[1] = 0;
  }

  else
  {
    v5 = a2[1].n128_u64[0];
    v6 = a2[1].n128_u64[1];
    v7 = a2 + 1;
    if (v5 == v6)
    {
      result = *a2;
      a1[16] = *a2;
    }

    else
    {
      v8 = a1 + 17;
      if (&a1[17] != v7)
      {
        std::vector<std::array<geo::math::Matrix<double,3,1>,3ul>>::__assign_with_size[abi:nn200100]<std::array<geo::math::Matrix<double,3,1>,3ul>*,std::array<geo::math::Matrix<double,3,1>,3ul>*>(v8, v5, v6, 0x8E38E38E38E38E39 * ((v6 - v5) >> 3));
      }

      v11 = a1[17].n128_u64[0];
      v10 = a1[17].n128_u64[1];
      if (v10 == v11)
      {
        v10 = 0;
        v11 = 0;
      }

      a1[16].n128_u64[0] = v11;
      a1[16].n128_u64[1] = v10;
    }
  }

  return result;
}

__n128 geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitVerticesUvw(void *a1, __n128 *a2)
{
  if (a2->n128_u64[1] == a2->n128_u64[0])
  {
    a1[37] = 0;
    a1[38] = 0;
  }

  else
  {
    v5 = a2[1].n128_u64[0];
    v6 = a2[1].n128_u64[1];
    v7 = a2 + 1;
    if (v5 == v6)
    {
      result = *a2;
      *(a1 + 37) = *a2;
    }

    else
    {
      v8 = a1 + 39;
      if (a1 + 39 != v7)
      {
        std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v8, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
      }

      v11 = a1[39];
      v10 = a1[40];
      if (v10 == v11)
      {
        v10 = 0;
        v11 = 0;
      }

      a1[37] = v11;
      a1[38] = v10;
    }
  }

  return result;
}

__n128 geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitTrianglesUvw(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[1] == a2->n128_u64[0])
  {
    a1[21].n128_u64[0] = 0;
    a1[21].n128_u64[1] = 0;
  }

  else
  {
    v5 = a2[1].n128_u64[0];
    v6 = a2[1].n128_u64[1];
    v7 = a2 + 1;
    if (v5 == v6)
    {
      result = *a2;
      a1[21] = *a2;
    }

    else
    {
      v8 = a1 + 22;
      if (&a1[22] != v7)
      {
        std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>(v8, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
      }

      v11 = a1[22].n128_u64[0];
      v10 = a1[22].n128_u64[1];
      if (v10 == v11)
      {
        v10 = 0;
        v11 = 0;
      }

      a1[21].n128_u64[0] = v11;
      a1[21].n128_u64[1] = v10;
    }
  }

  return result;
}

void geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitSharedEdgeOwnership(uint64_t a1, void *a2)
{
  v3 = a2[2];
  if (v3 && *(v3 + 16))
  {
    v4 = a2[3];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 384);
    *(a1 + 376) = v3;
    *(a1 + 384) = v4;
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else if (a2[1] != *a2)
  {
    v7[0] = 0;
    v7[1] = 0;
    v6 = v7;
    std::__tree<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::__map_value_compare<geo::math::UndirectedEdge<unsigned long>,std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::less<geo::math::UndirectedEdge<unsigned long>>,true>,std::allocator<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>>>::__emplace_multi<std::pair<geo::math::UndirectedEdge<unsigned long>,unsigned int> const&>();
  }
}

void geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::InitDerivedChannels(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = (a1 + 280);
    do
    {
      v5 = *(v2 + 4);
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          if (!*(v4[12] + 16))
          {
            geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeEdgeOwnership(a1);
          }
        }

        else if (v5 == 4 && (*(a1 + 144) < *(a1 + 120) || *(a1 + 152) < *(a1 + 128) || *(a1 + 160) < *(a1 + 136)))
        {
          geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeBoundingBox(a1, (a1 + 40), v16);
          v11 = *&v16[16];
          *(a1 + 120) = *v16;
          *(a1 + 136) = v11;
          *(a1 + 152) = v17;
        }
      }

      else if (v5 == 1)
      {
        if (*(a1 + 224) == *(a1 + 216))
        {
          geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeVertexNormals(a1, (a1 + 40), (a1 + 80), (*(a1 + 168) & 1) == 0, (*(a1 + 168) & 2) != 0, (*(a1 + 168) >> 2) & 1, v16);
          v12 = *(a1 + 232);
          if (v12)
          {
            *(a1 + 240) = v12;
            operator delete(v12);
          }

          v13 = *v16;
          *(a1 + 232) = *v16;
          v14 = *&v16[8];
          *(a1 + 240) = *&v16[8];
          v15 = v14;
          if (v14 == v13)
          {
            v15 = 0;
            v13 = 0;
          }

          *(a1 + 216) = v13;
          *(a1 + 224) = v15;
        }
      }

      else if (v5 == 2 && *(a1 + 264) == *(a1 + 256))
      {
        v6 = *(a1 + 392);
        geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeTriangleNormals(a1, (a1 + 40), (a1 + 80), (*(a1 + 168) & 1) == 0, (*(a1 + 168) & 2) != 0, (*(a1 + 168) & 4) != 0, v16);
        v7 = *(a1 + 272);
        if (v7)
        {
          *v4 = v7;
          operator delete(v7);
        }

        v8 = *v16;
        *(a1 + 272) = *v16;
        v9 = *&v16[8];
        *v4 = *&v16[8];
        v10 = v9;
        if (v9 == v8)
        {
          v10 = 0;
          v8 = 0;
        }

        *(a1 + 256) = v8;
        *(a1 + 264) = v10;
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void *std::vector<std::array<geo::math::Matrix<double,3,1>,3ul>>::__assign_with_size[abi:nn200100]<std::array<geo::math::Matrix<double,3,1>,3ul>*,std::array<geo::math::Matrix<double,3,1>,3ul>*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x8E38E38E38E38E39 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x1C71C71C71C71C7)
      {
        v11 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::array<geo::math::Matrix<double,3,1>,3ul>>::__vallocate[abi:nn200100](v6, v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x8E38E38E38E38E39 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<std::array<geo::math::Matrix<double,3,1>,3ul>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<geo::math::Matrix<double,3,1>,3ul>>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<geo::math::Matrix<double,3,1>,3ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *std::__tree<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::__map_value_compare<geo::math::UndirectedEdge<unsigned long>,std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::less<geo::math::UndirectedEdge<unsigned long>>,true>,std::allocator<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>>>::__find_leaf_high(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!geo::math::UndirectedEdge<unsigned long>::operator<(a3, v4 + 4))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

BOOL geo::math::UndirectedEdge<unsigned long>::operator<(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 <= v3)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = *a1;
  }

  if (*a1 > v3)
  {
    v2 = a1[1];
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 <= v6)
  {
    v7 = a2[1];
  }

  else
  {
    v7 = *a2;
  }

  if (*a2 > v6)
  {
    v5 = a2[1];
  }

  if (v2 < v5)
  {
    return 1;
  }

  return v5 >= v2 && v4 < v7;
}

void std::multimap<geo::math::UndirectedEdge<unsigned long>,unsigned int>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::__tree_node<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,void *> *,long>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    std::__tree<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::__map_value_compare<geo::math::UndirectedEdge<unsigned long>,std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::less<geo::math::UndirectedEdge<unsigned long>>,true>,std::allocator<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>>>::__emplace_hint_multi<std::pair<geo::math::UndirectedEdge<unsigned long> const,unsigned int> const&>();
  }
}

void *std::__tree<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::__map_value_compare<geo::math::UndirectedEdge<unsigned long>,std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::less<geo::math::UndirectedEdge<unsigned long>>,true>,std::allocator<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>>>::__find_leaf(void *a1, void *a2, void *a3, unint64_t *a4)
{
  v6 = a2;
  if (a1 + 1 != a2 && geo::math::UndirectedEdge<unsigned long>::operator<(a2 + 4, a4))
  {

    return std::__tree<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::__map_value_compare<geo::math::UndirectedEdge<unsigned long>,std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::less<geo::math::UndirectedEdge<unsigned long>>,true>,std::allocator<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>>>::__find_leaf_low(a1, a3, a4);
  }

  if (*a1 == v6)
  {
    v10 = v6;
LABEL_17:
    if (*v6)
    {
      *a3 = v10;
      return v10 + 1;
    }

    else
    {
      *a3 = v6;
    }

    return v6;
  }

  v9 = *v6;
  if (*v6)
  {
    do
    {
      v10 = v9;
      v9 = v9[1];
    }

    while (v9);
  }

  else
  {
    v11 = v6;
    do
    {
      v10 = v11[2];
      v12 = *v10 == v11;
      v11 = v10;
    }

    while (v12);
  }

  if (!geo::math::UndirectedEdge<unsigned long>::operator<(a4, v10 + 4))
  {
    goto LABEL_17;
  }

  return std::__tree<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::__map_value_compare<geo::math::UndirectedEdge<unsigned long>,std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::less<geo::math::UndirectedEdge<unsigned long>>,true>,std::allocator<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>>>::__find_leaf_high(a1, a3, a4);
}

void *std::__tree<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::__map_value_compare<geo::math::UndirectedEdge<unsigned long>,std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::less<geo::math::UndirectedEdge<unsigned long>>,true>,std::allocator<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>>>::__find_leaf_low(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (geo::math::UndirectedEdge<unsigned long>::operator<(v4 + 4, a3))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeVertexNormals(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::array<std::bitset<64ul>,3ul>>::resize(a7, (a2[1] - *a2) >> 2);
  v13 = *a7;
  if (a7[1] != *a7)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = &v13[3 * v14];
      v14 = v15;
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v13 = *a7;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3) > v15++);
  }

  geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeFaceNormals(a1, a2, a3, a4, __p);
  v19 = *a3;
  v18 = a3[1];
  if (v18 == *a3)
  {
    v34 = *a7;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v46 = a6;
    do
    {
      v22 = __p[0] + 24 * v20;
      v48 = *v22;
      v49 = *(v22 + 2);
      if ((a5 & 1) == 0)
      {
        v23 = 0;
        v24 = 0.0;
        do
        {
          v24 = v24 + *(&v48 + v23) * *(&v48 + v23);
          v23 += 8;
        }

        while (v23 != 24);
        if (v24 == 0.0)
        {
          v48 = 0uLL;
          v49 = 0;
        }

        else
        {
          v25 = 0;
          v26 = 0.0;
          do
          {
            v26 = v26 + *(&v48 + v25) * *(&v48 + v25);
            v25 += 8;
          }

          while (v25 != 24);
          v27 = 0;
          v28 = 1.0 / sqrt(v26);
          do
          {
            *(&v48 + v27) = v28 * *(&v48 + v27);
            v27 += 8;
          }

          while (v27 != 24);
        }
      }

      v29 = v19 + 12 * v20;
      if (a6)
      {
        for (i = 0; i != 3; ++i)
        {
          AngleAtTriangleVertex = geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::GetAngleAtTriangleVertex(a1, a2, a3, v21, i);
          v32 = 0;
          v51 = 0uLL;
          v52 = 0;
          do
          {
            *(&v51 + v32) = AngleAtTriangleVertex * *(&v48 + v32);
            v32 += 8;
          }

          while (v32 != 24);
          v33 = 0;
          v34 = *a7;
          v35 = *a7 + 24 * *(v29 + 4 * i);
          do
          {
            *(v35 + v33) = *(&v51 + v33) + *(v35 + v33);
            v33 += 8;
          }

          while (v33 != 24);
        }

        v19 = *a3;
        v18 = a3[1];
        a6 = v46;
      }

      else
      {
        v36 = 0;
        v34 = *a7;
        do
        {
          v37 = 0;
          v38 = &v34[3 * *(v29 + 4 * v36)];
          do
          {
            *&v38[v37] = *(&v48 + v37 * 8) + *&v38[v37];
            ++v37;
          }

          while (v37 != 3);
          ++v36;
        }

        while (v36 != 3);
      }

      v20 = ++v21;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v18 - v19) >> 2) > v21);
  }

  for (j = a7[1]; v34 != j; v34 += 3)
  {
    v40 = 0;
    v41 = 0.0;
    do
    {
      v41 = v41 + *&v34[v40] * *&v34[v40];
      ++v40;
    }

    while (v40 != 3);
    if (v41 == 0.0)
    {
      *v34 = 0;
      v34[1] = 0;
      v34[2] = 0;
    }

    else
    {
      v42 = 0;
      v43 = 0.0;
      do
      {
        v43 = v43 + *&v34[v42] * *&v34[v42];
        ++v42;
      }

      while (v42 != 3);
      v44 = 0;
      v45 = 1.0 / sqrt(v43);
      do
      {
        *&v34[v44] = v45 * *&v34[v44];
        ++v44;
      }

      while (v44 != 3);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeFaceNormals(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  memset(v30, 0, sizeof(v30));
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  std::vector<std::array<std::bitset<64ul>,3ul>>::resize(a5, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  v10 = a3[1];
  if (v10 == *a3)
  {
    v20 = a3[1];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *a5;
      v14 = *a5 + 24 * v11;
      v15 = geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::TriangleArea3D(a1, a2, a3, v12);
      v16 = 0;
      *v14 = v15;
      *(v14 + 8) = v17;
      *(v14 + 16) = v18;
      do
      {
        v19 = *(v13 + 24 * v12 + v16);
        v21 = v16 == 16;
        v16 += 8;
      }

      while (!v21);
      v10 = *a3;
      v20 = a3[1];
      v11 = ++v12;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v20 - *a3) >> 2) > v12);
  }

  v21 = v20 == v10 || a4 == 0;
  if (!v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = *a5;
    do
    {
      v25 = 0;
      v26 = v24 + 24 * v22;
      v27 = 0.0;
      do
      {
        v27 = v27 + *&v30[v25] * *(v24 + 24 * v23 + v25 * 8);
        ++v25;
      }

      while (v25 != 3);
      if (v27 < 0.0)
      {
        v28 = 0;
        v31 = 0uLL;
        v32 = 0;
        do
        {
          *(&v31 + v28) = -*(v24 + 24 * v23 + v28);
          v28 += 8;
        }

        while (v28 != 24);
        v29 = v32;
        *v26 = v31;
        *(v26 + 16) = v29;
        v24 = *a5;
        v10 = *a3;
        v20 = a3[1];
      }

      v22 = ++v23;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v20 - v10) >> 2) > v23);
  }
}

double geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::GetAngleAtTriangleVertex(uint64_t *a1, void *a2, void *a3, unsigned int a4, int a5)
{
  v5 = 0;
  v6 = *a3 + 12 * a4;
  v7 = *a1;
  v8 = *(*a2 + 4 * *(v6 + 4 * ((a5 + 1) % 3)));
  v9 = *(*a2 + 4 * *(v6 + 4 * ((a5 + 2) % 3)));
  v10 = *a1 + 24 * *(*a2 + 4 * *(v6 + 4 * a5));
  v11 = *a1 + 24 * v8;
  v17 = 0uLL;
  v18 = 0;
  do
  {
    *(&v17 + v5) = *(v11 + v5) - *(v10 + v5);
    v5 += 8;
  }

  while (v5 != 24);
  v12 = 0;
  v13 = v7 + 24 * v9;
  v15 = v17;
  v16 = v18;
  v17 = 0uLL;
  v18 = 0;
  do
  {
    *(&v17 + v12) = *(v13 + v12) - *(v10 + v12);
    v12 += 8;
  }

  while (v12 != 24);
  return geo::math::LA::Angle<double,3,1>(&v15, &v17);
}

float64_t geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::TriangleArea3D(void *a1, void *a2, void *a3, unsigned int a4)
{
  v4 = 0;
  v5 = (*a3 + 12 * a4);
  v6 = *a1 + 24 * *(*a2 + 4 * *v5);
  v7 = *a1 + 24 * *(*a2 + 4 * v5[1]);
  v8 = *a1 + 24 * *(*a2 + 4 * v5[2]);
  v9 = *(v6 + 16);
  v25 = *v6;
  v26 = v9;
  v10 = *(v7 + 16);
  v23 = *v7;
  v24 = v10;
  v11 = *(v8 + 16);
  v21 = *v8;
  v22 = v11;
  v27 = 0.0;
  v28 = 0uLL;
  do
  {
    *(&v27 + v4) = *(&v23 + v4) - *(&v25 + v4);
    v4 += 8;
  }

  while (v4 != 24);
  v12 = 0;
  v13 = v27;
  v14 = v28;
  v27 = 0.0;
  v28 = 0uLL;
  do
  {
    *(&v27 + v12) = *(&v21 + v12) - *(&v25 + v12);
    v12 += 8;
  }

  while (v12 != 24);
  v15 = 0;
  v16 = vdupq_lane_s64(*&v13, 0);
  v16.f64[0] = v14.f64[1];
  *&v17.f64[0] = vdupq_laneq_s64(v28, 1).u64[0];
  v17.f64[1] = v27;
  v19 = vmlaq_f64(vmulq_f64(v28, vnegq_f64(v16)), v17, v14);
  v20 = v13 * *v28.i64 - v14.f64[0] * v27;
  v27 = 0.0;
  v28 = 0uLL;
  do
  {
    *(&v27 + v15 * 8) = v19.f64[v15] * 0.5;
    ++v15;
  }

  while (v15 != 3);
  return v27;
}

double geo::math::LA::Angle<double,3,1>(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  do
  {
    v4 = *(a1 + v3);
    v5 = v4 != 0.0 || v3 == 16;
    v3 += 8;
  }

  while (!v5);
  if (v4 == 0.0)
  {
    return 0.0;
  }

  v6 = 0;
  do
  {
    v7 = *(a2 + v6);
    v8 = v7 != 0.0 || v6 == 16;
    v6 += 8;
  }

  while (!v8);
  if (v7 == 0.0)
  {
    return 0.0;
  }

  v19[0] = geo::math::Matrix<double,3,1>::normalized(a1);
  v19[1] = v10;
  v19[2] = v11;
  v12 = geo::math::Matrix<double,3,1>::normalized(a2);
  v13 = 0;
  *v18 = v12;
  v18[1] = v14;
  v18[2] = v15;
  v16 = 0.0;
  do
  {
    v16 = v16 + *&v19[v13] * *&v18[v13];
    ++v13;
  }

  while (v13 != 3);
  v17 = fmax(fmin(v16, 1.0), -1.0);

  return acos(v17);
}

double geo::math::Matrix<double,3,1>::normalized(uint64_t a1)
{
  v1 = 0;
  v2 = 0.0;
  do
  {
    v2 = v2 + *(a1 + v1) * *(a1 + v1);
    v1 += 8;
  }

  while (v1 != 24);
  v3 = 0;
  v4 = 1.0 / sqrt(v2);
  memset(v6, 0, sizeof(v6));
  do
  {
    *&v6[v3] = v4 * *(a1 + v3 * 8);
    ++v3;
  }

  while (v3 != 3);
  return *v6;
}

void geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeTriangleNormals(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, char a5@<W4>, char a6@<W5>, void *a7@<X8>)
{
  {
    geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeTriangleNormals();
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  std::vector<std::array<geo::math::Matrix<double,3,1>,3ul>>::resize(a7, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2));
  geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeFaceNormals(a1, a2, a3, a4, __p);
  memset(v32, 0, sizeof(v32));
  std::vector<std::list<geo::math::Matrix<double,3,1>>>::resize(v32, (a2[1] - *a2) >> 2);
  v12 = *a3;
  v31 = a3;
  if (a3[1] != *a3)
  {
    v13 = __p[0];
    v14 = __p[0];
    if ((a5 & 1) == 0)
    {
      v15 = 0;
      v16 = 0.0;
      do
      {
        v16 = v16 + *(__p[0] + v15) * *(__p[0] + v15);
        v15 += 8;
      }

      while (v15 != 24);
      if (v16 == 0.0)
      {
        v17 = geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeTriangleNormals(geo::math::iterator::Range<geo::math::Matrix<double,3,1> const*> const&,geo::math::iterator::Range<unsigned int const*> const&,geo::math::iterator::Range<geo::math::Matrix<unsigned int,3,1> const*> const&,BOOL,BOOL,BOOL,double)::zero;
        *(__p[0] + 2) = qword_27F3B9DD0;
        *v14 = v17;
      }

      else
      {
        v18 = 0;
        v19 = 0.0;
        do
        {
          v19 = v19 + *(__p[0] + v18) * *(__p[0] + v18);
          v18 += 8;
        }

        while (v18 != 24);
        v20 = 0;
        v21 = 1.0 / sqrt(v19);
        v22 = __p[0];
        do
        {
          *&v22[v20] = v21 * *&v22[v20];
          v20 += 8;
        }

        while (v20 != 24);
      }
    }

    if (a6)
    {
      v23 = v12;
      v24 = v13;
      AngleAtTriangleVertex = geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::GetAngleAtTriangleVertex(a1, a2, v31, 0, 0);
      v26 = 0;
      v27 = *v23;
      v34 = 0uLL;
      v35 = 0;
      do
      {
        *(&v34 + v26) = AngleAtTriangleVertex * *&v24[v26];
        v26 += 8;
      }

      while (v26 != 24);
      operator new();
    }

    v28 = v32[0] + 24 * *v12;
    operator new();
  }

  *&v34 = v32;
  std::vector<std::list<geo::math::Matrix<double,3,1>>>::__destroy_vector::operator()[abi:nn200100](&v34);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void std::vector<std::array<geo::math::Matrix<double,3,1>,3ul>>::resize(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<std::array<geo::math::Matrix<double,3,1>,3ul>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 72 * a2;
  }
}

void *std::vector<std::list<geo::math::Matrix<double,3,1>>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<std::list<geo::math::Matrix<double,3,1>>>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      result = std::__list_imp<geo::math::Matrix<double,3,1>>::clear(v3);
    }

    v2[1] = v7;
  }

  return result;
}

void std::vector<std::array<geo::math::Matrix<double,3,1>,3ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 72 * ((72 * a2 - 72) / 0x48) + 72;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x38E38E38E38E38ELL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x1C71C71C71C71C7)
    {
      v9 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<geo::math::Matrix<double,3,1>,3ul>>>(a1, v9);
    }

    v11 = 72 * v6;
    v12 = 72 * ((72 * a2 - 72) / 0x48) + 72;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t std::vector<std::list<geo::math::Matrix<double,3,1>>>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = &v4[3 * a2];
      do
      {
        *v4 = v4;
        v4[1] = v4;
        v4[2] = 0;
        v4 += 3;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::list<geo::math::Matrix<double,3,1>>>>(result, v9);
    }

    v11 = 24 * v6;
    v19 = 0;
    v12 = 24 * v6 + 24 * a2;
    v13 = v11;
    do
    {
      *v13 = v13;
      v13[1] = v13;
      v13[2] = 0;
      v13 += 3;
    }

    while (v13 != v12);
    v14 = *(result + 8);
    v15 = (v11 + *result - v14);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::list<geo::math::Matrix<double,3,1>>>,std::list<geo::math::Matrix<double,3,1>>*>(result, *result, v14, v15);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v12;
    v17 = v3[2];
    v3[2] = v19;
    v18[2] = v16;
    v19 = v17;
    v18[0] = v16;
    v18[1] = v16;
    return std::__split_buffer<std::list<geo::math::Matrix<double,3,1>>>::~__split_buffer(v18);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::list<geo::math::Matrix<double,3,1>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::list<geo::math::Matrix<double,3,1>>>,std::list<geo::math::Matrix<double,3,1>>*>(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      std::allocator<std::list<geo::math::Matrix<double,3,1>>>::construct[abi:nn200100]<std::list<geo::math::Matrix<double,3,1>>,std::list<geo::math::Matrix<double,3,1>>>(a1, a4, v8);
      v8 += 3;
      a4 += 3;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      std::__list_imp<geo::math::Matrix<double,3,1>>::clear(v6);
      v6 += 3;
    }
  }
}

void std::allocator<std::list<geo::math::Matrix<double,3,1>>>::construct[abi:nn200100]<std::list<geo::math::Matrix<double,3,1>>,std::list<geo::math::Matrix<double,3,1>>>(uint64_t a1, uint64_t *a2, void *a3)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  v3 = a3[2];
  if (v3)
  {
    v5 = *a3;
    v4 = a3[1];
    v6 = *(*a3 + 8);
    v7 = *v4;
    *(v7 + 8) = v6;
    *v6 = v7;
    v8 = *a2;
    *(v8 + 8) = v4;
    *v4 = v8;
    *a2 = v5;
    *(v5 + 8) = a2;
    a2[2] = v3;
    a3[2] = 0;
  }
}

void *std::__list_imp<geo::math::Matrix<double,3,1>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::__split_buffer<std::list<geo::math::Matrix<double,3,1>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__list_imp<geo::math::Matrix<double,3,1>>::clear((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::list<geo::math::Matrix<double,3,1>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 3;
        std::__list_imp<geo::math::Matrix<double,3,1>>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned int **geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeEdgeOwnership@<X0>(unsigned int **result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  if (result[1] != *result)
  {
    v2 = **result;
    v3 = (*result)[1];
    std::__tree<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::__map_value_compare<geo::math::UndirectedEdge<unsigned long>,std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>,std::less<geo::math::UndirectedEdge<unsigned long>>,true>,std::allocator<std::__value_type<geo::math::UndirectedEdge<unsigned long>,unsigned int>>>::__emplace_multi<std::pair<geo::math::UndirectedEdge<unsigned long>,unsigned int> const&>();
  }

  return result;
}

uint64_t *geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeBoundingBox@<X0>(uint64_t *result@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a3 + 16) = xmmword_2500D1250;
  *(a3 + 32) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = *result;
    do
    {
      v6 = (v5 + 24 * *v3);
      v7 = a3;
      v8 = 3;
      do
      {
        v9 = *v6++;
        v10 = v9;
        v11 = *v7;
        if (v9 < *v7)
        {
          v11 = v10;
        }

        *v7 = v11;
        if (v7[3] >= v10)
        {
          v10 = v7[3];
        }

        v7[3] = v10;
        ++v7;
        --v8;
      }

      while (v8);
      ++v3;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t geo::math::iterator::RangeData<geo::math::Matrix<double,3,1>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    if (*(a2 + 8) != *a2 && *(a2 + 16) == *(a2 + 24))
    {
      *(a1 + 24) = *(a1 + 16);
      *a1 = *a2;
    }

    else
    {
      std::vector<geo::math::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<geo::math::Matrix<double,3,1>*,geo::math::Matrix<double,3,1>*>((a1 + 16), *(a2 + 16), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 3));
      v4 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (v3 == v4)
      {
        v3 = 0;
        v4 = 0;
      }

      *a1 = v4;
      *(a1 + 8) = v3;
    }
  }

  return a1;
}

uint64_t geo::math::iterator::RangeData<std::array<geo::math::Matrix<double,3,1>,3ul>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    if (*(a2 + 8) != *a2 && *(a2 + 16) == *(a2 + 24))
    {
      *(a1 + 24) = *(a1 + 16);
      *a1 = *a2;
    }

    else
    {
      std::vector<std::array<geo::math::Matrix<double,3,1>,3ul>>::__assign_with_size[abi:nn200100]<std::array<geo::math::Matrix<double,3,1>,3ul>*,std::array<geo::math::Matrix<double,3,1>,3ul>*>((a1 + 16), *(a2 + 16), *(a2 + 24), 0x8E38E38E38E38E39 * ((*(a2 + 24) - *(a2 + 16)) >> 3));
      v4 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (v3 == v4)
      {
        v3 = 0;
        v4 = 0;
      }

      *a1 = v4;
      *(a1 + 8) = v3;
    }
  }

  return a1;
}

uint64_t geo::math::iterator::RangeData<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    if (*(a2 + 8) != *a2 && *(a2 + 16) == *(a2 + 24))
    {
      *(a1 + 24) = *(a1 + 16);
      *a1 = *a2;
    }

    else
    {
      std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a1 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      v4 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (v3 == v4)
      {
        v3 = 0;
        v4 = 0;
      }

      *a1 = v4;
      *(a1 + 8) = v3;
    }
  }

  return a1;
}

uint64_t std::unordered_set<geo::math::DerivedChannel,geo::EnumHashFunction,std::equal_to<geo::math::DerivedChannel>,std::allocator<geo::math::DerivedChannel>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<geo::math::DerivedChannel,geo::EnumHashFunction,std::equal_to<geo::math::DerivedChannel>,std::allocator<geo::math::DerivedChannel>>::__emplace_unique_key_args<geo::math::DerivedChannel,geo::math::DerivedChannel const&>(a1, i + 4);
  }

  return a1;
}

void *geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::DerivedData::~DerivedData(void *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table((a1 + 37));
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[23];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[17];
  if (v4)
  {
    a1[18] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    a1[3] = v7;
    operator delete(v7);
  }

  return a1;
}

void *geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::~RangeMesh(void *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>>>::~__hash_table((a1 + 55));
  std::__hash_table<std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>>>::~__hash_table((a1 + 50));
  v2 = a1[48];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[44];
  if (v3)
  {
    a1[45] = v3;
    operator delete(v3);
  }

  v4 = a1[39];
  if (v4)
  {
    a1[40] = v4;
    operator delete(v4);
  }

  v5 = a1[34];
  if (v5)
  {
    a1[35] = v5;
    operator delete(v5);
  }

  v6 = a1[29];
  if (v6)
  {
    a1[30] = v6;
    operator delete(v6);
  }

  v7 = a1[24];
  if (v7)
  {
    a1[25] = v7;
    operator delete(v7);
  }

  v8 = a1[12];
  if (v8)
  {
    a1[13] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  v10 = a1[2];
  if (v10)
  {
    a1[3] = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,geo::math::iterator::RangeData<unsigned int>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void geo::math::ConstrainedDelaunayTriangulationMesherDetails::~ConstrainedDelaunayTriangulationMesherDetails(geo::math::ConstrainedDelaunayTriangulationMesherDetails *this)
{
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(this + 384);
  v8 = (this + 360);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 336);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 312);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v8 = (this + 288);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(this + 248);
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v8 = (this + 200);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v8);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(this + 160);
  v8 = (this + 136);
  std::vector<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::__destroy_vector::operator()[abi:nn200100](&v8);
  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    *(this + 9) = v5;
    operator delete(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }
}

void std::vector<std::unordered_map<unsigned int,geo::math::Matrix<double,3,1>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<std::vector<unsigned long>>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<unsigned long>>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

void *std::vector<std::vector<std::tuple<unsigned int,unsigned int,float>>>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<std::tuple<unsigned int,unsigned int,float>>>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<std::tuple<unsigned int,unsigned int,float>>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<geo::math::Matrix<unsigned int,2,1>>>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *std::vector<unsigned int>::vector[abi:nn200100]<std::__wrap_iter<unsigned int const*>,0>(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    std::vector<float>::__vallocate[abi:nn200100](result, (a3 - a2) >> 2);
  }

  return result;
}

char *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__insert_with_sizeB8nn200100INS_13move_iteratorINS_11__wrap_iterIPS1_EEEESA_EES9_NS7_IPKS1_EET_T0_l(void *a1, char *__src, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 4)
  {
    v16 = (v10 - __src) >> 4;
    if (v16 >= a5)
    {
      v20 = &__src[16 * a5];
      v21 = &v10[-a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21++;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[16 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19 = v37;
          v19 += 16;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[16 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39++;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[16 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42++ = v43;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v10 - *a1) >> 4);
  if (v12 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 3 > v12)
  {
    v12 = v14 >> 3;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF0)
  {
    v15 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v15);
  }

  v27 = 16 * (v13 >> 4);
  v28 = 16 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 16;
  }

  while (v28);
  memcpy((v27 + 16 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 16 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

char *std::vector<float>::__insert_with_size[abi:nn200100]<std::move_iterator<std::__wrap_iter<float *>>,std::move_iterator<std::__wrap_iter<float *>>>(void *a1, char *__src, int *a3, int *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 2)
  {
    v16 = (v10 - __src) >> 2;
    if (v16 >= a5)
    {
      v20 = &__src[4 * a5];
      v21 = &v10[-a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21++;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[4 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19 = v37;
          v19 += 4;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[4 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39++;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[4 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42++ = v43;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v10 - *a1) >> 2);
  if (v12 >> 62)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v13 = __src - v11;
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

  if (v15)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v15);
  }

  v27 = 4 * (v13 >> 2);
  v28 = 4 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 4;
  }

  while (v28);
  memcpy((v27 + 4 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 4 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

char *_ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE18__insert_with_sizeB8nn200100INS_13move_iteratorINS_11__wrap_iterIPS1_EEEESA_EES9_NS7_IPKS1_EET_T0_l(void *a1, char *__src, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 5)
  {
    v16 = (v10 - __src) >> 5;
    if (v16 >= a5)
    {
      v20 = &__src[32 * a5];
      v21 = &v10[-2 * a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21;
        v24 = v21[1];
        v21 += 2;
        *v22 = v23;
        v22[1] = v24;
        v22 += 2;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[32 * a5], __src, v10 - v20);
      }

      v25 = &v7[2 * a5];
      v26 = __src;
      do
      {
        v27 = *v7;
        v28 = v7[1];
        v7 += 2;
        *v26 = v27;
        v26[1] = v28;
        v26 += 2;
      }

      while (v7 != v25);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v39 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v40 = *v39;
          v41 = v39[1];
          v39 += 2;
          *v19 = v40;
          *(v19 + 1) = v41;
          v19 += 32;
          v18 += 2;
        }

        while (v39 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v42 = &__src[32 * a5];
        v43 = &v18[-2 * a5];
        v44 = v18;
        while (v43 < v10)
        {
          v45 = *v43;
          v46 = v43[1];
          v43 += 2;
          *v44 = v45;
          v44[1] = v46;
          v44 += 2;
        }

        a1[1] = v44;
        if (v19 != v42)
        {
          memmove(&__src[32 * a5], __src, v18 - v42);
        }

        if (v10 != __src)
        {
          v47 = __src;
          do
          {
            v48 = *v7;
            v49 = v7[1];
            v7 += 2;
            *v47 = v48;
            v47[1] = v49;
            v47 += 2;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v10 - *a1) >> 5);
  if (v12 >> 59)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 4 > v12)
  {
    v12 = v14 >> 4;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFE0)
  {
    v15 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v15);
  }

  v29 = 32 * (v13 >> 5);
  v30 = 32 * a5;
  v31 = v29;
  do
  {
    v32 = *v7;
    v33 = v7[1];
    v7 += 2;
    *v31 = v32;
    v31[1] = v33;
    v31 += 2;
    v30 -= 32;
  }

  while (v30);
  memcpy((v29 + 32 * a5), __src, a1[1] - __src);
  v34 = *a1;
  v35 = v29 + 32 * a5 + a1[1] - __src;
  a1[1] = __src;
  v36 = (__src - v34);
  v37 = (v29 - (__src - v34));
  memcpy(v37, v34, v36);
  v38 = *a1;
  *a1 = v37;
  a1[1] = v35;
  a1[2] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return v29;
}

char *std::vector<double>::__insert_with_size[abi:nn200100]<std::move_iterator<std::__wrap_iter<double *>>,std::move_iterator<std::__wrap_iter<double *>>>(void *a1, char *__src, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 3)
  {
    v16 = (v10 - __src) >> 3;
    if (v16 >= a5)
    {
      v20 = &__src[8 * a5];
      v21 = &v10[-a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21++;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[8 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19 = v37;
          v19 += 8;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[8 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39++;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[8 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42++ = v43;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v10 - *a1) >> 3);
  if (v12 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v15);
  }

  v27 = 8 * (v13 >> 3);
  v28 = 8 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 8;
  }

  while (v28);
  memcpy((v27 + 8 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 8 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

void *std::vector<geo::math::Matrix<double,3,1>>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

uint64_t geo::math::Get2DConvexHull<double,3ul>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = (*(result + 8) - *result) >> 3;
  __p[3] = *result;
  v5 = 0xAAAAAAAAAAAAAAABLL * v4;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (0xAAAAAAAAAAAAAAABLL * v4 >= 3)
  {
    v6 = 0;
    v7 = *v3;
    v8 = v3[1];
    for (i = v3; ; i += 3)
    {
      v10 = i[1];
      if (v8 <= v10)
      {
        if (v8 == v10)
        {
          *i;
        }

        v10 = v8;
      }

      else
      {
        v11 = *i;
      }

      ++v6;
      v8 = v10;
      if (v5 == v6)
      {
        memset(__p, 0, 24);
        std::vector<double>::__vallocate[abi:nn200100](__p, v5);
      }
    }
  }

  return result;
}

unint64_t geo::math::Iota<unsigned long>@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (result)
  {
    std::vector<double>::__vallocate[abi:nn200100](a2, result);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v23 = *(a2 - 1);
        v24 = *v9;
        v25 = **a3;
        v26 = *(v25 + 8 * v23);
        v27 = *(v25 + 8 * *v9);
        if (v26 > v27 || v26 == v27 && *(*a3[1] + 24 * v23) < *(*a3[1] + 24 * v24))
        {
          *v9 = v23;
          *(a2 - 1) = v24;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(v9, v9 + 1, v9 + 2, a3);
      v28 = *(a2 - 1);
      v29 = v9[2];
      v30 = **a3;
      v31 = *(v30 + 8 * v28);
      v32 = *(v30 + 8 * v29);
      if (v31 > v32 || v31 == v32 && *(*a3[1] + 24 * v28) < *(*a3[1] + 24 * v29))
      {
        v9[2] = v28;
        *(a2 - 1) = v29;
        v34 = v9[1];
        v33 = v9[2];
        v35 = *(v30 + 8 * v33);
        v36 = *(v30 + 8 * v34);
        if (v35 > v36 || v35 == v36 && *(*a3[1] + 24 * v33) < *(*a3[1] + 24 * v34))
        {
          v9[1] = v33;
          v9[2] = v34;
          v37 = *v9;
          v38 = *(v30 + 8 * *v9);
          if (v35 > v38 || v35 == v38 && *(*a3[1] + 24 * v33) < *(*a3[1] + 24 * v37))
          {
            *v9 = v33;
            v9[1] = v37;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    if (v12 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(&v9[v12 >> 1], v9, a2 - 1, a3);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(v9, &v9[v12 >> 1], a2 - 1, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(v9 + 1, v14 - 1, a2 - 2, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(v9 + 2, &v9[v13 + 1], a2 - 3, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(v14 - 1, v14, &v9[v13 + 1], a3);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v16 = *(v9 - 1);
    v17 = **a3;
    v18 = *(v17 + 8 * v16);
    v19 = *(v17 + 8 * *v9);
    if (v18 <= v19 && (v18 != v19 || *(*a3[1] + 24 * v16) >= *(*a3[1] + 24 * *v9)))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &>(v9, a2, a3);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v20 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &>(v9, a2, a3);
    if ((v21 & 1) == 0)
    {
      goto LABEL_23;
    }

    v22 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, v20, a3);
    v9 = v20 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v20 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(v8, v20, a3, -v11, a5 & 1);
      v9 = v20 + 1;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(v9, v9 + 1, a2 - 1, a3);
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = *a1;
  v6 = **a4;
  v7 = *(v6 + 8 * *a2);
  v8 = *(v6 + 8 * *a1);
  if (v7 > v8 || v7 == v8 && *(*a4[1] + 24 * v4) < *(*a4[1] + 24 * v5))
  {
    v9 = *a3;
    v10 = *(v6 + 8 * *a3);
    if (v10 > v7 || v10 == v7 && *(*a4[1] + 24 * v9) < *(*a4[1] + 24 * v4))
    {
      *a1 = v9;
    }

    else
    {
      *a1 = v4;
      *a2 = v5;
      v17 = *a3;
      v18 = *(v6 + 8 * *a3);
      if (v18 <= v8 && (v18 != v8 || *(*a4[1] + 24 * v17) >= *(*a4[1] + 24 * v5)))
      {
        return 1;
      }

      *a2 = v17;
    }

    *a3 = v5;
    return 1;
  }

  v11 = *a3;
  v12 = *(v6 + 8 * *a3);
  if (v12 > v7 || v12 == v7 && *(*a4[1] + 24 * v11) < *(*a4[1] + 24 * v4))
  {
    *a2 = v11;
    *a3 = v4;
    v13 = *a2;
    v14 = *a1;
    v15 = *(v6 + 8 * *a2);
    v16 = *(v6 + 8 * *a1);
    if (v15 > v16 || v15 == v16 && *(*a4[1] + 24 * v13) < *(*a4[1] + 24 * v14))
    {
      *a1 = v13;
      *a2 = v14;
    }

    return 1;
  }

  return 0;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(a1, a2, a3, a6);
  v13 = *a4;
  v14 = *a3;
  v15 = **a6;
  v16 = *(v15 + 8 * *a4);
  v17 = *(v15 + 8 * *a3);
  if (v16 > v17 || v16 == v17 && *(*a6[1] + 24 * v13) < *(*a6[1] + 24 * v14))
  {
    *a3 = v13;
    *a4 = v14;
    v18 = *a3;
    v19 = *a2;
    v20 = *(v15 + 8 * *a3);
    v21 = *(v15 + 8 * *a2);
    if (v20 > v21 || v20 == v21 && *(*a6[1] + 24 * v18) < *(*a6[1] + 24 * v19))
    {
      *a2 = v18;
      *a3 = v19;
      v22 = *a2;
      v23 = *a1;
      v24 = *(v15 + 8 * *a2);
      v25 = *(v15 + 8 * *a1);
      if (v24 > v25 || v24 == v25 && *(*a6[1] + 24 * v22) < *(*a6[1] + 24 * v23))
      {
        *a1 = v22;
        *a2 = v23;
      }
    }
  }

  v26 = *a5;
  v27 = *a4;
  v28 = *(v15 + 8 * *a5);
  v29 = *(v15 + 8 * *a4);
  if (v28 > v29 || v28 == v29 && *(*a6[1] + 24 * v26) < *(*a6[1] + 24 * v27))
  {
    *a4 = v26;
    *a5 = v27;
    v30 = *a4;
    v31 = *a3;
    v32 = *(v15 + 8 * *a4);
    v33 = *(v15 + 8 * *a3);
    if (v32 > v33 || v32 == v33 && *(*a6[1] + 24 * v30) < *(*a6[1] + 24 * v31))
    {
      *a3 = v30;
      *a4 = v31;
      v34 = *a3;
      v35 = *a2;
      v36 = *(v15 + 8 * *a3);
      v37 = *(v15 + 8 * *a2);
      if (v36 > v37 || v36 == v37 && *(*a6[1] + 24 * v34) < *(*a6[1] + 24 * v35))
      {
        *a2 = v34;
        *a3 = v35;
        v38 = *a2;
        v39 = *a1;
        v40 = *(v15 + 8 * *a2);
        v41 = *(v15 + 8 * *a1);
        if (v40 > v41 || v40 == v41 && *(*a6[1] + 24 * v38) < *(*a6[1] + 24 * v39))
        {
          *a1 = v38;
          *a2 = v39;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = a3[1];
      v6 = **a3;
      v7 = result;
      do
      {
        v8 = v7;
        v7 = v3;
        v10 = *v8;
        v9 = v8[1];
        v11 = *(v6 + 8 * v9);
        v12 = *(v6 + 8 * *v8);
        if (v11 > v12 || v11 == v12 && *(*v5 + 24 * v9) < *(*v5 + 24 * v10))
        {
          v8[1] = v10;
          v13 = result;
          if (v8 != result)
          {
            v14 = a3[1];
            v15 = v4;
            while (1)
            {
              v16 = *(result + v15 - 8);
              v17 = *(v6 + 8 * v16);
              if (v11 <= v17)
              {
                if (v11 != v17)
                {
                  v13 = v8;
                  goto LABEL_16;
                }

                if (*(*v14 + 24 * v9) >= *(*v14 + 24 * v16))
                {
                  break;
                }
              }

              --v8;
              *(result + v15) = v16;
              v15 -= 8;
              if (!v15)
              {
                v13 = result;
                goto LABEL_16;
              }
            }

            v13 = (result + v15);
          }

LABEL_16:
          *v13 = v9;
        }

        v3 = v7 + 1;
        v4 += 8;
      }

      while (v7 + 1 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = a3[1];
      v5 = **a3;
      do
      {
        v6 = result;
        result = v3;
        v8 = *v6;
        v7 = v6[1];
        v9 = *(v5 + 8 * v7);
        v10 = *(v5 + 8 * *v6);
        if (v9 > v10 || v9 == v10 && *(*v4 + 24 * v7) < *(*v4 + 24 * v8))
        {
          v11 = a3[1];
          do
          {
            do
            {
              v12 = v6;
              v13 = v8;
              v14 = *--v6;
              v8 = v14;
              v6[2] = v13;
              v15 = *(v5 + 8 * v14);
            }

            while (v9 > v15);
          }

          while (v9 == v15 && *(*v11 + 24 * v7) < *(*v11 + 24 * v8));
          *v12 = v7;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = **a3;
  v6 = *(v5 + 8 * *a1);
  v7 = *(v5 + 8 * v4);
  if (v6 > v7 || v6 == v7 && *(*a3[1] + 24 * v3) < *(*a3[1] + 24 * v4))
  {
    j = a1 + 1;
    v9 = a1[1];
    for (i = *(v5 + 8 * v9); v6 <= i; i = *(v5 + 8 * v11))
    {
      if (v6 == i && *(*a3[1] + 24 * v3) < *(*a3[1] + 24 * v9))
      {
        break;
      }

      v11 = j[1];
      ++j;
      v9 = v11;
    }
  }

  else
  {
    for (j = a1 + 1; j < a2; ++j)
    {
      v12 = *(v5 + 8 * *j);
      if (v6 > v12 || v6 == v12 && *(*a3[1] + 24 * v3) < *(*a3[1] + 24 * *j))
      {
        break;
      }
    }
  }

  if (j < a2)
  {
    --a2;
    while (v6 > v7 || v6 == v7 && *(*a3[1] + 24 * v3) < *(*a3[1] + 24 * v4))
    {
      v13 = *--a2;
      v4 = v13;
      v7 = *(v5 + 8 * v13);
    }
  }

  if (j < a2)
  {
    v14 = *j;
    v15 = *a2;
    do
    {
      *j = v15;
      *a2 = v14;
      v16 = j[1];
      ++j;
      v14 = v16;
      v17 = *(v5 + 8 * v16);
      v18 = a3[1];
      while (v6 <= v17 && (v6 != v17 || *(*v18 + 24 * v3) >= *(*v18 + 24 * v14)))
      {
        v19 = j[1];
        ++j;
        v14 = v19;
        v17 = *(v5 + 8 * v19);
      }

      do
      {
        do
        {
          v20 = *--a2;
          v15 = v20;
          v21 = *(v5 + 8 * v20);
        }

        while (v6 > v21);
      }

      while (v6 == v21 && *(*v18 + 24 * v3) < *(*v18 + 24 * v15));
    }

    while (j < a2);
  }

  if (j - 1 != a1)
  {
    *a1 = *(j - 1);
  }

  *(j - 1) = v3;
  return j;
}

uint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,unsigned long *,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = a3[1];
  v6 = **a3;
  v7 = *(v6 + 8 * *a1);
  while (1)
  {
    v8 = a1[v3 + 1];
    v9 = *(v6 + 8 * v8);
    if (v9 <= v7 && (v9 != v7 || *(*v5 + 24 * v8) >= *(*v5 + 24 * *a1)))
    {
      break;
    }

    ++v3;
  }

  v10 = &a1[v3];
  v11 = &a1[v3 + 1];
  if (v3 * 8)
  {
    v13 = *--a2;
    v12 = v13;
    for (i = *(v6 + 8 * v13); i <= v7; i = *(v6 + 8 * v15))
    {
      if (i == v7 && *(*v5 + 24 * v12) < *(*v5 + 24 * v4))
      {
        break;
      }

      v15 = *--a2;
      v12 = v15;
    }
  }

  else if (v11 < a2)
  {
    v17 = *--a2;
    v16 = v17;
    for (j = *(v6 + 8 * v17); j <= v7; j = *(v6 + 8 * v20))
    {
      if (j == v7)
      {
        if (*(*v5 + 24 * v16) < *(*v5 + 24 * v4) || v11 >= a2)
        {
          break;
        }
      }

      else if (v11 >= a2)
      {
        break;
      }

      v20 = *--a2;
      v16 = v20;
    }
  }

  if (v11 < a2)
  {
    v21 = *a2;
    v22 = &a1[v3 + 1];
    v23 = a2;
    do
    {
      *v22++ = v21;
      *v23 = v8;
      v24 = a3[1];
      while (1)
      {
        v8 = *v22;
        v25 = *(v6 + 8 * *v22);
        if (v25 <= v7 && (v25 != v7 || *(*v24 + 24 * v8) >= *(*v24 + 24 * v4)))
        {
          break;
        }

        ++v22;
      }

      do
      {
        v26 = *--v23;
        v21 = v26;
        v27 = *(v6 + 8 * v26);
      }

      while (v27 <= v7 && (v27 != v7 || *(*v24 + 24 * v21) >= *(*v24 + 24 * v4)));
    }

    while (v22 < v23);
    v10 = v22 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v4;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(a1, a1 + 1, a2 - 1, a3);
        break;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a3);
        v27 = *(a2 - 1);
        v28 = a1[2];
        v29 = **a3;
        v30 = *(v29 + 8 * v27);
        v31 = *(v29 + 8 * v28);
        if (v30 > v31 || v30 == v31 && *(*a3[1] + 24 * v27) < *(*a3[1] + 24 * v28))
        {
          a1[2] = v27;
          *(a2 - 1) = v28;
          v33 = a1[1];
          v32 = a1[2];
          v34 = *(v29 + 8 * v32);
          v35 = *(v29 + 8 * v33);
          if (v34 > v35 || v34 == v35 && *(*a3[1] + 24 * v32) < *(*a3[1] + 24 * v33))
          {
            a1[1] = v32;
            a1[2] = v33;
            v36 = *a1;
            v37 = *(v29 + 8 * *a1);
            if (v34 > v37 || v34 == v37 && *(*a3[1] + 24 * v32) < *(*a3[1] + 24 * v36))
            {
              *a1 = v32;
              a1[1] = v36;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    v9 = **a3;
    v10 = *(v9 + 8 * v7);
    v11 = *(v9 + 8 * *a1);
    if (v10 > v11 || v10 == v11 && *(*a3[1] + 24 * v7) < *(*a3[1] + 24 * v8))
    {
      *a1 = v7;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a3);
  v13 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v16 = a3[1];
  v17 = **a3;
  while (1)
  {
    v18 = *v13;
    v19 = *v12;
    v20 = *(v17 + 8 * *v13);
    v21 = *(v17 + 8 * *v12);
    if (v20 > v21 || v20 == v21 && *(*v16 + 24 * v18) < *(*v16 + 24 * v19))
    {
      *v13 = v19;
      v22 = a3[1];
      v23 = v14;
      while (1)
      {
        v24 = *(a1 + v23 + 8);
        v25 = *(v17 + 8 * v24);
        if (v20 <= v25 && (v20 != v25 || *(*v22 + 24 * v18) >= *(*v22 + 24 * v24)))
        {
          break;
        }

        *(a1 + v23 + 16) = v24;
        v23 -= 8;
        if (v23 == -16)
        {
          v26 = a1;
          goto LABEL_25;
        }
      }

      v26 = (a1 + v23 + 16);
LABEL_25:
      *v26 = v18;
      if (++v15 == 8)
      {
        return v13 + 1 == a2;
      }
    }

    v12 = v13;
    v14 += 8;
    if (++v13 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        v15 = **a4;
        v16 = *(v15 + 8 * *v12);
        v17 = *(v15 + 8 * *a1);
        if (v16 > v17 || v16 == v17 && *(*a4[1] + 24 * v13) < *(*a4[1] + 24 * v14))
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v18 = a2 - 1;
      do
      {
        v19 = *a1;
        v20 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8);
        if (v18 == v20)
        {
          *v20 = v19;
        }

        else
        {
          *v20 = *v18;
          *v18 = v19;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, (v20 + 1), a4, v20 + 1 - a1);
        }

        --v18;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      v10 = **a2;
      if (v9 < a3)
      {
        v11 = v8[1];
        v12 = *(v10 + 8 * *v8);
        v13 = *(v10 + 8 * v11);
        if (v12 > v13 || v12 == v13 && *(*a2[1] + 24 * *v8) < *(*a2[1] + 24 * v11))
        {
          ++v8;
          v7 = v9;
        }
      }

      v14 = *v8;
      v15 = *a4;
      v16 = *(v10 + 8 * *v8);
      v17 = *(v10 + 8 * *a4);
      if (v16 <= v17 && (v16 != v17 || *(*a2[1] + 24 * v14) >= *(*a2[1] + 24 * v15)))
      {
        *a4 = v14;
        if (v5 >= v7)
        {
          v19 = a2[1];
          while (1)
          {
            v20 = 2 * v7;
            v7 = (2 * v7) | 1;
            v18 = (result + 8 * v7);
            v21 = v20 + 2;
            if (v21 < a3)
            {
              v22 = v18[1];
              v23 = *(v10 + 8 * *v18);
              v24 = *(v10 + 8 * v22);
              if (v23 > v24 || v23 == v24 && *(*v19 + 24 * *v18) < *(*v19 + 24 * v22))
              {
                ++v18;
                v7 = v21;
              }
            }

            v25 = *v18;
            v26 = *(v10 + 8 * *v18);
            if (v26 > v17 || v26 == v17 && *(*v19 + 24 * v25) < *(*v19 + 24 * v15))
            {
              break;
            }

            *v8 = v25;
            v8 = v18;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v18 = v8;
LABEL_13:
        *v18 = v15;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = *(a2 + 8);
  do
  {
    v6 = result;
    v7 = &result[v3];
    result = v7 + 1;
    v8 = 2 * v3;
    v3 = (2 * v3) | 1;
    v9 = v8 + 2;
    if (v9 < a3)
    {
      v12 = v7[2];
      v10 = v7 + 2;
      v11 = v12;
      v13 = *(v10 - 1);
      v14 = *(*v4 + 8 * v13);
      v15 = *(*v4 + 8 * v12);
      if (v14 > v15 || v14 == v15 && *(*v5 + 24 * v13) < *(*v5 + 24 * v11))
      {
        result = v10;
        v3 = v9;
      }
    }

    *v6 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::vector<geo::math::Matrix<double,3ul,1>> geo::math::Get2DConvexHull<double,3ul>(geo::math::iterator::Range<geo::math::Matrix<double,3ul,1> const*> const&)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    v9 = **a3;
    v10 = *(v9 + 8 * *v6);
    v11 = *(v9 + 8 * v8);
    if (v10 > v11 || v10 == v11 && *(*a3[1] + 24 * v7) < *(*a3[1] + 24 * v8))
    {
      *(a2 - 8) = v7;
      if (v4 >= 2)
      {
        v13 = a3[1];
        while (1)
        {
          v14 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v12 = (result + 8 * v5);
          v15 = *v12;
          v16 = *(v9 + 8 * *v12);
          if (v16 <= v11 && (v16 != v11 || *(*v13 + 24 * v15) >= *(*v13 + 24 * v8)))
          {
            break;
          }

          *v6 = v15;
          v6 = (result + 8 * v5);
          if (v14 <= 1)
          {
            goto LABEL_12;
          }
        }
      }

      v12 = v6;
LABEL_12:
      *v12 = v8;
    }
  }

  return result;
}

uint64_t geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::RangePolyline(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = *a2;
  *(a1 + 64) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 120) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v3 = (a1 + 120);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 72) = 0u;
  v4 = (a1 + 72);
  *(a1 + 136) = xmmword_2500D1250;
  *(a1 + 152) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  std::vector<float>::resize((a1 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3));
  v5 = *v4;
  v6 = *(v3 - 5);
  if (*v4 == v6)
  {
    v14 = 0;
  }

  else
  {
    v7 = 0;
    v8 = (v6 - v5 - 4) >> 2;
    v9 = vdupq_n_s64(v8);
    v10 = (v8 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v11 = (v5 + 8);
    do
    {
      v12 = vdupq_n_s64(v7);
      v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_2500C1680)));
      if (vuzp1_s16(v13, *v9.i8).u8[0])
      {
        *(v11 - 2) = v7;
      }

      if (vuzp1_s16(v13, *&v9).i8[2])
      {
        *(v11 - 1) = v7 + 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_2500C1670)))).i32[1])
      {
        *v11 = v7 + 2;
        v11[1] = v7 + 3;
      }

      v7 += 4;
      v11 += 4;
    }

    while (v10 != v7);
    v14 = v5;
  }

  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  if (v15 == v16)
  {
    v15 = 0;
    v16 = 0;
  }

  *a1 = v16;
  *(a1 + 8) = v15;
  if (v6 == v5)
  {
    v17 = 0;
  }

  else
  {
    v17 = v6;
  }

  *(a1 + 16) = v14;
  *(a1 + 24) = v17;
  geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::ComputeBoundingBox(a1, v20);
  v18 = v20[1];
  *v3 = v20[0];
  v3[1] = v18;
  v3[2] = v20[2];
  geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::InitNonSharedCumulativeLengths(a1);
  return a1;
}

uint64_t *geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::ComputeBoundingBox@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a2 + 16) = xmmword_2500D1250;
  *(a2 + 32) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v2 = result[2];
  v3 = result[3];
  if (v2 != v3)
  {
    v4 = *result;
    do
    {
      v5 = (v4 + 24 * *v2);
      v6 = a2;
      v7 = 3;
      do
      {
        v8 = *v5++;
        v9 = v8;
        v10 = *v6;
        if (v8 < *v6)
        {
          v10 = v9;
        }

        *v6 = v10;
        if (v6[3] >= v9)
        {
          v9 = v6[3];
        }

        v6[3] = v9;
        ++v6;
        --v7;
      }

      while (v7);
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::InitNonSharedCumulativeLengths(uint64_t *a1)
{
  std::vector<double>::resize(a1 + 12, (a1[3] - a1[2]) >> 2);
  if (a1[13] == a1[12])
  {
    v4 = 0;
  }

  else
  {
    v3 = a1[13];
    v4 = a1[12];
  }

  geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::InitNonSharedCumulativeLengths<geo::math::iterator::Range<double *>>(a1, v4, v2);
  v6 = a1[12];
  v5 = a1[13];
  if (v5 == v6)
  {
    v5 = 0;
    v6 = 0;
  }

  a1[4] = v6;
  a1[5] = v5;
}

double geo::math::RangePolyline<double,3ul,unsigned int,geo::math::Matrix<double,3,1> const*,unsigned int const*,double const*>::InitNonSharedCumulativeLengths<geo::math::iterator::Range<double *>>(uint64_t *a1, void *a2, __n128 a3)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v3 != v4)
  {
    *a2 = 0;
    v6 = *v4;
    v5 = v4 + 1;
    v7 = *a1;
    v8 = (*a1 + 24 * v6);
    a3 = *v8;
    v14 = *v8;
    v15 = v8[1].n128_u64[0];
    if (v5 != v3)
    {
      a3.n128_u64[0] = 0;
      do
      {
        v9 = 0;
        v10 = (v7 + 24 * *v5);
        v16 = 0uLL;
        v17 = 0;
        do
        {
          *(&v16 + v9 * 8) = v10->n128_f64[v9] - v14.n128_f64[v9];
          ++v9;
        }

        while (v9 != 3);
        v11 = 0;
        v12 = 0.0;
        do
        {
          v12 = v12 + *(&v16 + v11) * *(&v16 + v11);
          v11 += 8;
        }

        while (v11 != 24);
        a3.n128_f64[0] = a3.n128_f64[0] + sqrt(v12);
        a2[1] = a3.n128_u64[0];
        ++a2;
        v14 = *v10;
        v15 = v10[1].n128_u64[0];
        ++v5;
      }

      while (v5 != v3);
    }
  }

  return a3.n128_f64[0];
}

uint64_t geom_intersect_ray_bbox_2f(float *a1, float *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v12[0] = a5;
  v12[1] = a6;
  v11 = 0;
  v10 = 0;
  v9[0] = a3;
  v9[1] = a4;
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = &v11;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = &v10;
  }

  return geom::intersect_ray_bbox<float,(unsigned char)2>(v9, v12, v6, v7);
}

uint64_t geom::intersect_ray_bbox<float,(unsigned char)2>(float32x2_t *a1, float32x2_t *a2, float *a3, float *a4)
{
  *a3 = -INFINITY;
  *a4 = INFINITY;
  v4 = a1[1];
  if (fabsf(v4.f32[0]) <= 0.00001)
  {
    v12 = *a1;
    v13 = *a2;
    if ((vceq_f32(*a1, *a2).u8[0] & 1) == 0)
    {
      v14 = fabsf(v12.f32[0]);
      v15 = fabsf(v13.f32[0]);
      if (v14 == INFINITY || v15 == INFINITY)
      {
        if (vcgt_f32(v13, v12).u8[0])
        {
          goto LABEL_53;
        }
      }

      else if ((v13.f32[0] + (((v14 + v15) + 1.0) * -0.00001)) >= v12.f32[0])
      {
        goto LABEL_53;
      }
    }

    v17 = a2[1];
    if ((vceq_f32(v12, v17).u8[0] & 1) == 0)
    {
      v18 = fabsf(v12.f32[0]);
      v19 = fabsf(v17.f32[0]);
      if (v18 == INFINITY || v19 == INFINITY)
      {
        if (vcgt_f32(v12, v17).u8[0])
        {
          goto LABEL_53;
        }
      }

      else if ((v17.f32[0] + (((v18 + v19) + 1.0) * 0.00001)) <= v12.f32[0])
      {
        goto LABEL_53;
      }
    }

    v7 = INFINITY;
  }

  else
  {
    v5 = 1.0 / v4.f32[0];
    v6 = v5 * (COERCE_FLOAT(*a2) - COERCE_FLOAT(*a1));
    v7 = v5 * (COERCE_FLOAT(*&a2[1]) - COERCE_FLOAT(*a1));
    if (v7 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v7 < v6)
    {
      v7 = v6;
    }

    if (v8 < *a3)
    {
      v8 = *a3;
    }

    *a3 = v8;
    if (*a4 < v7)
    {
      v7 = *a4;
    }

    *a4 = v7;
    v9 = *a3;
    if (*a3 != v7)
    {
      v10 = fabsf(v9);
      if (v10 == INFINITY || (v11 = fabsf(v7), v11 == INFINITY))
      {
        if (v9 > v7)
        {
          goto LABEL_81;
        }
      }

      else if ((v7 + (((v10 + v11) + 1.0) * 0.00001)) <= v9)
      {
        goto LABEL_81;
      }
    }
  }

  v21 = a1[1].f32[1];
  if (fabsf(v21) > 0.00001)
  {
    v22 = 1.0 / v21;
    v23 = a1->f32[1];
    v24 = (1.0 / v21) * (a2->f32[1] - v23);
    v7 = v22 * (a2[1].f32[1] - v23);
    if (v7 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v7;
    }

    if (v7 < v24)
    {
      v7 = v24;
    }

    v26 = *a3;
    if (v25 >= *a3)
    {
      v26 = v25;
    }

    *a3 = v26;
    if (*a4 < v7)
    {
      v7 = *a4;
    }

    *a4 = v7;
    v27 = *a3;
    if (*a3 == v7)
    {
LABEL_51:
      if (v27 >= 0.0 || v7 >= 0.0)
      {
        if (v27 >= 0.0)
        {
          if (v27 != v7)
          {
            v40 = fabsf(v27);
            if (v40 == INFINITY)
            {
              return 2;
            }

            v41 = fabsf(v7);
            if (v41 == INFINITY || vabds_f32(v27, v7) >= (((v40 + v41) + 1.0) * 0.00001))
            {
              return 2;
            }
          }
        }

        else
        {
          *a3 = 0.0;
        }

        return 1;
      }

      goto LABEL_53;
    }

    v28 = fabsf(v27);
    if (v28 == INFINITY || (v29 = fabsf(v7), v29 == INFINITY))
    {
      if (v27 > v7)
      {
        goto LABEL_81;
      }
    }

    else if ((v7 + (((v28 + v29) + 1.0) * 0.00001)) <= v27)
    {
LABEL_81:
      result = 0;
      goto LABEL_82;
    }

LABEL_50:
    v27 = *a3;
    goto LABEL_51;
  }

  v30 = a1->f32[1];
  v31 = a2->f32[1];
  if (v30 != v31)
  {
    v34 = fabsf(v30);
    v35 = fabsf(v31);
    if (v34 == INFINITY || v35 == INFINITY)
    {
      if (v30 < v31)
      {
        goto LABEL_53;
      }
    }

    else if ((v31 + (((v34 + v35) + 1.0) * -0.00001)) >= v30)
    {
      goto LABEL_53;
    }
  }

  v32 = a2[1].f32[1];
  if (v30 == v32)
  {
    goto LABEL_50;
  }

  v37 = fabsf(v30);
  v38 = fabsf(v32);
  if (v37 == INFINITY || v38 == INFINITY)
  {
    if (v30 <= v32)
    {
      goto LABEL_50;
    }
  }

  else if ((v32 + (((v37 + v38) + 1.0) * 0.00001)) > v30)
  {
    goto LABEL_50;
  }

LABEL_53:
  result = 0;
LABEL_82:
  *a4 = INFINITY;
  *a3 = INFINITY;
  return result;
}

uint64_t geom_intersect_ray_bbox_2d(double *a1, double *a2, float64x2_t a3, __n128 a4, float64x2_t a5, float64x2_t a6)
{
  if (a1)
  {
    *a1 = -INFINITY;
    v6 = 0.0;
  }

  else
  {
    v6 = -INFINITY;
  }

  if (a2)
  {
    *a2 = INFINITY;
    v7 = 0.0;
  }

  else
  {
    v7 = INFINITY;
  }

  if (fabs(a4.n128_f64[0]) > 0.000001)
  {
    v8 = 1.0 / a4.n128_f64[0] * vsubq_f64(a5, a3).f64[0];
    v9 = vsubq_f64(a6, a3).f64[0];
    v10 = 1.0 / a4.n128_f64[0] * v9;
    if (v10 >= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1.0 / a4.n128_f64[0] * v9;
    }

    if (v10 < v8)
    {
      v10 = v8;
    }

    if (a1)
    {
      if (v11 < *a1)
      {
        v11 = *a1;
      }

      *a1 = v11;
      if (a2)
      {
LABEL_17:
        if (*a2 < v10)
        {
          v10 = *a2;
        }

        *a2 = v10;
        goto LABEL_31;
      }
    }

    else
    {
      if (v11 >= v6)
      {
        v6 = v11;
      }

      if (a2)
      {
        goto LABEL_17;
      }
    }

    if (v7 < v10)
    {
      v10 = v7;
    }

    v7 = v10;
LABEL_31:
    v12 = v6;
    if (a1)
    {
      v12 = *a1;
    }

    if (v12 != v10 && v10 + 0.000001 <= v12)
    {
      goto LABEL_66;
    }

    goto LABEL_38;
  }

  if ((vmovn_s64(vmvnq_s8(vceqq_f64(a3, a5))).u8[0] & 1) != 0 && a5.f64[0] + -0.000001 >= a3.f64[0])
  {
    goto LABEL_66;
  }

  v10 = INFINITY;
  if ((vmovn_s64(vmvnq_s8(vceqq_f64(a3, a6))).u32[0] & 1) != 0 && a6.f64[0] + 0.000001 <= a3.f64[0])
  {
    goto LABEL_66;
  }

LABEL_38:
  if (fabs(a4.n128_f64[1]) <= 0.000001)
  {
    if (a3.f64[1] != a5.f64[1] && a5.f64[1] + -0.000001 >= a3.f64[1] || a3.f64[1] != a6.f64[1] && a6.f64[1] + 0.000001 <= a3.f64[1])
    {
      goto LABEL_66;
    }

    if (a1)
    {
      v6 = *a1;
    }

    goto LABEL_64;
  }

  v14 = vmulq_n_f64(vsubq_f64(vzip2q_s64(a6, a5), vdupq_laneq_s64(a3, 1)), 1.0 / a4.n128_f64[1]);
  if (v14.f64[0] >= v14.f64[1])
  {
    v15 = v14.f64[1];
  }

  else
  {
    v15 = v14.f64[0];
  }

  if (v14.f64[0] < v14.f64[1])
  {
    v14.f64[0] = v14.f64[1];
  }

  if (a1)
  {
    if (v15 < *a1)
    {
      v15 = *a1;
    }

    *a1 = v15;
    if (a2)
    {
      goto LABEL_48;
    }

LABEL_78:
    if (v7 >= v14.f64[0])
    {
      v10 = v14.f64[0];
    }

    else
    {
      v10 = v7;
    }

    if (a1)
    {
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v15 >= v6)
  {
    v6 = v15;
  }

  if (!a2)
  {
    goto LABEL_78;
  }

LABEL_48:
  if (*a2 >= v14.f64[0])
  {
    v10 = v14.f64[0];
  }

  else
  {
    v10 = *a2;
  }

  *a2 = v10;
  if (a1)
  {
LABEL_52:
    v6 = *a1;
  }

LABEL_53:
  if (v6 != v10 && v10 + 0.000001 <= v6)
  {
    goto LABEL_66;
  }

LABEL_64:
  if (v10 < 0.0 && v6 < 0.0)
  {
LABEL_66:
    if (a2)
    {
      *a2 = INFINITY;
    }

    v17 = 0;
    if (a1)
    {
      *a1 = INFINITY;
    }

    return v17;
  }

  if (v6 >= 0.0)
  {
    if (vabdd_f64(v6, v10) <= 0.000001 || v6 == v10)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (a1)
    {
      *a1 = 0.0;
    }

    return 1;
  }
}

uint64_t geom_intersect_ray_bbox_3f(float *a1, __int32 *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v12[0] = a5;
  v12[1] = a6;
  v11 = 0;
  v10 = 0;
  v9[0] = a3;
  v9[1] = a4;
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = &v11;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = &v10;
  }

  return geom::intersect_ray_bbox<float,(unsigned char)3>(v9, v12, v6, v7);
}

uint64_t geom::intersect_ray_bbox<float,(unsigned char)3>(float32x4_t *a1, float32x4_t *a2, float *a3, __int32 *a4)
{
  *a3 = -INFINITY;
  *a4 = 2139095040;
  v4 = a1[1].f32[0];
  if (fabsf(v4) <= 0.00001)
  {
    v13 = *a1;
    v14 = *a2;
    if ((vmovn_s32(vceqq_f32(*a1, *a2)).u8[0] & 1) == 0)
    {
      v15 = fabsf(v13.f32[0]);
      v16 = fabsf(v14.f32[0]);
      if (v15 == INFINITY || v16 == INFINITY)
      {
        if (vmovn_s32(vcgtq_f32(v14, v13)).u8[0])
        {
          goto LABEL_115;
        }
      }

      else if ((v14.f32[0] + (((v15 + v16) + 1.0) * -0.00001)) >= v13.f32[0])
      {
        goto LABEL_115;
      }
    }

    v18 = a2[1];
    if ((vmovn_s32(vceqq_f32(v13, v18)).u8[0] & 1) == 0)
    {
      v19 = fabsf(v13.f32[0]);
      v20 = fabsf(v18.f32[0]);
      if (v19 == INFINITY || v20 == INFINITY)
      {
        if (vmovn_s32(vcgtq_f32(v13, v18)).u8[0])
        {
          goto LABEL_115;
        }
      }

      else if ((v18.f32[0] + (((v19 + v20) + 1.0) * 0.00001)) <= v13.f32[0])
      {
        goto LABEL_115;
      }
    }

    v7.i32[0] = 2139095040;
  }

  else
  {
    v5 = 1.0 / v4;
    v6 = v5 * (a2->f32[0] - a1->f32[0]);
    v7.f32[0] = v5 * (a2[1].f32[0] - a1->f32[0]);
    if (v7.f32[0] >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7.f32[0];
    }

    if (v7.f32[0] < v6)
    {
      v7.f32[0] = v6;
    }

    v9 = *a3;
    if (v8 >= *a3)
    {
      v9 = v8;
    }

    *a3 = v9;
    if (*a4 < v7.f32[0])
    {
      v7.i32[0] = *a4;
    }

    *a4 = v7.i32[0];
    v10 = *a3;
    if (*a3 != v7.f32[0])
    {
      v11 = fabsf(v10);
      if (v11 == INFINITY || (v12 = fabsf(v7.f32[0]), v12 == INFINITY))
      {
        if (v10 > v7.f32[0])
        {
          goto LABEL_111;
        }
      }

      else if ((v7.f32[0] + (((v11 + v12) + 1.0) * 0.00001)) <= v10)
      {
        goto LABEL_111;
      }
    }
  }

  v22 = a1[1].f32[1];
  if (fabsf(v22) <= 0.00001)
  {
    v31 = a1->f32[1];
    v32 = a2->f32[1];
    if (v31 != v32)
    {
      v43 = fabsf(v31);
      v44 = fabsf(v32);
      if (v43 == INFINITY || v44 == INFINITY)
      {
        if (v31 < v32)
        {
          goto LABEL_115;
        }
      }

      else if ((v32 + (((v43 + v44) + 1.0) * -0.00001)) >= v31)
      {
        goto LABEL_115;
      }
    }

    v33 = a2[1].f32[1];
    if (v31 != v33)
    {
      v46 = fabsf(v31);
      v47 = fabsf(v33);
      if (v46 == INFINITY || v47 == INFINITY)
      {
        if (v31 > v33)
        {
          goto LABEL_115;
        }
      }

      else if ((v33 + (((v46 + v47) + 1.0) * 0.00001)) <= v31)
      {
        goto LABEL_115;
      }
    }
  }

  else
  {
    v23 = 1.0 / v22;
    v24 = *a1;
    v25 = *a2;
    v7 = vmul_n_f32(vsub_f32(vzip2_s32(*a2[1].f32, *a2->f32), vdup_lane_s32(*a1->f32, 1)), v23);
    if (v7.f32[0] >= v7.f32[1])
    {
      v26 = v7.f32[1];
    }

    else
    {
      v26 = v7.f32[0];
    }

    if (v7.f32[0] < v7.f32[1])
    {
      v7.f32[0] = v7.f32[1];
    }

    v27 = *a3;
    if (v26 >= *a3)
    {
      v27 = v26;
    }

    *a3 = v27;
    if (*a4 < v7.f32[0])
    {
      v7.i32[0] = *a4;
    }

    *a4 = v7.i32[0];
    v28 = *a3;
    if (*a3 != v7.f32[0])
    {
      v29 = fabsf(v28);
      if (v29 == INFINITY || (v30 = fabsf(v7.f32[0]), v30 == INFINITY))
      {
        if (v28 > v7.f32[0])
        {
          goto LABEL_111;
        }
      }

      else if ((v7.f32[0] + (((v29 + v30) + 1.0) * 0.00001)) <= v28)
      {
        goto LABEL_111;
      }
    }
  }

  v34 = a1[1].f32[2];
  if (fabsf(v34) <= 0.00001)
  {
    v40 = a1->f32[2];
    v41 = a2->f32[2];
    if (v40 != v41)
    {
      v49 = fabsf(v40);
      if (v49 == INFINITY || (v50 = fabsf(v41), v50 == INFINITY))
      {
        if (v40 < v41)
        {
          goto LABEL_115;
        }
      }

      else if ((v41 + (((v49 + v50) + 1.0) * -0.00001)) >= v40)
      {
        goto LABEL_115;
      }
    }

    v42 = a2[1].f32[2];
    if (v40 == v42)
    {
      goto LABEL_67;
    }

    v52 = fabsf(v40);
    if (v52 == INFINITY || (v53 = fabsf(v42), v53 == INFINITY))
    {
      if (v40 <= v42)
      {
        goto LABEL_67;
      }
    }

    else if ((v42 + (((v52 + v53) + 1.0) * 0.00001)) > v40)
    {
      goto LABEL_67;
    }

LABEL_115:
    result = 0;
    goto LABEL_116;
  }

  v7 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a2[1], a2[1], 8uLL), *&vextq_s8(*a2, *a2, 8uLL)), vdup_laneq_s32(*a1, 2)), 1.0 / v34);
  if (v7.f32[0] >= v7.f32[1])
  {
    v35 = v7.f32[1];
  }

  else
  {
    v35 = v7.f32[0];
  }

  if (v7.f32[0] < v7.f32[1])
  {
    v7.f32[0] = v7.f32[1];
  }

  v36 = *a3;
  if (v35 >= *a3)
  {
    v36 = v35;
  }

  *a3 = v36;
  if (*a4 < v7.f32[0])
  {
    v7.i32[0] = *a4;
  }

  *a4 = v7.i32[0];
  v37 = *a3;
  if (*a3 == v7.f32[0])
  {
LABEL_68:
    if (v37 >= 0.0 || v7.f32[0] >= 0.0)
    {
      if (v37 >= 0.0)
      {
        if (v37 != v7.f32[0])
        {
          v54 = fabsf(v37);
          if (v54 == INFINITY)
          {
            return 2;
          }

          v55 = fabsf(v7.f32[0]);
          if (v55 == INFINITY || vabds_f32(v37, v7.f32[0]) >= (((v54 + v55) + 1.0) * 0.00001))
          {
            return 2;
          }
        }
      }

      else
      {
        *a3 = 0.0;
      }

      return 1;
    }

    goto LABEL_115;
  }

  v38 = fabsf(v37);
  if (v38 == INFINITY || (v39 = fabsf(v7.f32[0]), v39 == INFINITY))
  {
    if (v37 > v7.f32[0])
    {
      goto LABEL_111;
    }

    goto LABEL_67;
  }

  if ((v7.f32[0] + (((v38 + v39) + 1.0) * 0.00001)) > v37)
  {
LABEL_67:
    v37 = *a3;
    goto LABEL_68;
  }

LABEL_111:
  result = 0;
LABEL_116:
  *a4 = 2139095040;
  *a3 = INFINITY;
  return result;
}

uint64_t geom_intersect_ray_bbox_3d(_OWORD *a1, uint64_t a2, double *a3, uint64_t *a4)
{
  v8 = 0;
  v9 = 0;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  if (!a3)
  {
    a3 = &v9;
  }

  if (!a4)
  {
    a4 = &v8;
  }

  return geom::intersect_ray_bbox<double,(unsigned char)3>(v7, a2, a3, a4);
}

uint64_t geom::intersect_ray_bbox<double,(unsigned char)3>(uint64_t a1, uint64_t a2, double *a3, uint64_t *a4)
{
  *a3 = -INFINITY;
  *a4 = 0x7FF0000000000000;
  v4 = *(a1 + 32);
  if (fabs(*v4.i64) <= 0.000001)
  {
    v12 = *a1;
    if (*a1 != *a2 && *a2 + -0.000001 >= v12)
    {
      goto LABEL_74;
    }

    v14 = *(a2 + 32);
    if (v12 != v14 && v14 + 0.000001 <= v12)
    {
      goto LABEL_74;
    }

    v10 = *(a1 + 48);
    v11 = vextq_s8(v4, v4, 8uLL).u64[0];
    v4.i64[0] = 0x7FF0000000000000;
  }

  else
  {
    v5 = 1.0 / *v4.i64;
    v6 = v5 * (*a2 - *a1);
    *v4.i64 = v5 * (*(a2 + 32) - *a1);
    if (*v4.i64 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = *v4.i64;
    }

    if (*v4.i64 < v6)
    {
      *v4.i64 = v6;
    }

    v8 = *a3;
    if (v7 >= *a3)
    {
      v8 = v7;
    }

    *a3 = v8;
    if (*a4 < *v4.i64)
    {
      v4.i64[0] = *a4;
    }

    *a4 = v4.i64[0];
    if (*a3 != *v4.i64 && *v4.i64 + 0.000001 <= *a3)
    {
      goto LABEL_74;
    }

    v10 = *(a1 + 48);
    v11 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL).u64[0];
  }

  if (fabs(*&v11) <= 0.000001)
  {
    v26 = *(a1 + 8);
    v27 = *(a2 + 8);
    if (v26 != v27 && v27 + -0.000001 >= v26)
    {
      goto LABEL_74;
    }

    v29 = *(a2 + 40);
    if (v26 != v29 && v29 + 0.000001 <= v26)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v4 = vmulq_n_f64(vsubq_f64(vzip2q_s64(*(a2 + 32), *a2), vdupq_laneq_s64(*a1, 1)), 1.0 / *&v11);
    if (*v4.i64 >= *&v4.i64[1])
    {
      v16 = *&v4.i64[1];
    }

    else
    {
      v16 = *v4.i64;
    }

    if (*v4.i64 < *&v4.i64[1])
    {
      v4.i64[0] = v4.i64[1];
    }

    v17 = *a3;
    if (v16 >= *a3)
    {
      v17 = v16;
    }

    *a3 = v17;
    if (*a4 < *v4.i64)
    {
      v4.i64[0] = *a4;
    }

    *a4 = v4.i64[0];
    if (*a3 != *v4.i64 && *v4.i64 + 0.000001 <= *a3)
    {
      goto LABEL_74;
    }

    v10 = *(a1 + 48);
  }

  if (fabs(v10) <= 0.000001)
  {
    v30 = *(a1 + 16);
    v31 = *(a2 + 16);
    if (v30 != v31 && v31 + -0.000001 >= v30)
    {
      goto LABEL_74;
    }

    v32 = *(a2 + 48);
    if (v30 != v32 && v32 + 0.000001 <= v30)
    {
      goto LABEL_74;
    }

    v24 = *a3;
  }

  else
  {
    v19 = 1.0 / v10;
    v20 = *(a1 + 16);
    v21 = 1.0 / v10 * (*(a2 + 16) - v20);
    *v4.i64 = v19 * (*(a2 + 48) - v20);
    if (*v4.i64 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = *v4.i64;
    }

    if (*v4.i64 < v21)
    {
      *v4.i64 = v21;
    }

    v23 = *a3;
    if (v22 >= *a3)
    {
      v23 = v22;
    }

    *a3 = v23;
    if (*a4 < *v4.i64)
    {
      v4.i64[0] = *a4;
    }

    *a4 = v4.i64[0];
    v24 = *a3;
    if (*a3 != *v4.i64 && *v4.i64 + 0.000001 <= v24)
    {
      goto LABEL_74;
    }
  }

  if (v24 < 0.0 && *v4.i64 < 0.0)
  {
LABEL_74:
    v33 = 0;
    *a4 = 0x7FF0000000000000;
    *a3 = INFINITY;
    return v33;
  }

  if (v24 >= 0.0)
  {
    if (vabdd_f64(v24, *v4.i64) <= 0.000001 || v24 == *v4.i64)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    *a3 = 0.0;
    return 1;
  }
}

uint64_t geom_intersect_ray_line_2f(uint64_t a1, int a2, float *a3, float32x2_t a4, double a5, double a6, double a7, double a8, double a9)
{
  if ((*&a2 * *&a2) <= (vaddv_f32(vmul_f32(a1, a1)) * 1.0e-10))
  {
    v11 = 0;
  }

  else
  {
    v9 = fabsf(*(&a1 + 1)) > COERCE_FLOAT(a1 & 0x7FFFFFFF);
    v34 = a1;
    v10 = -*&a2 / *(&v34 | (4 * v9));
    v35 = 0;
    *(&v35 & 0xFFFFFFFFFFFFFFFBLL | (4 * v9)) = v10;
    v11 = v35;
  }

  *&a9 = -*(&a1 + 1);
  v12 = vzip1_s32(*&a9, a1);
  v13 = vmul_f32(*&a5, *&a5);
  v14 = vaddv_f32(v13);
  v15 = vmul_f32(v12, v12);
  v16 = vaddv_f32(v15);
  *&a9 = fabsf(v14);
  v17 = fabsf(v16);
  if (*&a9 <= 0.00000011921 && v17 <= 0.00000011921)
  {
    v27 = vsub_f32(a4, v11);
    v28 = sqrtf(vaddv_f32(vmul_f32(v27, v27)));
    v26 = 0.0;
    if (v28 > 0.00001)
    {
      v29 = 0;
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v19 = vsub_f32(v11, a4);
  v20 = vadd_f32(v13, vdup_lane_s32(v13, 1));
  if (*&a9 <= 0.00000011921 || v17 <= 0.00000011921)
  {
    v22 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, *&a9), 0), v12, *&a5);
    v23 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, *&a9), 0), vneg_f32(v19), v19);
    if (*&a9 > 0.00000011921)
    {
      v24 = v14;
    }

    else
    {
      v24 = v16;
    }

    if ((((-v22.f32[1] * v23.f32[0]) + (v22.f32[0] * v23.f32[1])) * ((-v22.f32[1] * v23.f32[0]) + (v22.f32[0] * v23.f32[1]))) <= (v24 * 1.0e-10))
    {
      v25 = vmul_f32(v22, v23);
      LODWORD(v26) = vdiv_f32(vadd_f32(v25, vdup_lane_s32(v25, 1)), v20).u32[0];
      if (*&a9 <= 0.00000011921)
      {
        v26 = 0.0;
      }

      goto LABEL_24;
    }

LABEL_26:
    v29 = 0;
    v26 = 0.0;
    goto LABEL_28;
  }

  v30 = vmuls_lane_f32(*(&a1 + 1), *&a5, 1) + (*&a5 * *&a1);
  if (fabsf(v30 * v30) > (1.0e-10 * vmul_f32(v20, vadd_f32(v15, vdup_lane_s32(v15, 1))).f32[0]))
  {
    v26 = (vmuls_lane_f32(*(&a1 + 1), v19, 1) + (v19.f32[0] * *&a1)) / v30;
LABEL_24:
    v29 = 1;
    goto LABEL_28;
  }

  v31 = vmul_f32(v19, v19);
  if (fabsf(((v19.f32[0] * *(&a5 + 1)) - (v19.f32[1] * *&a5)) * ((v19.f32[0] * *(&a5 + 1)) - (v19.f32[1] * *&a5))) > (1.0e-10 * vmul_f32(v20, vadd_f32(v31, vdup_lane_s32(v31, 1))).f32[0]))
  {
    goto LABEL_26;
  }

  v32 = vmul_f32(*&a5, v19);
  LODWORD(v26) = vdiv_f32(vadd_f32(v32, vdup_lane_s32(v32, 1)), v20).u32[0];
  v29 = 2;
LABEL_28:
  if (v26 >= 0.0)
  {
    result = v29;
  }

  else
  {
    result = 0;
  }

  if (a3)
  {
    if (!result)
    {
      v26 = INFINITY;
    }

    *a3 = v26;
  }

  return result;
}

uint64_t geom_intersect_ray_line_2d(float64x2_t *a1, double *a2, float64x2_t a3, float64x2_t a4, double a5, double a6, float64x2_t a7, double a8, int64x2_t a9)
{
  v9 = *a1;
  v10 = a1[1].f64[0];
  v11 = a1->f64[1];
  if (v10 * v10 <= vaddvq_f64(vmulq_f64(v9, v9)) * 1.0e-12)
  {
    v14 = 0uLL;
  }

  else
  {
    v12 = fabs(v9.f64[1]) > fabs(v9.f64[0]);
    v37 = *a1;
    v13 = -v10 / *(&v37 | (8 * v12));
    a9.i64[1] = 0;
    v38 = 0u;
    *(&v38 & 0xFFFFFFFFFFFFFFF7 | (8 * v12)) = v13;
    v14 = v38;
  }

  *a9.i64 = -v11;
  v15 = vzip1q_s64(a9, v9);
  v16 = vmulq_f64(a4, a4);
  v17 = vaddvq_f64(v16);
  v18 = vmulq_f64(v15, v15);
  v19 = vaddvq_f64(v18);
  *a9.i64 = fabs(v17);
  v20 = fabs(v19);
  if (*a9.i64 <= 2.22044605e-16 && v20 <= 2.22044605e-16)
  {
    v30 = vsubq_f64(a3, v14);
    v31 = sqrt(vaddvq_f64(vmulq_f64(v30, v30)));
    v29 = 0.0;
    if (v31 > 0.000001)
    {
      v32 = 0;
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v22 = vsubq_f64(v14, a3);
  v23 = vaddq_f64(v16, vdupq_laneq_s64(v16, 1));
  v16.f64[0] = 2.22044605e-16;
  if (*a9.i64 <= 2.22044605e-16 || v20 <= 2.22044605e-16)
  {
    v25 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(v16, a9).i64[0], 0), v15, a4);
    a7.f64[0] = 2.22044605e-16;
    v26 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(a7, a9).i64[0], 0), vnegq_f64(v22), v22);
    if (*a9.i64 > 2.22044605e-16)
    {
      v27 = v17;
    }

    else
    {
      v27 = v19;
    }

    if ((-v25.f64[1] * v26.f64[0] + v25.f64[0] * v26.f64[1]) * (-v25.f64[1] * v26.f64[0] + v25.f64[0] * v26.f64[1]) <= v27 * 1.0e-12)
    {
      v28 = vmulq_f64(v25, v26);
      *&v29 = *&vdivq_f64(vaddq_f64(v28, vdupq_laneq_s64(v28, 1)), v23);
      if (*a9.i64 <= 2.22044605e-16)
      {
        v29 = 0.0;
      }

      goto LABEL_24;
    }

LABEL_26:
    v32 = 0;
    v29 = 0.0;
    goto LABEL_28;
  }

  v33 = vmuld_lane_f64(v11, a4, 1) + a4.f64[0] * v9.f64[0];
  if (fabs(v33 * v33) > 1.0e-12 * vmulq_f64(v23, vaddq_f64(v18, vdupq_laneq_s64(v18, 1))).f64[0])
  {
    v29 = (vmuld_lane_f64(v11, v22, 1) + v22.f64[0] * v9.f64[0]) / v33;
LABEL_24:
    v32 = 1;
    goto LABEL_28;
  }

  v34 = vmulq_f64(v22, v22);
  if (fabs((v22.f64[0] * a4.f64[1] - v22.f64[1] * a4.f64[0]) * (v22.f64[0] * a4.f64[1] - v22.f64[1] * a4.f64[0])) > 1.0e-12 * vmulq_f64(v23, vaddq_f64(v34, vdupq_laneq_s64(v34, 1))).f64[0])
  {
    goto LABEL_26;
  }

  v35 = vmulq_f64(a4, v22);
  *&v29 = *&vdivq_f64(vaddq_f64(v35, vdupq_laneq_s64(v35, 1)), v23);
  v32 = 2;
LABEL_28:
  if (v29 >= 0.0)
  {
    result = v32;
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
    if (!result)
    {
      v29 = INFINITY;
    }

    *a2 = v29;
  }

  return result;
}

uint64_t geom_intersect_ray_line_segment_2f(float *a1, int *a2, float32x2_t a3, double a4, float32x2_t a5, float32x2_t a6, double a7, double a8)
{
  v8 = vsub_f32(a6, a5);
  v9 = vmul_f32(*&a4, *&a4);
  v10 = vaddv_f32(v9);
  v11 = vmul_f32(v8, v8);
  v12 = vaddv_f32(v11);
  *&a8 = fabsf(v10);
  v13 = fabsf(v12);
  if (*&a8 > 0.00000011921 || v13 > 0.00000011921)
  {
    v15 = vsub_f32(a5, a3);
    if (*&a8 > 0.00000011921)
    {
      v16 = v10;
    }

    else
    {
      v16 = v12;
    }

    if (*&a8 > 0.00000011921 && v13 > 0.00000011921)
    {
      v27 = vadd_f32(v9, vdup_lane_s32(v9, 1));
      v28 = (-*(&a4 + 1) * v8.f32[0]) + (*&a4 * v8.f32[1]);
      if (fabsf(v28 * v28) <= (1.0e-10 * vmul_f32(v27, vadd_f32(v11, vdup_lane_s32(v11, 1))).f32[0]))
      {
        v30 = vmul_f32(v15, v15);
        if (fabsf(((v15.f32[0] * *(&a4 + 1)) - (v15.f32[1] * *&a4)) * ((v15.f32[0] * *(&a4 + 1)) - (v15.f32[1] * *&a4))) > (1.0e-10 * vmul_f32(v27, vadd_f32(v30, vdup_lane_s32(v30, 1))).f32[0]))
        {
          goto LABEL_21;
        }

        v31 = vmul_f32(*&a4, v15);
        v32 = vdiv_f32(vadd_f32(v31, vdup_lane_s32(v31, 1)), v27);
        v33 = vmul_f32(*&a4, vadd_f32(v15, v8));
        v34 = vdiv_f32(vadd_f32(v33, vdup_lane_s32(v33, 1)), v27);
        if (v32.f32[0] < 0.0 && v34.f32[0] < 0.0)
        {
          goto LABEL_21;
        }

        v35 = vcgt_f32(v32, v34).u8[0];
        if (v35)
        {
          v22 = v34.f32[0];
        }

        else
        {
          v22 = v32.f32[0];
        }

        if (v35)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = 1.0;
        }

        v24 = 2;
        goto LABEL_28;
      }

      v22 = ((v15.f32[0] * v8.f32[1]) - (v15.f32[1] * v8.f32[0])) / v28;
      v21 = ((v15.f32[0] * *(&a4 + 1)) - (v15.f32[1] * *&a4)) / v28;
    }

    else
    {
      v18 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, *&a8), 0), v8, *&a4);
      v19 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, *&a8), 0), vneg_f32(v15), v15);
      if ((((-v18.f32[1] * v19.f32[0]) + (v18.f32[0] * v19.f32[1])) * ((-v18.f32[1] * v19.f32[0]) + (v18.f32[0] * v19.f32[1]))) > (v16 * 1.0e-10))
      {
LABEL_21:
        v24 = 0;
        v25 = INFINITY;
        v26 = 2143289344;
        goto LABEL_29;
      }

      v20 = vaddv_f32(vmul_f32(v18, v19)) / v16;
      v21 = 0.0;
      if (*&a8 > 0.00000011921)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0.0;
      }

      if (v13 > 0.00000011921)
      {
        v21 = v20;
      }
    }
  }

  else
  {
    v23 = vsub_f32(a3, a5);
    v22 = 0.0;
    v21 = 0.0;
    if (sqrtf(vaddv_f32(vmul_f32(v23, v23))) > 0.00001)
    {
      goto LABEL_21;
    }
  }

  v24 = 0;
  v25 = INFINITY;
  v26 = 2143289344;
  if (v22 >= 0.0 && v21 >= 0.0 && v21 <= 1.0)
  {
    v24 = 1;
LABEL_28:
    v25 = fmaxf(v22, 0.0);
    v26 = LODWORD(v21);
  }

LABEL_29:
  if (a1)
  {
    *a1 = v25;
  }

  if (a2)
  {
    *a2 = v26;
  }

  return v24;
}

uint64_t geom_intersect_ray_line_segment_2d(double *a1, uint64_t *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, double a7, float64x2_t a8)
{
  v9 = vsubq_f64(a6, a5);
  v10 = vmulq_f64(a4, a4);
  v11 = vaddvq_f64(v10);
  v12 = vmulq_f64(v9, v9);
  v13 = vaddvq_f64(v12);
  a8.f64[0] = fabs(v11);
  v14 = fabs(v13);
  if (a8.f64[0] > 2.22044605e-16 || v14 > 2.22044605e-16)
  {
    v16 = vsubq_f64(a5, a3);
    v8.f64[0] = 2.22044605e-16;
    if (a8.f64[0] > 2.22044605e-16)
    {
      v17 = v11;
    }

    else
    {
      v17 = v13;
    }

    if (a8.f64[0] > 2.22044605e-16 && v14 > 2.22044605e-16)
    {
      v28 = vaddq_f64(v10, vdupq_laneq_s64(v10, 1));
      v29 = -a4.f64[1] * v9.f64[0] + a4.f64[0] * v9.f64[1];
      if (fabs(v29 * v29) <= 1.0e-12 * vmulq_f64(v28, vaddq_f64(v12, vdupq_laneq_s64(v12, 1))).f64[0])
      {
        v31 = vmulq_f64(v16, v16);
        if (fabs((v16.f64[0] * a4.f64[1] - v16.f64[1] * a4.f64[0]) * (v16.f64[0] * a4.f64[1] - v16.f64[1] * a4.f64[0])) > 1.0e-12 * vmulq_f64(v28, vaddq_f64(v31, vdupq_laneq_s64(v31, 1))).f64[0])
        {
          goto LABEL_21;
        }

        v32 = vmulq_f64(a4, v16);
        v33 = vdivq_f64(vaddq_f64(v32, vdupq_laneq_s64(v32, 1)), v28);
        v34 = vmulq_f64(a4, vaddq_f64(v16, v9));
        v35 = vdivq_f64(vaddq_f64(v34, vdupq_laneq_s64(v34, 1)), v28);
        if (v33.f64[0] < 0.0 && v35.f64[0] < 0.0)
        {
          goto LABEL_21;
        }

        v36 = vmovn_s64(vcgtq_f64(v33, v35)).u8[0];
        if (v36)
        {
          v23 = v35.f64[0];
        }

        else
        {
          v23 = v33.f64[0];
        }

        if (v36)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = 1.0;
        }

        v25 = 2;
        goto LABEL_28;
      }

      v23 = (v16.f64[0] * v9.f64[1] - v16.f64[1] * v9.f64[0]) / v29;
      v22 = (v16.f64[0] * a4.f64[1] - v16.f64[1] * a4.f64[0]) / v29;
    }

    else
    {
      v19 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(v8, a8).i64[0], 0), v9, a4);
      v9.f64[0] = 2.22044605e-16;
      v20 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(v9, a8).i64[0], 0), vnegq_f64(v16), v16);
      if ((-v19.f64[1] * v20.f64[0] + v19.f64[0] * v20.f64[1]) * (-v19.f64[1] * v20.f64[0] + v19.f64[0] * v20.f64[1]) > v17 * 1.0e-12)
      {
LABEL_21:
        v25 = 0;
        v26 = INFINITY;
        v27 = 0x7FF8000000000000;
        goto LABEL_29;
      }

      v21 = vaddvq_f64(vmulq_f64(v19, v20)) / v17;
      v22 = 0.0;
      if (a8.f64[0] > 2.22044605e-16)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0.0;
      }

      if (v14 > 2.22044605e-16)
      {
        v22 = v21;
      }
    }
  }

  else
  {
    v24 = vsubq_f64(a3, a5);
    v23 = 0.0;
    v22 = 0.0;
    if (sqrt(vaddvq_f64(vmulq_f64(v24, v24))) > 0.000001)
    {
      goto LABEL_21;
    }
  }

  v25 = 0;
  v26 = INFINITY;
  v27 = 0x7FF8000000000000;
  if (v23 >= 0.0 && v22 >= 0.0 && v22 <= 1.0)
  {
    v25 = 1;
LABEL_28:
    v26 = fmax(v23, 0.0);
    v27 = *&v22;
  }

LABEL_29:
  if (a1)
  {
    *a1 = v26;
  }

  if (a2)
  {
    *a2 = v27;
  }

  return v25;
}

uint64_t geom_intersect_ray_ray_2f(float *a1, float *a2, float32x2_t a3, double a4, float32x2_t a5, double a6)
{
  v6 = vmul_f32(*&a4, *&a4);
  v7 = vmul_f32(*&a6, *&a6);
  v8 = vadd_f32(vzip1_s32(v7, v6), vzip2_s32(v7, v6));
  v9 = vcge_f32(0x3400000034000000, vabs_f32(v8));
  if (v9.i32[1] & v9.i32[0])
  {
    v10 = vsub_f32(a3, a5);
    v11 = 0.0;
    v27 = sqrtf(vaddv_f32(vmul_f32(v10, v10))) > 0.00001;
    v12 = 0.0;
    if (!v27)
    {
      goto LABEL_24;
    }

LABEL_28:
    v21 = 0;
    v12 = INFINITY;
    v11 = INFINITY;
    goto LABEL_29;
  }

  v13 = vsub_f32(a5, a3);
  if (v9.i8[4])
  {
    v14 = v8.f32[0];
  }

  else
  {
    v14 = v8.f32[1];
  }

  if (v9.i8[4])
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v9.i8[4] | v9.i8[0]))
  {
    v16 = vbsl_s8(vdup_n_s32(v15), *&a6, *&a4);
    if (v9.i8[4])
    {
      v17 = -1;
    }

    else
    {
      v17 = 0;
    }

    v18 = vbsl_s8(vdup_n_s32(v17), vneg_f32(v13), v13);
    if ((((-v16.f32[1] * v18.f32[0]) + (v16.f32[0] * v18.f32[1])) * ((-v16.f32[1] * v18.f32[0]) + (v16.f32[0] * v18.f32[1]))) > (v14 * 1.0e-10))
    {
      goto LABEL_28;
    }

    v12 = vaddv_f32(vmul_f32(v16, v18)) / v14;
    if (v9.i8[4])
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v12;
    }

    if (v9.i8[0])
    {
      v12 = 0.0;
    }

LABEL_24:
    if (v11 >= 0.0 && v12 >= 0.0)
    {
      v21 = 1;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v19 = (-*(&a4 + 1) * *&a6) + (*&a4 * *(&a6 + 1));
  v20 = (v8.f32[1] * v8.f32[0]) * 1.0e-10;
  if (fabsf(v19 * v19) > v20)
  {
    v11 = ((v13.f32[0] * *(&a6 + 1)) - (v13.f32[1] * *&a6)) / v19;
    v12 = ((v13.f32[0] * *(&a4 + 1)) - (v13.f32[1] * *&a4)) / v19;
    goto LABEL_24;
  }

  if (fabsf(((v13.f32[0] * *(&a4 + 1)) - (v13.f32[1] * *&a4)) * ((v13.f32[0] * *(&a4 + 1)) - (v13.f32[1] * *&a4))) > ((v8.f32[1] * vaddv_f32(vmul_f32(v13, v13))) * 1.0e-10))
  {
    goto LABEL_28;
  }

  v23 = vmul_f32(*&a4, v13);
  v24 = vmul_f32(*&a6, vneg_f32(v13));
  v25 = vdiv_f32(vadd_f32(vzip1_s32(v24, v23), vzip2_s32(v24, v23)), v8);
  v26 = fabsf(vmul_f32(v25, v25).f32[0]);
  v12 = 0.0;
  v27 = fabsf(vmuls_lane_f32(v25.f32[1], v25, 1)) > v20 || v26 > v20;
  if (!v27)
  {
    v21 = 1;
LABEL_43:
    v11 = 0.0;
    goto LABEL_29;
  }

  if (v25.f32[1] < 0.0 && v25.f32[0] < 0.0)
  {
    goto LABEL_28;
  }

  v28 = vcgez_f32(v25);
  if (v28.i32[1] & v28.i32[0])
  {
    v21 = 2;
    goto LABEL_43;
  }

  if (v25.f32[1] >= 0.0)
  {
    v11 = v25.f32[1];
  }

  else
  {
    v11 = 0.0;
  }

  if (v25.f32[0] >= 0.0)
  {
    v12 = v25.f32[0];
  }

  v21 = 2;
LABEL_29:
  if (a1)
  {
    *a1 = v11;
  }

  if (a2)
  {
    *a2 = v12;
  }

  return v21;
}

uint64_t geom_intersect_ray_ray_2d(double *a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  v6 = vpaddq_f64(vmulq_f64(a6, a6), vmulq_f64(a4, a4));
  v7 = vmovn_s64(vcgeq_f64(vdupq_n_s64(0x3CB0000000000000uLL), vabsq_f64(v6)));
  v8 = v7.i8[4];
  v9 = v7.i8[0];
  if (v7.i32[1] & v7.i32[0])
  {
    v10 = vsubq_f64(a3, a5);
    v11 = 0.0;
    v25 = sqrt(vaddvq_f64(vmulq_f64(v10, v10))) > 0.000001;
    v12 = 0.0;
    if (!v25)
    {
      goto LABEL_24;
    }

LABEL_28:
    v21 = 0;
    v12 = INFINITY;
    v11 = INFINITY;
    goto LABEL_29;
  }

  v13 = vsubq_f64(a5, a3);
  if (v7.i8[4])
  {
    v14 = v6.f64[0];
  }

  else
  {
    v14 = v6.f64[1];
  }

  if (v8)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if ((v8 | v9))
  {
    v16 = vbslq_s8(vdupq_n_s64(v15), a6, a4);
    if (v8)
    {
      v17 = -1;
    }

    else
    {
      v17 = 0;
    }

    v18 = vbslq_s8(vdupq_n_s64(v17), vnegq_f64(v13), v13);
    if ((-v16.f64[1] * v18.f64[0] + v16.f64[0] * v18.f64[1]) * (-v16.f64[1] * v18.f64[0] + v16.f64[0] * v18.f64[1]) > v14 * 1.0e-12)
    {
      goto LABEL_28;
    }

    v12 = vaddvq_f64(vmulq_f64(v16, v18)) / v14;
    if (v8)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v12;
    }

    if (v9)
    {
      v12 = 0.0;
    }

LABEL_24:
    if (v11 >= 0.0 && v12 >= 0.0)
    {
      v21 = 1;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v19 = -a4.f64[1] * a6.f64[0] + a4.f64[0] * a6.f64[1];
  v20 = v6.f64[1] * v6.f64[0] * 1.0e-12;
  if (fabs(v19 * v19) > v20)
  {
    v11 = (v13.f64[0] * a6.f64[1] - v13.f64[1] * a6.f64[0]) / v19;
    v12 = (v13.f64[0] * a4.f64[1] - v13.f64[1] * a4.f64[0]) / v19;
    goto LABEL_24;
  }

  if (fabs((v13.f64[0] * a4.f64[1] - v13.f64[1] * a4.f64[0]) * (v13.f64[0] * a4.f64[1] - v13.f64[1] * a4.f64[0])) > v6.f64[1] * vaddvq_f64(vmulq_f64(v13, v13)) * 1.0e-12)
  {
    goto LABEL_28;
  }

  v23 = vdivq_f64(vpaddq_f64(vmulq_f64(a6, vnegq_f64(v13)), vmulq_f64(a4, v13)), v6);
  v11 = v23.f64[1];
  v24 = fabs(vmulq_f64(v23, v23).f64[0]);
  v12 = 0.0;
  v25 = fabs(vmuld_lane_f64(v23.f64[1], v23, 1)) > v20 || v24 > v20;
  if (!v25)
  {
    v21 = 1;
LABEL_43:
    v11 = 0.0;
    goto LABEL_29;
  }

  if (v23.f64[1] < 0.0 && v23.f64[0] < 0.0)
  {
    goto LABEL_28;
  }

  v26 = vmovn_s64(vcgezq_f64(v23));
  if (v26.i32[1] & v26.i32[0])
  {
    v21 = 2;
    goto LABEL_43;
  }

  if (v23.f64[1] < 0.0)
  {
    v11 = 0.0;
  }

  if (v23.f64[0] >= 0.0)
  {
    v12 = v23.f64[0];
  }

  v21 = 2;
LABEL_29:
  if (a1)
  {
    *a1 = v11;
  }

  if (a2)
  {
    *a2 = v12;
  }

  return v21;
}

uint64_t geom_intersect_line_line_2f(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  v5 = vmul_f32(a1, a1);
  v6 = vmul_f32(a3, a3);
  v7 = vaddv_f32(v6);
  if (vaddv_f32(v5) <= 0.00000011921 || v7 <= 0.00000011921)
  {
    return 0;
  }

  v10 = *&a2;
  v11 = *&a1;
  v12 = vadd_f32(v6, vdup_lane_s32(v6, 1));
  v13 = (*&a1 * *(&a3 + 1)) - (*(&a1 + 1) * *&a3);
  v14 = 1.0e-10 * vmul_f32(vadd_f32(v5, vdup_lane_s32(v5, 1)), v12).f32[0];
  if ((v13 * v13) <= v14)
  {
    v26[0] = a1;
    v26[1] = a3;
    v16 = 4;
    v17 = v26;
    do
    {
      if (v11 < *(v26 + v16))
      {
        v11 = *(v26 + v16);
        v17 = v26 + v16;
      }

      v16 += 4;
    }

    while (v16 != 16);
    v18 = vceqd_s64((v17 - v26) & 0x3F8, 0);
    v19 = vbsl_s8(v18, a1, a3);
    v20 = vbsl_s8(v18, a3, a1);
    if (((v17 - v26) & 0x3F8) != 0)
    {
      v21 = *&a4;
    }

    else
    {
      v21 = *&a2;
    }

    if (((v17 - v26) & 0x3F8) == 0)
    {
      v10 = *&a4;
    }

    v24 = v20;
    v22 = *(&v24 | (4 * (((v17 - v26) >> 2) & 1))) * v21;
    v25 = v19;
    v23 = *(&v25 & 0xFFFFFFFFFFFFFFFBLL | (4 * (((v17 - v26) >> 2) & 1)));
    return 2 * (((v10 - (v22 / v23)) * (v10 - (v22 / v23))) <= v14);
  }

  else
  {
    if (a5)
    {
      *&v15 = ((*(&a1 + 1) * *&a4) - (*(&a3 + 1) * *&a2)) / v13;
      *(&v15 + 1) = ((*&a1 * *&a4) - (*&a3 * *&a2)) / -v13;
      *a5 = v15;
    }

    return 1;
  }
}

uint64_t geom_intersect_line_line_2d(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 16);
  v23 = *a1;
  v24 = v3;
  v4 = *(a2 + 16);
  v21 = *a2;
  v22 = v4;
  v5 = v23;
  v6 = vmulq_f64(v5, v5);
  v7 = vmulq_f64(v21, v21);
  v8 = vaddvq_f64(v7);
  if (vaddvq_f64(v6) <= 2.22044605e-16 || v8 <= 2.22044605e-16)
  {
    return 0;
  }

  v11 = *&v24;
  v12 = vmuld_lane_f64(-v21.f64[0], v23, 1) + v23.f64[0] * v21.f64[1];
  v13 = 1.0e-12 * vmulq_f64(vaddq_f64(v6, vdupq_laneq_s64(v6, 1)), vaddq_f64(v7, vdupq_laneq_s64(v7, 1))).f64[0];
  if (v12 * v12 <= v13)
  {
    v25[0] = v23;
    v25[1] = v21;
    v15 = 8;
    v16 = v25;
    do
    {
      if (v5.f64[0] < *(v25 + v15))
      {
        v5.f64[0] = *(v25 + v15);
        v16 = v25 + v15;
      }

      v15 += 8;
    }

    while (v15 != 32);
    v17 = &v21;
    if (((v16 - v25) & 0x7F0) != 0)
    {
      v18 = &v21;
    }

    else
    {
      v18 = &v23;
    }

    if (((v16 - v25) & 0x7F0) != 0)
    {
      v19 = *&v22;
    }

    else
    {
      v19 = *&v24;
    }

    if (((v16 - v25) & 0x7F0) != 0)
    {
      v17 = &v23;
    }

    else
    {
      v11 = *&v22;
    }

    v20 = v11 - *(v17 | v16 & 8) * v19 / *(v18 | v16 & 8);
    return 2 * (v20 * v20 <= v13);
  }

  else
  {
    if (a3)
    {
      *&v14 = (v23.f64[1] * *&v22 - v21.f64[1] * *&v24) / v12;
      *(&v14 + 1) = (*&v24 * -v21.f64[0] + v23.f64[0] * *&v22) / -v12;
      *a3 = v14;
    }

    return 1;
  }
}

uint64_t geom_intersect_line_line_segment_2f(uint64_t a1, int a2, float *a3, float32x2_t a4, float32x2_t a5, double a6, double a7, double a8, double _D5)
{
  if ((*&a2 * *&a2) <= (vaddv_f32(vmul_f32(a1, a1)) * 1.0e-10))
  {
    v12 = 0;
  }

  else
  {
    v10 = fabsf(*(&a1 + 1)) > COERCE_FLOAT(a1 & 0x7FFFFFFF);
    v41 = a1;
    v11 = -*&a2 / *(&v41 | (4 * v10));
    v42 = 0;
    *(&v42 & 0xFFFFFFFFFFFFFFFBLL | (4 * v10)) = v11;
    v12 = v42;
  }

  *&_D5 = -*(&a1 + 1);
  v13 = vzip1_s32(*&_D5, a1);
  _D1 = vsub_f32(a5, a4);
  v15 = vmul_f32(v13, v13);
  v16 = vaddv_f32(v15);
  v17 = vmul_f32(_D1, _D1);
  v18 = vaddv_f32(v17);
  v9.f32[0] = fabsf(v16);
  v19 = fabsf(v18);
  if (v19 <= 0.00000011921 && v9.f32[0] <= 0.00000011921)
  {
    v27 = vsub_f32(v12, a4);
    v28 = sqrtf(vaddv_f32(vmul_f32(v27, v27)));
    v26 = 0.0;
    if (v28 > 0.00001)
    {
      v29 = 0;
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v21 = vsub_f32(a4, v12);
  if (v9.f32[0] > 0.00000011921)
  {
    v22 = v16;
  }

  else
  {
    v22 = v18;
  }

  if (v19 <= 0.00000011921 || v9.f32[0] <= 0.00000011921)
  {
    v24 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, v9), 0), _D1, v13);
    v25 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, v9), 0), vneg_f32(v21), v21);
    if ((((-v24.f32[1] * v25.f32[0]) + (v24.f32[0] * v25.f32[1])) * ((-v24.f32[1] * v25.f32[0]) + (v24.f32[0] * v25.f32[1]))) <= (v22 * 1.0e-10))
    {
      v26 = vaddv_f32(vmul_f32(v24, v25)) / v22;
      if (v19 <= 0.00000011921)
      {
        v26 = 0.0;
      }

      goto LABEL_24;
    }

LABEL_26:
    v29 = 0;
    v26 = 0.0;
    goto LABEL_28;
  }

  v30 = vadd_f32(v15, vdup_lane_s32(v15, 1));
  v31 = vadd_f32(v17, vdup_lane_s32(v17, 1));
  __asm { FMLA            S16, S5, V1.S[1] }

  if (fabsf(_S16 * _S16) > (1.0e-10 * vmul_f32(v31, v30).f32[0]))
  {
    v26 = (vmuls_lane_f32(*(&a1 + 1), v21, 1) + (v21.f32[0] * *&a1)) / _S16;
LABEL_24:
    v29 = 1;
    goto LABEL_28;
  }

  v36 = vmul_f32(v21, v21);
  v37 = vmuls_lane_f32(*(&a1 + 1), v21, 1);
  if (fabsf((v37 + (v21.f32[0] * *&a1)) * (v37 + (v21.f32[0] * *&a1))) > (1.0e-10 * vmul_f32(v30, vadd_f32(v36, vdup_lane_s32(v36, 1))).f32[0]))
  {
    goto LABEL_26;
  }

  v38 = vmul_f32(_D1, vneg_f32(v21));
  LODWORD(v26) = vdiv_f32(vadd_f32(v38, vdup_lane_s32(v38, 1)), v31).u32[0];
  v29 = 2;
LABEL_28:
  if (v26 > 1.0 || v26 < 0.0)
  {
    result = 0;
  }

  else
  {
    result = v29;
  }

  if (a3)
  {
    if (!result)
    {
      v26 = NAN;
    }

    *a3 = v26;
  }

  return result;
}

uint64_t geom_intersect_line_line_segment_2d(float64x2_t *a1, double *a2, float64x2_t a3, float64x2_t a4, double a5, double a6, double a7, double a8, int64x2_t _Q6)
{
  v11 = *a1;
  v12 = a1[1].f64[0];
  v13 = a1->f64[1];
  if (v12 * v12 <= vaddvq_f64(vmulq_f64(v11, v11)) * 1.0e-12)
  {
    v16 = 0uLL;
  }

  else
  {
    v14 = fabs(v11.f64[1]) > fabs(v11.f64[0]);
    v46 = *a1;
    v15 = -v12 / *(&v46 | (8 * v14));
    _Q6.i64[1] = 0;
    v47 = 0u;
    *(&v47 & 0xFFFFFFFFFFFFFFF7 | (8 * v14)) = v15;
    v16 = v47;
  }

  *_Q6.i64 = -v13;
  v17 = vzip1q_s64(_Q6, v11);
  _Q1 = vsubq_f64(a4, a3);
  v19 = vmulq_f64(v17, v17);
  v20 = vaddvq_f64(v19);
  v21 = vmulq_f64(_Q1, _Q1);
  v22 = vaddvq_f64(v21);
  v9.f64[0] = fabs(v20);
  v23 = fabs(v22);
  if (v23 <= 2.22044605e-16 && v9.f64[0] <= 2.22044605e-16)
  {
    v32 = vsubq_f64(v16, a3);
    v33 = sqrt(vaddvq_f64(vmulq_f64(v32, v32)));
    v31 = 0.0;
    if (v33 > 0.000001)
    {
      v34 = 0;
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v25 = vsubq_f64(a3, v16);
  v10.f64[0] = 2.22044605e-16;
  if (v9.f64[0] > 2.22044605e-16)
  {
    v26 = v20;
  }

  else
  {
    v26 = v22;
  }

  if (v23 <= 2.22044605e-16 || v9.f64[0] <= 2.22044605e-16)
  {
    v28 = vdupq_lane_s64(vcgeq_f64(v10, v9).i64[0], 0);
    v29 = vbslq_s8(v28, _Q1, v17);
    v28.f64[0] = 2.22044605e-16;
    v30 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(v28, v9).i64[0], 0), vnegq_f64(v25), v25);
    if ((-v29.f64[1] * v30.f64[0] + v29.f64[0] * v30.f64[1]) * (-v29.f64[1] * v30.f64[0] + v29.f64[0] * v30.f64[1]) <= v26 * 1.0e-12)
    {
      v31 = vaddvq_f64(vmulq_f64(v29, v30)) / v26;
      if (v23 <= 2.22044605e-16)
      {
        v31 = 0.0;
      }

      goto LABEL_24;
    }

LABEL_26:
    v34 = 0;
    v31 = 0.0;
    goto LABEL_28;
  }

  v35 = vaddq_f64(v19, vdupq_laneq_s64(v19, 1));
  v36 = vaddq_f64(v21, vdupq_laneq_s64(v21, 1));
  __asm { FMLA            D16, D6, V1.D[1] }

  if (fabs(_D16 * _D16) > 1.0e-12 * vmulq_f64(v36, v35).f64[0])
  {
    v31 = (vmuld_lane_f64(v13, v25, 1) + v25.f64[0] * v11.f64[0]) / _D16;
LABEL_24:
    v34 = 1;
    goto LABEL_28;
  }

  v41 = vmulq_f64(v25, v25);
  v42 = vmuld_lane_f64(v13, v25, 1);
  if (fabs((v42 + v25.f64[0] * v11.f64[0]) * (v42 + v25.f64[0] * v11.f64[0])) > 1.0e-12 * vmulq_f64(v35, vaddq_f64(v41, vdupq_laneq_s64(v41, 1))).f64[0])
  {
    goto LABEL_26;
  }

  v43 = vmulq_f64(_Q1, vnegq_f64(v25));
  *&v31 = *&vdivq_f64(vaddq_f64(v43, vdupq_laneq_s64(v43, 1)), v36);
  v34 = 2;
LABEL_28:
  if (v31 > 1.0 || v31 < 0.0)
  {
    result = 0;
  }

  else
  {
    result = v34;
  }

  if (a2)
  {
    if (!result)
    {
      v31 = NAN;
    }

    *a2 = v31;
  }

  return result;
}

uint64_t geom_intersect_ray_triangle_2f(float *a1, float *a2, float32x2_t a3, float32x2_t a4, double a5, double a6, double a7)
{
  v12 = 0;
  v11[0] = a3;
  v11[1] = a4;
  *v10 = a5;
  *&v10[1] = a6;
  *&v10[2] = a7;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = &v12 + 1;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = &v12;
  }

  return geom::intersect_ray_triangle<float>(v11, v10, v7, v8);
}

uint64_t geom::intersect_ray_triangle<float>(float32x2_t *a1, uint64_t a2, float *a3, float *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = vsub_f32(vext_s8(*a2, v4, 4uLL), vext_s8(v4, *a2, 4uLL));
  v7 = vmul_f32(v6, v6);
  v7.i32[0] = vadd_f32(v7, vdup_lane_s32(v7, 1)).u32[0];
  v8 = vrsqrte_f32(v7.u32[0]);
  v9 = vmul_f32(v8, vrsqrts_f32(v7.u32[0], vmul_f32(v8, v8)));
  v10 = vmul_n_f32(v6, vmul_f32(v9, vrsqrts_f32(v7.u32[0], vmul_f32(v9, v9))).f32[0]);
  v11 = vaddv_f32(vmul_f32(*a2, v10));
  v67 = v10;
  v68 = LODWORD(v11) ^ 0x80000000;
  v12 = *(a2 + 16);
  v13 = vsub_f32(vext_s8(v4, v12, 4uLL), vext_s8(v12, v4, 4uLL));
  v14 = vmul_f32(v13, v13);
  v14.i32[0] = vadd_f32(v14, vdup_lane_s32(v14, 1)).u32[0];
  v15 = vrsqrte_f32(v14.u32[0]);
  v16 = vmul_f32(v15, vrsqrts_f32(v14.u32[0], vmul_f32(v15, v15)));
  v17 = vmul_n_f32(v13, vmul_f32(v16, vrsqrts_f32(v14.u32[0], vmul_f32(v16, v16))).f32[0]);
  v18 = vaddv_f32(vmul_f32(v4, v17));
  v69 = v17;
  v19 = vsub_f32(vext_s8(v12, v5, 4uLL), vext_s8(v5, v12, 4uLL));
  v20 = vmul_f32(v19, v19);
  v20.i32[0] = vadd_f32(v20, vdup_lane_s32(v20, 1)).u32[0];
  v70 = LODWORD(v18) ^ 0x80000000;
  v21 = vrsqrte_f32(v20.u32[0]);
  v22 = vmul_f32(v21, vrsqrts_f32(v20.u32[0], vmul_f32(v21, v21)));
  v23 = vmul_n_f32(v19, vmul_f32(v22, vrsqrts_f32(v20.u32[0], vmul_f32(v22, v22))).f32[0]);
  v24 = vmul_f32(v12, v23);
  v24.f32[0] = vaddv_f32(v24);
  v71 = v23;
  v72 = v24.i32[0] ^ 0x80000000;
  if ((LODWORD(v11) & 0x7FFFFFFFu) < 0x7F800000)
  {
    if ((LODWORD(v18) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if ((v24.i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v51 = vsub_f32(*(a2 + 8), *a2);
        v52 = vsub_f32(v12, *a2);
        if ((vmuls_lane_f32(-v51.f32[0], v52, 1) + (v51.f32[1] * v52.f32[0])) > 0.0)
        {
          v67 = vneg_f32(v10);
          *&v68 = v11;
          v69 = vneg_f32(v17);
          *&v70 = v18;
          v71 = vneg_f32(v23);
          LODWORD(v72) = v24.i32[0];
        }

        *a3 = 0.0;
        *a4 = INFINITY;
        v53 = &v68;
        v54 = INFINITY;
        v55 = 48;
        while (1)
        {
          v56 = *(v53 - 2);
          v57 = vaddv_f32(vmul_f32(v56, a1[1]));
          v58 = vaddv_f32(vmul_f32(v56, *a1)) + *v53;
          if (fabsf(v57) <= 0.00000011921)
          {
            if (v58 < -0.00000011921)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v37 = v57 <= 0.0;
            v59 = -v58 / v57;
            if (v37)
            {
              if (v59 < v54)
              {
                v54 = v59;
              }

              *a4 = v54;
              v59 = *a3;
            }

            else
            {
              if (*a3 >= v59)
              {
                v59 = *a3;
              }

              *a3 = v59;
              v54 = *a4;
            }

            if (v54 < v59)
            {
LABEL_63:
              result = 0;
              *a4 = INFINITY;
              *a3 = INFINITY;
              goto LABEL_36;
            }
          }

          v53 += 4;
          v55 -= 16;
          if (!v55)
          {
            goto LABEL_62;
          }
        }
      }

      v25 = 2;
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = 2;
  if ((LODWORD(v11) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v26 = (v25 - 1);
  }

  v27 = *(a2 + 8 * v25);
  v28 = *(a2 + 8 * v26);
  v30 = *a1;
  v29 = a1[1];
  v31 = vsub_f32(v28, v27);
  v32 = vmul_f32(v29, v29);
  v33 = vaddv_f32(v32);
  v34 = vmul_f32(v31, v31);
  v35 = vaddv_f32(v34);
  v24.f32[0] = fabsf(v33);
  v36 = fabsf(v35);
  v37 = v36 > 0.00000011921 || v24.f32[0] > 0.00000011921;
  if (!v37)
  {
    v45 = vsub_f32(v30, v27);
    v43 = 0.0;
    v44 = 0.0;
    if (sqrtf(vaddv_f32(vmul_f32(v45, v45))) > 0.00001)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v38 = vsub_f32(v27, v30);
  if (v24.f32[0] <= 0.00000011921)
  {
    v33 = v35;
  }

  if (v36 <= 0.00000011921 || v24.f32[0] <= 0.00000011921)
  {
    v40 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, v24), 0), v31, v29);
    v41 = vbsl_s8(vdup_lane_s32(vcge_f32(0x3400000034000000, v24), 0), vneg_f32(v38), v38);
    if ((((-v40.f32[1] * v41.f32[0]) + (v40.f32[0] * v41.f32[1])) * ((-v40.f32[1] * v41.f32[0]) + (v40.f32[0] * v41.f32[1]))) > (v33 * 1.0e-10))
    {
LABEL_28:
      result = 0;
      v47 = INFINITY;
LABEL_35:
      *a4 = v47;
      *a3 = v47;
      goto LABEL_36;
    }

    v42 = vaddv_f32(vmul_f32(v40, v41)) / v33;
    if (v24.f32[0] > 0.00000011921)
    {
      v43 = v42;
    }

    else
    {
      v43 = 0.0;
    }

    if (v36 > 0.00000011921)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0.0;
    }

LABEL_31:
    result = 0;
    v47 = INFINITY;
    if (v43 >= 0.0 && v44 >= 0.0 && v44 <= 1.0)
    {
      v47 = fmaxf(v43, 0.0);
      result = 1;
    }

    goto LABEL_35;
  }

  v48 = vadd_f32(v32, vdup_lane_s32(v32, 1));
  v49 = (-v29.f32[1] * v31.f32[0]) + (v29.f32[0] * v31.f32[1]);
  if (fabsf(v49 * v49) > (1.0e-10 * vmul_f32(vadd_f32(v34, vdup_lane_s32(v34, 1)), v48).f32[0]))
  {
    v43 = ((v38.f32[0] * v31.f32[1]) - (v38.f32[1] * v31.f32[0])) / v49;
    v44 = ((v38.f32[0] * v29.f32[1]) - (v38.f32[1] * v29.f32[0])) / v49;
    goto LABEL_31;
  }

  v60 = vmul_f32(v38, v38);
  if (fabsf(((v38.f32[0] * v29.f32[1]) - (v38.f32[1] * v29.f32[0])) * ((v38.f32[0] * v29.f32[1]) - (v38.f32[1] * v29.f32[0]))) > (1.0e-10 * vmul_f32(v48, vadd_f32(v60, vdup_lane_s32(v60, 1))).f32[0]))
  {
    goto LABEL_28;
  }

  v61 = vmul_f32(v29, v38);
  v62 = vdiv_f32(vadd_f32(v61, vdup_lane_s32(v61, 1)), v48);
  if (v62.f32[0] < 0.0)
  {
    v63 = vmul_f32(v29, vadd_f32(v31, v38));
    if (vdiv_f32(vadd_f32(v63, vdup_lane_s32(v63, 1)), v48).f32[0] < 0.0)
    {
      goto LABEL_28;
    }
  }

  v64 = vmul_f32(v29, vsub_f32(v28, v30));
  v65 = vdiv_f32(vadd_f32(v64, vdup_lane_s32(v64, 1)), v48);
  if (vcgt_f32(v62, v65).u8[0])
  {
    v66 = v65.f32[0];
  }

  else
  {
    v66 = v62.f32[0];
  }

  *a3 = v66;
  if ((vcgt_f32(v65, v62).u8[0] & 1) == 0)
  {
    v65.f32[0] = v62.f32[0];
  }

  *a4 = v65.f32[0];
LABEL_62:
  result = 1;
LABEL_36:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_intersect_ray_triangle_2d(double *a1, double *a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, float64x2_t a7)
{
  v12 = 0;
  v13 = 0;
  v11[0] = a3;
  v11[1] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = &v13;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = &v12;
  }

  return geom::intersect_ray_triangle<double>(v11, v10, v7, v8);
}

uint64_t geom::intersect_ray_triangle<double>(float64x2_t *a1, float64x2_t *a2, double *a3, double *a4)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  v7 = vsubq_f64(vextq_s8(*a2, v6, 8uLL), vextq_s8(v6, *a2, 8uLL));
  v8 = vmulq_n_f64(v7, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v7, v7))));
  v9 = vaddvq_f64(vmulq_f64(*a2, v8));
  v60 = v8;
  v61[0] = -v9;
  v61[1] = 0.0;
  v10 = a2[2];
  v11 = vsubq_f64(vextq_s8(v6, v10, 8uLL), vextq_s8(v10, v6, 8uLL));
  v12 = vmulq_n_f64(v11, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v11, v11))));
  v13 = vaddvq_f64(vmulq_f64(v6, v12));
  v62 = v12;
  v63 = -v13;
  v14 = vsubq_f64(vextq_s8(v10, v5, 8uLL), vextq_s8(v5, v10, 8uLL));
  v15 = vmulq_n_f64(v14, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v14, v14))));
  v16 = vaddvq_f64(vmulq_f64(v10, v15));
  v64 = 0;
  v65 = v15;
  v66 = -v16;
  v67 = 0;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v44 = vsubq_f64(v6, v5);
        v45 = vsubq_f64(v10, v5);
        if (vmuld_lane_f64(-v44.f64[0], v45, 1) + v44.f64[1] * v45.f64[0] > 0.0)
        {
          v60 = vnegq_f64(v8);
          v61[0] = v9;
          v62 = vnegq_f64(v12);
          v63 = v13;
          v65 = vnegq_f64(v15);
          v66 = v16;
        }

        *a3 = 0.0;
        *a4 = INFINITY;
        v46 = v61;
        v47 = INFINITY;
        v48 = 96;
        while (1)
        {
          v49 = *(v46 - 2);
          v50 = vaddvq_f64(vmulq_f64(v49, a1[1]));
          v51 = *v46 + vaddvq_f64(vmulq_f64(v49, *a1));
          if (fabs(v50) <= 2.22044605e-16)
          {
            if (v51 < -2.22044605e-16)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v29 = v50 <= 0.0;
            v52 = -v51 / v50;
            if (v29)
            {
              if (v52 < v47)
              {
                v47 = v52;
              }

              *a4 = v47;
              v52 = *a3;
            }

            else
            {
              if (*a3 >= v52)
              {
                v52 = *a3;
              }

              *a3 = v52;
              v47 = *a4;
            }

            if (v47 < v52)
            {
LABEL_63:
              result = 0;
              *a4 = INFINITY;
              *a3 = INFINITY;
              goto LABEL_36;
            }
          }

          v46 += 4;
          v48 -= 32;
          if (!v48)
          {
            goto LABEL_62;
          }
        }
      }

      v17 = 2;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = 2;
  v19 = a2[v17];
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v18 = (v17 - 1);
  }

  v20 = a2[v18];
  v22 = *a1;
  v21 = a1[1];
  v23 = vsubq_f64(v20, v19);
  v24 = vmulq_f64(v21, v21);
  v25 = vaddvq_f64(v24);
  v26 = vmulq_f64(v23, v23);
  v27 = vaddvq_f64(v26);
  v10.f64[0] = fabs(v25);
  v28 = fabs(v27);
  v29 = v28 > 2.22044605e-16 || v10.f64[0] > 2.22044605e-16;
  if (!v29)
  {
    v38 = vsubq_f64(v22, v19);
    v36 = 0.0;
    v37 = 0.0;
    if (sqrt(vaddvq_f64(vmulq_f64(v38, v38))) > 0.000001)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v30 = vsubq_f64(v19, v22);
  v4.f64[0] = 2.22044605e-16;
  if (v10.f64[0] <= 2.22044605e-16)
  {
    v25 = v27;
  }

  if (v28 <= 2.22044605e-16 || v10.f64[0] <= 2.22044605e-16)
  {
    v32 = vdupq_lane_s64(vcgeq_f64(v4, v10).i64[0], 0);
    v33 = vbslq_s8(v32, v23, v21);
    v32.f64[0] = 2.22044605e-16;
    v34 = vbslq_s8(vdupq_lane_s64(vcgeq_f64(v32, v10).i64[0], 0), vnegq_f64(v30), v30);
    if ((-v33.f64[1] * v34.f64[0] + v33.f64[0] * v34.f64[1]) * (-v33.f64[1] * v34.f64[0] + v33.f64[0] * v34.f64[1]) > v25 * 1.0e-12)
    {
LABEL_28:
      result = 0;
      v40 = INFINITY;
LABEL_35:
      *a4 = v40;
      *a3 = v40;
      goto LABEL_36;
    }

    v35 = vaddvq_f64(vmulq_f64(v33, v34)) / v25;
    if (v10.f64[0] > 2.22044605e-16)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0.0;
    }

    if (v28 > 2.22044605e-16)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0.0;
    }

LABEL_31:
    result = 0;
    v40 = INFINITY;
    if (v36 >= 0.0 && v37 >= 0.0 && v37 <= 1.0)
    {
      v40 = fmax(v36, 0.0);
      result = 1;
    }

    goto LABEL_35;
  }

  v41 = vaddq_f64(v24, vdupq_laneq_s64(v24, 1));
  v42 = -v21.f64[1] * v23.f64[0] + v21.f64[0] * v23.f64[1];
  if (fabs(v42 * v42) > 1.0e-12 * vmulq_f64(vaddq_f64(v26, vdupq_laneq_s64(v26, 1)), v41).f64[0])
  {
    v36 = (v30.f64[0] * v23.f64[1] - v30.f64[1] * v23.f64[0]) / v42;
    v37 = (v30.f64[0] * v21.f64[1] - v30.f64[1] * v21.f64[0]) / v42;
    goto LABEL_31;
  }

  v53 = vmulq_f64(v30, v30);
  if (fabs((v30.f64[0] * v21.f64[1] - v30.f64[1] * v21.f64[0]) * (v30.f64[0] * v21.f64[1] - v30.f64[1] * v21.f64[0])) > 1.0e-12 * vmulq_f64(v41, vaddq_f64(v53, vdupq_laneq_s64(v53, 1))).f64[0])
  {
    goto LABEL_28;
  }

  v54 = vmulq_f64(v21, v30);
  v55 = vdivq_f64(vaddq_f64(v54, vdupq_laneq_s64(v54, 1)), v41);
  if (v55.f64[0] < 0.0)
  {
    v56 = vmulq_f64(v21, vaddq_f64(v23, v30));
    if (vdivq_f64(vaddq_f64(v56, vdupq_laneq_s64(v56, 1)), v41).f64[0] < 0.0)
    {
      goto LABEL_28;
    }
  }

  v57 = vmulq_f64(v21, vsubq_f64(v20, v22));
  v58 = vdivq_f64(vaddq_f64(v57, vdupq_laneq_s64(v57, 1)), v41);
  if (vmovn_s64(vcgtq_f64(v55, v58)).u8[0])
  {
    v59 = v58.f64[0];
  }

  else
  {
    v59 = v55.f64[0];
  }

  *a3 = v59;
  if ((vmovn_s64(vcgtq_f64(v58, v55)).u8[0] & 1) == 0)
  {
    v58.f64[0] = v55.f64[0];
  }

  *a4 = v58.f64[0];
LABEL_62:
  result = 1;
LABEL_36:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom_intersect_ray_triangle_3f(float *a1, uint64_t a2, float32x4_t a3, float32x4_t a4, int32x4_t a5, int32x4_t a6, int32x4_t a7)
{
  v7 = vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL);
  v8 = vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL);
  v9 = vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL);
  v10 = vaddq_f32(vmlaq_f32(vmulq_f32(v7, vnegq_f32(a7)), a5, v9), vaddq_f32(vmlaq_f32(vmulq_f32(v8, vnegq_f32(a5)), a6, v7), vmlaq_f32(vmulq_f32(v9, vnegq_f32(a6)), a7, v8)));
  v11 = vmulq_f32(v10, v10);
  if (fabsf(v11.f32[1] + (v11.f32[2] + v11.f32[0])) <= 1.0e-10)
  {
    goto LABEL_9;
  }

  v12 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v13 = vmulq_f32(a4, v12);
  v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
  if (fabsf(v13.f32[0]) <= 0.00001)
  {
    goto LABEL_9;
  }

  v9.i64[0] = 0;
  v14 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v13, v9), 0), vnegq_f32(v12), v12);
  if (v13.f32[0] <= 0.0)
  {
    v15 = -v13.f32[0];
  }

  else
  {
    v15 = v13.f32[0];
  }

  v16 = vsubq_f32(a3, a5);
  v17 = 1.0 / v15;
  v18 = vmulq_f32(v16, v14);
  v19 = (1.0 / v15) * (v18.f32[2] + vaddv_f32(*v18.f32));
  if (a1)
  {
    *a1 = v19;
  }

  if (v19 == 0.0)
  {
LABEL_9:
    if (!a1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = fabsf(v19);
  if (v21 == INFINITY)
  {
    if (v19 <= 0.0)
    {
      goto LABEL_9;
    }
  }

  else if (((v21 + 1.0) * 0.00000011921) >= v19)
  {
    goto LABEL_9;
  }

  v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL), vnegq_f32(v16)), a4, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
  v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
  v28 = v13.f32[0] <= 0.0;
  v24 = 1.0;
  if (!v28)
  {
    v24 = -1.0;
  }

  v25 = vmulq_n_f32(v23, v24);
  v26 = vmulq_f32(vsubq_f32(a7, a5), v25);
  v27 = v26.f32[2] + vaddv_f32(*v26.f32);
  if (a2)
  {
    *(a2 + 4) = v27;
  }

  v28 = v27 >= 0.0 && v27 <= v15;
  if (!v28 || ((v29 = vmulq_f32(vsubq_f32(a5, a6), v25), v30 = v29.f32[2] + vaddv_f32(*v29.f32), v30 >= 0.0) ? (v31 = (v27 + v30) <= v15) : (v31 = 0), !v31))
  {
    if (!a1)
    {
LABEL_11:
      result = 0;
      if (a2)
      {
        *a2 = 0u;
      }

      return result;
    }

LABEL_10:
    *a1 = INFINITY;
    goto LABEL_11;
  }

  if (a2)
  {
    v32 = v17 * v27;
    v33 = v17 * v30;
    *&v34 = (1.0 - v32) - v33;
    *(&v34 + 1) = v32;
    *(a2 + 8) = v33;
    *a2 = v34;
  }

  return 1;
}

uint64_t geom_intersect_ray_triangle_3d(float64x2_t *a1, float64x2_t *a2, double *a3, uint64_t a4)
{
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11.f64[0] = a2[1].f64[0];
  v11.f64[1] = a2->f64[0];
  v12.f64[0] = a2[3].f64[0];
  v12.f64[1] = a2[2].f64[0];
  v13.f64[0] = a2[5].f64[0];
  v13.f64[1] = a2[4].f64[0];
  v14 = vaddq_f64(vmlaq_f64(vmulq_f64(v11, vnegq_f64(v10)), *a2, v13), vaddq_f64(vmlaq_f64(vmulq_f64(v12, vnegq_f64(*a2)), v8, v11), vmlaq_f64(vmulq_f64(v13, vnegq_f64(v8)), v10, v12)));
  v15 = vaddq_f64(vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v9), *a2, 1), v5, v10, 1), vaddq_f64(vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v5), v8, 1), v7, *a2, 1), vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v7), v10, 1), v9, v8, 1)));
  v16 = vmulq_f64(v14, v14);
  if (fabs(v16.f64[1] + vmulq_f64(v15, v15).f64[0] + v16.f64[0]) <= 1.0e-12)
  {
    goto LABEL_30;
  }

  v18 = a1[2];
  v17 = a1[3];
  v15.f64[1] = v14.f64[0];
  v19 = vmulq_laneq_f64(v17, v14, 1);
  v19.f64[0] = v19.f64[0] + vaddvq_f64(vmulq_f64(v18, v15));
  if (fabs(v19.f64[0]) <= 0.000001)
  {
    goto LABEL_30;
  }

  v20 = vdupq_laneq_s64(v14, 1);
  v4.f64[0] = 0.0;
  v21 = vcgtq_f64(v19, v4);
  v22 = vandq_s8(vnegq_f64(v20), v21);
  v23 = vdupq_lane_s64(v21.i64[0], 0);
  v24 = vorrq_s8(v22, vbicq_s8(v20, v23));
  v25 = vbslq_s8(v23, vnegq_f64(v15), v15);
  v26 = v19.f64[0] <= 0.0 ? -v19.f64[0] : v19.f64[0];
  v27 = vsubq_f64(*a1, v6);
  v28 = vsubq_f64(a1[1], v5);
  v29 = 1.0 / v26;
  v30 = 1.0 / v26 * (vmulq_f64(v28, v24).f64[0] + vaddvq_f64(vmulq_f64(v27, v25)));
  if (a3)
  {
    *a3 = v30;
    if (v30 == 0.0 || v30 <= 2.22044605e-16)
    {
LABEL_31:
      *a3 = INFINITY;
LABEL_32:
      result = 0;
      if (a4)
      {
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0u;
      }

      return result;
    }
  }

  else if (v30 == 0.0 || v30 <= 2.22044605e-16)
  {
    goto LABEL_32;
  }

  v33.f64[0] = v17.f64[0];
  v33.f64[1] = v18.f64[0];
  v34 = vnegq_f64(v28);
  v28.f64[1] = v27.f64[0];
  v35 = vmlaq_f64(vmulq_f64(v33, vnegq_f64(v27)), v18, v28);
  *&v36.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(v34, v18, 1), v17, v27, 1);
  v36.f64[1] = v35.f64[0];
  v18.f64[0] = -1.0;
  if (v19.f64[0] <= 0.0)
  {
    v18.f64[0] = 1.0;
  }

  v37 = vmulq_n_f64(v36, v18.f64[0]);
  v38 = vmulq_laneq_f64(v18, v35, 1);
  v39 = vmulq_f64(vsubq_f64(v9, v5), v38).f64[0] + vaddvq_f64(vmulq_f64(vsubq_f64(v10, v6), v37));
  if (a4)
  {
    *(a4 + 8) = v39;
  }

  v40 = v39 >= 0.0 && v39 <= v26;
  if (!v40 || ((v41 = vmulq_f64(vsubq_f64(v5, v7), v38).f64[0] + vaddvq_f64(vmulq_f64(vsubq_f64(v6, v8), v37)), v41 >= 0.0) ? (v42 = v39 + v41 <= v26) : (v42 = 0), !v42))
  {
LABEL_30:
    if (!a3)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (a4)
  {
    v44 = v29 * v41;
    *&v45 = 1.0 - v29 * v39 - v44;
    *(&v45 + 1) = v29 * v39;
    *(a4 + 16) = v44;
    *a4 = v45;
  }

  return 1;
}