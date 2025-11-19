void geom::triangle_mesh_atlas::classify_vertices(geom::triangle_mesh_atlas *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *(a2 + 48) - *(a2 + 40);
  __p = 0;
  v31 = 0;
  v32 = 0;
  v9 = (v8 >> 2);
  std::vector<BOOL>::resize(&__p, v9, 0);
  v10 = *(a2 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = *a3;
    v13 = *(a2 + 16);
    v14 = __p;
    do
    {
      if ((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
      {
        v15 = (v13 + 4 * (3 * v11));
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        *&v14[(v16 >> 3) & 0x1FFFFFF8] |= 1 << v16;
        *&v14[(v17 >> 3) & 0x1FFFFFF8] |= 1 << v17;
        *&v14[(v18 >> 3) & 0x1FFFFFF8] |= 1 << v18;
      }

      ++v11;
    }

    while (v11 != v10);
  }

  if ((v8 & 0x3FFFFFFFCLL) != 0)
  {
    v19 = 0;
    do
    {
      if (((*(__p + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        *(*a1 + v19) = 0;
      }

      ++v19;
    }

    while (v9 != v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if ((v8 & 0x3FFFFFFFCLL) != 0)
  {
    v20 = 0;
    while (*(*a1 + v20) != 3)
    {
LABEL_36:
      if (++v20 == v9)
      {
        return;
      }
    }

    __p = 0;
    v31 = 0;
    v32 = 0;
    geom::triangle_mesh_connectivity::get_incident_edges_to_vertex(a2, v20, &__p);
    v21 = __p;
    if (v31 == __p)
    {
      goto LABEL_31;
    }

    v22 = 0;
    v23 = 0;
    do
    {
      v24 = v21[v22];
      if (((*(*a4 + ((v24 >> 3) & 0x1FFFFFF8)) >> v24) & 1) != 0 || (v25 = *(a2 + 184), v24 < (*(a2 + 192) - v25) >> 2) && (half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a2, *(v25 + 4 * v24) / 3u, *(v25 + 4 * v24) % 3u), geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(a2, half_edge_for_face_vertex)))
      {
        ++v23;
      }

      ++v22;
      v21 = __p;
    }

    while (v22 < (v31 - __p) >> 2 && v23 < 3);
    if (!v23)
    {
LABEL_31:
      *(*a1 + v20) = 0;
    }

    else
    {
      if (v23 == 2)
      {
        is_vertex_a_uv_corner = geom::triangle_mesh_atlas::is_vertex_a_uv_corner(a1, a2, v20);
        v29 = *a1;
        if (!is_vertex_a_uv_corner)
        {
          *(v29 + v20) = 1;
          goto LABEL_34;
        }
      }

      else
      {
        v29 = *a1;
      }

      *(v29 + v20) = 2;
    }

LABEL_34:
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    goto LABEL_36;
  }
}

void geom::triangle_mesh_atlas::build_face_charts(std::vector<int> *a1, uint64_t a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 4);
  memset(__p, 0, sizeof(__p));
  std::vector<BOOL>::resize(__p, v7, 0);
  memset(&v31, 0, sizeof(v31));
  std::vector<unsigned int>::resize(a1 + 4, v7, &geom::triangle_mesh_atlas::k_invalid_chart);
  if (v7)
  {
    v8 = 0;
    v29 = 0;
    v27 = v7;
    do
    {
      v9 = v8 >> 6;
      v10 = 1 << v8;
      if ((*(__p[0] + (v8 >> 6)) & (1 << v8)) == 0 && (*(*a3 + 8 * v9) & v10) != 0)
      {
        v33[0] = v8;
        std::vector<unsigned int>::push_back[abi:nn200100](&v31.__begin_, v33);
        *(__p[0] + v9) |= v10;
        while (v31.__end_ != v31.__begin_)
        {
          v11 = v31.__end_ - v31.__begin_ - 1;
          v12 = v31.__begin_[v11];
          std::vector<float>::resize(&v31, v11);
          v30 = v12;
          std::vector<unsigned int>::push_back[abi:nn200100](&a1[3].__begin_, &v30);
          v13 = 0;
          a1[4].__begin_[v30] = v29;
          v14 = *(a2 + 160);
          v33[0] = *(v14 + 12 * v30);
          v33[1] = *(v14 + 4 * (3 * v30 + 1));
          v33[2] = *(v14 + 4 * (3 * v30 + 2));
          do
          {
            v15 = v33[v13];
            if (((*(*a4 + ((v15 >> 3) & 0x1FFFFFF8)) >> v15) & 1) == 0)
            {
              v16 = *(a2 + 184);
              if (v15 < (*(a2 + 192) - v16) >> 2)
              {
                v17 = v30;
                half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a2, *(v16 + 4 * v15) / 3u, *(v16 + 4 * v15) % 3u);
                if (geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(a2, half_edge_for_face_vertex))
                {
                  v19 = *(*(a2 + 184) + 4 * v15);
                  v20 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a2, v19 / 3, v19 % 3);
                  half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(a2, v20);
                  v34[0] = half_edge_face;
                  if (!geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(a2, v20))
                  {
                    half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(a2, v20);
                    v34[1] = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(a2, half_edge_twin);
                    v23 = v34[half_edge_face == v17];
                    if (v23 != -1)
                    {
                      v24 = v23 >> 6;
                      v25 = 1 << v23;
                      if ((*(__p[0] + (v23 >> 6)) & (1 << v23)) == 0)
                      {
                        v34[0] = v23;
                        std::vector<unsigned int>::push_back[abi:nn200100](&v31.__begin_, v34);
                        *(__p[0] + v24) |= v25;
                      }
                    }
                  }
                }
              }
            }

            ++v13;
          }

          while (v13 != 3);
        }

        ++v29;
        v33[0] = (a1[3].__end_ - a1[3].__begin_) >> 2;
        std::vector<unsigned int>::push_back[abi:nn200100](&a1[2].__begin_, v33);
        v7 = v27;
      }

      ++v8;
    }

    while (v8 != v7);
    if (v31.__begin_)
    {
      v31.__end_ = v31.__begin_;
      operator delete(v31.__begin_);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void geom::triangle_mesh_atlas::init(std::vector<int> *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  memset(v46, 0, sizeof(v46));
  geom::triangle_mesh_atlas::copy_face_vertex_uvs(a1, a2, a3, a4, v46);
  v6 = 3 * *(a2 + 4) - *(a2 + 8) + ((*(a2 + 96) - *(a2 + 88)) >> 2);
  v7 = v6 >> 1;
  memset(__p, 0, sizeof(__p));
  std::vector<BOOL>::resize(__p, v6 >> 1, 0);
  if (v6 >= 2)
  {
    v9 = 0;
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7;
    }

    do
    {
      v11 = *(a2 + 184);
      if (v9 < (*(a2 + 192) - v11) >> 2 && (v12 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a2, *(v11 + 4 * v9) / 3u, *(v11 + 4 * v9) % 3u), geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(a2, v12)))
      {
        v13 = *(*(a2 + 184) + 4 * v9);
        half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a2, v13 / 3, v13 % 3);
        half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(a2, half_edge_for_face_vertex);
        if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(a2, half_edge_for_face_vertex))
        {
          if (((*(v46[0] + ((half_edge_face >> 3) & 0x1FFFFFF8)) >> half_edge_face) & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(a2, half_edge_for_face_vertex);
        v16 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(a2, half_edge_twin);
      }

      else
      {
        half_edge_face = -1;
        v16 = -1;
      }

      v17 = (1 << half_edge_face) & *(v46[0] + ((half_edge_face >> 3) & 0x1FFFFFF8));
      if ((((v17 != 0) ^ (*(v46[0] + ((v16 >> 3) & 0x1FFFFFF8)) >> v16)) & 1) == 0)
      {
        if (!v17)
        {
          goto LABEL_39;
        }

        v18 = *(a2 + 184);
        if (v9 >= (*(a2 + 192) - v18) >> 2)
        {
          *v47 = -1;
        }

        else
        {
          v19 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a2, *(v18 + 4 * v9) / 3u, *(v18 + 4 * v9) % 3u);
          geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(a2, v19, v47);
        }

        v20 = *(a2 + 16);
        v21 = (v20 + 12 * half_edge_face);
        v22 = *v21;
        v23 = *(v21 + 2);
        v24 = (v20 + 12 * v16);
        v25 = *v24;
        v26 = *(v24 + 2);
        v27 = &v44;
        v28 = v47;
        v29 = 1;
        do
        {
          v30 = 0;
          v31 = *v28;
          v32 = v29;
          v48 = v22;
          v33 = 3 * half_edge_face;
          v49 = v23;
          while (*(&v48 + v30) != v31)
          {
            ++v33;
            v30 += 4;
            if (v30 == 12)
            {
              v34 = 0;
              goto LABEL_27;
            }
          }

          v34 = *&a1[1].__begin_[2 * v33];
LABEL_27:
          v35 = 0;
          v48 = v25;
          v49 = v26;
          v36 = 3 * v16;
          while (*(&v48 + v35) != v31)
          {
            ++v36;
            v35 += 4;
            if (v35 == 12)
            {
              v37 = 0;
              goto LABEL_32;
            }
          }

          v37 = *&a1[1].__begin_[2 * v36];
LABEL_32:
          v29 = 0;
          v38 = vsub_f32(v34, v37);
          *v27 = sqrtf(vaddv_f32(vmul_f32(v38, v38))) <= 0.00001;
          v27 = &v43;
          v28 = &v47[1];
        }

        while ((v32 & 1) != 0);
        v39 = v44;
        v40 = v43;
        if (v44 != v43)
        {
          v41 = &v47[1];
          if (!v44)
          {
            v41 = v47;
          }

          *(a1->__begin_ + *v41) = 2;
        }

        if (v40 & v39)
        {
          goto LABEL_39;
        }
      }

LABEL_38:
      *(__p[0] + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
LABEL_39:
      ++v9;
    }

    while (v9 != v10);
  }

  geom::triangle_mesh_atlas::build_face_charts(a1, a2, v46, __p);
  geom::triangle_mesh_atlas::classify_vertices(a1, a2, v46, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v46[0])
  {
    operator delete(v46[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void geom::triangle_mesh_atlas::init(std::vector<int> *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v64 = *MEMORY[0x277D85DE8];
  v11 = 3 * *(a2 + 4) - *(a2 + 8) + ((*(a2 + 96) - *(a2 + 88)) >> 2);
  memset(v60, 0, sizeof(v60));
  geom::triangle_mesh_atlas::copy_face_vertex_uvs(a1, a2, a3, a4, a5, v60);
  memset(__p, 0, sizeof(__p));
  std::vector<BOOL>::resize(__p, (3 * *(a2 + 4) - *(a2 + 8) + ((*(a2 + 96) - *(a2 + 88)) >> 2)) >> 1, 0);
  memset(&v58, 0, sizeof(v58));
  std::vector<unsigned int>::resize(&v58, (3 * *(a2 + 4)), geom::k_invalid_index);
  v12 = *a3;
  v13 = a3[1] - *a3;
  if (v13)
  {
    v14 = v13 >> 2;
    begin = v58.__begin_;
    v16 = (*a4 + 8);
    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      v17 = *v12++;
      v18 = 3 * v17;
      begin[3 * v17] = *(v16 - 2);
      begin[3 * v17 + 1] = *(v16 - 1);
      v19 = *v16;
      v16 += 3;
      begin[v18 + 2] = v19;
      --v14;
    }

    while (v14);
  }

  if (v11 >= 2)
  {
    v20 = 0;
    if (v11 >> 1 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v11 >> 1;
    }

    do
    {
      v22 = *(a2 + 184);
      if (v20 >= (*(a2 + 192) - v22) >> 2)
      {
        half_edge_face = -1;
        v29 = -1;
      }

      else
      {
        half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a2, *(v22 + 4 * v20) / 3u, *(v22 + 4 * v20) % 3u);
        if (geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(a2, half_edge_for_face_vertex))
        {
          v24 = *(*(a2 + 184) + 4 * v20);
          v25 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a2, v24 / 3, v24 % 3);
          half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(a2, v25);
          if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(a2, v25))
          {
            v27 = v11;
            v28 = v5;
            if (((*(v60[0] + ((half_edge_face >> 3) & 0x1FFFFFF8)) >> half_edge_face) & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }

          half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(a2, v25);
          v29 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(a2, half_edge_twin);
        }

        else
        {
          half_edge_face = -1;
          v29 = -1;
        }
      }

      v31 = (1 << half_edge_face) & *(v60[0] + ((half_edge_face >> 3) & 0x1FFFFFF8));
      if (((v31 != 0) ^ (*(v60[0] + ((v29 >> 3) & 0x1FFFFFF8)) >> v29)))
      {
        goto LABEL_56;
      }

      if (v31)
      {
        v32 = *(a2 + 184);
        if (v20 >= (*(a2 + 192) - v32) >> 2)
        {
          *v61 = -1;
          v34 = -1;
          v35 = -1;
        }

        else
        {
          v33 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a2, *(v32 + 4 * v20) / 3u, *(v32 + 4 * v20) % 3u);
          geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(a2, v33, v61);
          v35 = v61[0];
          v34 = v61[1];
        }

        v27 = v6;
        v36 = 0;
        v37 = *(a2 + 16);
        v38 = 3 * half_edge_face;
        v39 = (v37 + 12 * half_edge_face);
        v62 = *v39;
        v63 = *(v39 + 2);
        v40 = 3 * half_edge_face;
        while (1)
        {
          v41 = v36 + 1;
          if (v36 == 2)
          {
            v42 = 0;
          }

          else
          {
            v42 = v36 + 1;
          }

          v43 = *(&v62 + v36);
          if (v43 == v35 && *(&v62 + v42) == v34)
          {
            v44 = v58.__begin_;
            v45 = &v58.__begin_[v40];
            v40 = v42 + v38;
            goto LABEL_34;
          }

          if (v43 == v34 && *(&v62 + v42) == v35)
          {
            break;
          }

          ++v40;
          v36 = v41;
          if (v41 == 3)
          {
            goto LABEL_35;
          }
        }

        v44 = v58.__begin_;
        v45 = &v58.__begin_[v42 + v38];
LABEL_34:
        v7 = *v45;
        v27 = v44[v40];
LABEL_35:
        v46 = 0;
        v47 = 3 * v29;
        v48 = (v37 + 12 * v29);
        v62 = *v48;
        v63 = *(v48 + 2);
        v49 = 3 * v29;
        while (1)
        {
          v50 = v46 + 1;
          if (v46 == 2)
          {
            v51 = 0;
          }

          else
          {
            v51 = v46 + 1;
          }

          v52 = *(&v62 + v46);
          if (v52 == v35 && *(&v62 + v51) == v34)
          {
            v53 = v58.__begin_;
            v54 = &v58.__begin_[v49];
            v49 = v51 + v47;
            goto LABEL_47;
          }

          if (v52 == v34 && *(&v62 + v51) == v35)
          {
            break;
          }

          ++v49;
          v46 = v50;
          if (v50 == 3)
          {
            goto LABEL_48;
          }
        }

        v53 = v58.__begin_;
        v54 = &v58.__begin_[v51 + v47];
LABEL_47:
        v5 = *v54;
        v11 = v53[v49];
LABEL_48:
        v55 = v7 == v5 && v27 == v11;
        if ((v27 == v11) != (v7 == v5))
        {
          if (v7 != v5)
          {
            v34 = v35;
          }

          *(a1->__begin_ + v34) = 2;
        }

        v6 = v27;
        v28 = v7;
        if (v55)
        {
          goto LABEL_58;
        }

LABEL_56:
        *(__p[0] + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      }

      v27 = v11;
      v28 = v5;
LABEL_58:
      ++v20;
      v5 = v28;
      v11 = v27;
    }

    while (v20 != v21);
  }

  geom::triangle_mesh_atlas::build_face_charts(a1, a2, v60, __p);
  geom::triangle_mesh_atlas::classify_vertices(a1, a2, v60, __p);
  if (v58.__begin_)
  {
    v58.__end_ = v58.__begin_;
    operator delete(v58.__begin_);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v60[0])
  {
    operator delete(v60[0]);
  }

  v56 = *MEMORY[0x277D85DE8];
}

unint64_t geom::triangle_mesh_atlas::face_vertex_from_face_and_vertex(geom::triangle_mesh_atlas *this, const geom::triangle_mesh_connectivity *a2, int a3, int a4)
{
  v4 = 0;
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 2) + 4 * (3 * a3);
  v8 = *v5;
  v9 = *(v5 + 8);
  result = a3 & 0x3FFFFFFF | ((a4 & 0x3FFFFFFF) << 32);
  while (*(&v8 + v4) != a4)
  {
    v4 += 4;
    result += 0x4000000000000000;
    if (v4 == 12)
    {
      result = a3 & 0x3FFFFFFF | ((a4 & 0x3FFFFFFF) << 32);
      break;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::triangle_mesh_atlas::pack_faces_into_charts(uint64_t a1, unsigned int **a2, uint64_t a3, std::vector<unsigned int> *this)
{
  *(a3 + 8) = *a3;
  this->__end_ = this->__begin_;
  std::vector<float>::reserve(this, a2[1] - *a2);
  v14 = 0;
  v8 = *a2;
  v9 = *(*(a1 + 96) + 4 * **a2);
  if (a2[1] != *a2)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v8 + 4 * v10);
      v13 = v11;
      v12 = *(*(a1 + 96) + 4 * v11);
      if (v12 == -1)
      {
        break;
      }

      std::vector<unsigned int>::push_back[abi:nn200100](&this->__begin_, &v13);
      if (v12 != v9)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](a3, &v14);
        v9 = v12;
      }

      v10 = ++v14;
      v8 = *a2;
      if (v14 >= (a2[1] - *a2))
      {
        goto LABEL_9;
      }
    }
  }

  if (v9 != -1)
  {
LABEL_9:
    std::vector<unsigned int>::push_back[abi:nn200100](a3, &v14);
  }
}

void geom::triangle_mesh_atlas::vertex_incident_charts(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, std::vector<unsigned int> *a5)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a2, a3, &__p);
  v8 = 126 - 2 * __clz((v11 - __p) >> 2);
  v13 = a1;
  if (v11 == __p)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,geom::triangle_mesh_atlas::vertex_incident_charts(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<unsigned int> &)::$_0 &,unsigned int *,false>(__p, v11, &v13, v9, 1);
  geom::triangle_mesh_atlas::pack_faces_into_charts(a1, &__p, a4, a5);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void std::vector<geom::triangle_mesh_atlas::face_vertex>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::triangle_mesh_atlas::face_vertex>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void geom::triangle_mesh_atlas::edge_incident_wedges(uint64_t a1, geom::triangle_mesh_half_edge_connectivity *this, unsigned int a3, std::vector<unsigned int> *a4, void *a5)
{
  v58 = *MEMORY[0x277D85DE8];
  half_edge_face = -1;
  v54 = -1;
  v10 = a3;
  v11 = *(this + 23);
  if (a3 < ((*(this + 24) - v11) >> 2))
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, *(v11 + 4 * a3) / 3u, *(v11 + 4 * a3) % 3u);
    if (geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(this, half_edge_for_face_vertex))
    {
      v13 = *(*(this + 23) + 4 * v10);
      v14 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, v13 / 3, v13 % 3);
      half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(this, v14);
      if (!geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(this, v14))
      {
        half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(this, v14);
        v54 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(this, half_edge_twin);
      }
    }

    else
    {
      half_edge_face = -1;
    }
  }

  v55 = half_edge_face;
  v51 = a4;
  v52 = a5;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v41[0] = &v55;
  v41[1] = &v54;
  v41[2] = &v42;
  v41[3] = &v53;
  v41[4] = &v48;
  v41[5] = &v45;
  v41[6] = &v51;
  a4->__end_ = a4->__begin_;
  a5[1] = *a5;
  std::vector<float>::reserve(a4, 4uLL);
  std::vector<geom::triangle_mesh_atlas::face_vertex>::reserve(a5, 0x20uLL);
  v16 = *(this + 23);
  if (v10 >= (*(this + 24) - v16) >> 2)
  {
    *v57 = -1;
    v18 = -1;
  }

  else
  {
    v17 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, *(v16 + 4 * v10) / 3u, *(v16 + 4 * v10) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(this, v17, v57);
    v18 = v57[0];
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  __p = 0;
  v36 = 0;
  v37 = 0;
  geom::triangle_mesh_atlas::vertex_incident_wedges(a1, this, v18, &v38, &__p);
  geom::triangle_mesh_atlas::edge_incident_wedges(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<geom::triangle_mesh_atlas::face_vertex> &)const::$_2::operator()(v41, &v38, &__p);
  geom::triangle_mesh_atlas::vertex_incident_wedges(a1, this, v57[1], &v38, &__p);
  geom::triangle_mesh_atlas::edge_incident_wedges(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<geom::triangle_mesh_atlas::face_vertex> &)const::$_2::operator()(v41, &v38, &__p);
  v19 = v48;
  v20 = v49;
  if (v49 != v48)
  {
    end = v51->__end_;
    if (v51->__begin_ == end)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(end - 1);
    }

    LODWORD(v56) = v22 + ((v49 - v48) >> 3);
    std::vector<unsigned int>::push_back[abi:nn200100](&v51->__begin_, &v56);
    do
    {
      v23 = *v19++;
      v56 = v23;
      std::vector<geom::triangle_mesh_atlas::face_vertex>::push_back[abi:nn200100](v52, &v56);
    }

    while (v19 != v20);
  }

  v24 = v45;
  v25 = v46;
  if (v46 != v45)
  {
    v26 = v51->__end_;
    if (v51->__begin_ == v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v26 - 1);
    }

    LODWORD(v56) = v27 + ((v46 - v45) >> 3);
    std::vector<unsigned int>::push_back[abi:nn200100](&v51->__begin_, &v56);
    do
    {
      v28 = *v24++;
      v56 = v28;
      std::vector<geom::triangle_mesh_atlas::face_vertex>::push_back[abi:nn200100](v52, &v56);
    }

    while (v24 != v25);
  }

  v29 = v42;
  v30 = v43;
  if (v43 != v42)
  {
    v31 = v51->__end_;
    if (v51->__begin_ == v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = *(v31 - 1);
    }

    LODWORD(v56) = v32 + ((v43 - v42) >> 3);
    std::vector<unsigned int>::push_back[abi:nn200100](&v51->__begin_, &v56);
    do
    {
      v33 = *v29++;
      v56 = v33;
      std::vector<geom::triangle_mesh_atlas::face_vertex>::push_back[abi:nn200100](v52, &v56);
    }

    while (v29 != v30);
  }

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void *std::vector<geom::triangle_mesh_atlas::face_vertex>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<geom::triangle_mesh_atlas::face_vertex>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void geom::triangle_mesh_atlas::edge_incident_wedges(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<geom::triangle_mesh_atlas::face_vertex> &)const::$_2::operator()(int **a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  if (a2[1] != *a2)
  {
    v35[11] = v3;
    v35[12] = v4;
    v9 = 0;
    do
    {
      if (v9)
      {
        v10 = *(v5 + 4 * v9 - 4);
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v5 + 4 * v9);
      v12 = v11 - v10;
      if (v11 != v10)
      {
        v13 = 0;
        v14 = 0;
        v15 = (*a3 + 8 * v10);
        v16 = 8 * v11 - 8 * v10;
        v17 = v16;
        v18 = v15;
        do
        {
          v19 = *v18 & 0x3FFFFFFF;
          if (v19 == **a1)
          {
            if (v14)
            {
              goto LABEL_18;
            }

            v14 = 0;
            v13 = 1;
          }

          else
          {
            v20 = v19 == *a1[1];
            if (v20 & v13)
            {
              LOBYTE(v13) = 1;
              v14 = 1;
              goto LABEL_17;
            }

            v14 |= v20;
          }

          ++v18;
          v17 -= 8;
        }

        while (v17);
        if ((v13 & 1) == 0)
        {
LABEL_29:
          if (v13)
          {
            v26 = a1[4];
            if (*(v26 + 1) == *v26)
            {
              v27 = -1;
            }

            else
            {
              v27 = **a1;
            }

            do
            {
              v35[0] = *v15;
              if ((v35[0] & 0x3FFFFFFF) != v27)
              {
                std::vector<geom::triangle_mesh_atlas::face_vertex>::push_back[abi:nn200100](v26, v35);
              }

              ++v15;
              v16 -= 8;
            }

            while (v16);
          }

          else if (v14)
          {
            v28 = a1[5];
            if (*(v28 + 1) == *v28)
            {
              v29 = -1;
            }

            else
            {
              v29 = *a1[1];
            }

            do
            {
              v35[0] = *v15;
              if ((v35[0] & 0x3FFFFFFF) != v29)
              {
                std::vector<geom::triangle_mesh_atlas::face_vertex>::push_back[abi:nn200100](v28, v35);
              }

              ++v15;
              v16 -= 8;
            }

            while (v16);
          }

          else
          {
            v30 = a1[6];
            v31 = *v30;
            v32 = *(*v30 + 8);
            if (**v30 == v32)
            {
              v33 = 0;
            }

            else
            {
              v33 = *(v32 - 4);
            }

            LODWORD(v35[0]) = v12 + v33;
            std::vector<unsigned int>::push_back[abi:nn200100](v31, v35);
            do
            {
              v34 = *v15++;
              v35[0] = v34;
              std::vector<geom::triangle_mesh_atlas::face_vertex>::push_back[abi:nn200100](v30[1], v35);
              v16 -= 8;
            }

            while (v16);
          }

          goto LABEL_50;
        }

LABEL_17:
        if ((v14 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_18:
        v21 = a1[2];
        if (*(v21 + 1) == *v21)
        {
          do
          {
            v25 = *v15++;
            v35[0] = v25;
            std::vector<geom::triangle_mesh_atlas::face_vertex>::push_back[abi:nn200100](v21, v35);
            v16 -= 8;
          }

          while (v16);
        }

        else
        {
          v22 = **a1;
          v23 = *a1[1];
          do
          {
            v35[0] = *v15;
            if ((v35[0] & 0x3FFFFFFF) != v22 && (v35[0] & 0x3FFFFFFF) != v23)
            {
              std::vector<geom::triangle_mesh_atlas::face_vertex>::push_back[abi:nn200100](v21, v35);
            }

            ++v15;
            v16 -= 8;
          }

          while (v16);
        }
      }

LABEL_50:
      ++v9;
      v5 = *a2;
    }

    while (v9 < (a2[1] - *a2) >> 2);
  }
}

void geom::triangle_mesh_atlas::edge_incident_charts(uint64_t a1, geom::triangle_mesh_half_edge_connectivity *this, unsigned int a3, uint64_t a4, std::vector<unsigned int> *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = *(this + 23);
  if (a3 >= ((*(this + 24) - v10) >> 2))
  {
    *v34 = -1;
    v12 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, *(v10 + 4 * a3) / 3u, *(v10 + 4 * a3) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(this, half_edge_for_face_vertex, v34);
    v12 = v34[0];
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(this, v12, &v30);
  __p = 0;
  v28 = 0;
  v29 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(this, v34[1], &__p);
  v13 = *(this + 23);
  if (v9 >= (*(this + 24) - v13) >> 2 || (v14 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, *(v13 + 4 * v9) / 3u, *(v13 + 4 * v9) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(this, v14)))
  {
    half_edge_face = -1;
    goto LABEL_9;
  }

  v15 = *(*(this + 23) + 4 * v9);
  v16 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(this, v15 / 3, v15 % 3);
  half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(this, v16);
  if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(this, v16))
  {
LABEL_9:
    v19 = -1;
    goto LABEL_10;
  }

  half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(this, v16);
  v19 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(this, half_edge_twin);
LABEL_10:
  v20 = __p;
  v21 = v28;
  while (v20 != v21)
  {
    v22 = *v20;
    LODWORD(v33) = v22;
    if (v22 != half_edge_face && v22 != v19)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](&v30, &v33);
    }

    ++v20;
  }

  v24 = 126 - 2 * __clz((v31 - v30) >> 2);
  v33 = a1;
  if (v31 == v30)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  std::__introsort<std::_ClassicAlgPolicy,geom::triangle_mesh_atlas::vertex_incident_charts(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<unsigned int> &)::$_0 &,unsigned int *,false>(v30, v31, &v33, v25, 1);
  geom::triangle_mesh_atlas::pack_faces_into_charts(a1, &v30, a4, a5);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  v26 = *MEMORY[0x277D85DE8];
}

BOOL geom::triangle_mesh_atlas::edge_vertices_have_compatible_charts(geom::triangle_mesh_atlas *this, const geom::triangle_mesh_connectivity *a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v17[0] = a2;
  v17[1] = this;
  v3 = *(a2 + 23);
  if (a3 >= ((*(a2 + 24) - v3) >> 2))
  {
    *v18 = -1;
    v6 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(a2, *(v3 + 4 * a3) / 3u, *(v3 + 4 * a3) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(a2, half_edge_for_face_vertex, v18);
    v6 = v18[0];
  }

  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  geom::triangle_mesh_atlas::edge_vertices_have_compatible_charts(geom::triangle_mesh_connectivity const&,unsigned int)const::$_0::operator()(v17, v6, &v16);
  geom::triangle_mesh_atlas::edge_vertices_have_compatible_charts(geom::triangle_mesh_connectivity const&,unsigned int)const::$_0::operator()(v17, v18[1], &v15);
  begin = v16.__begin_;
  v8 = v16.__end_ - v16.__begin_ == v15.__end_ - v15.__begin_;
  v9 = v16.__end_ - v16.__begin_;
  if (v16.__end_ != v16.__begin_ && v9 == v15.__end_ - v15.__begin_)
  {
    v10 = 0;
    v11 = v9 >> 2;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    while (v16.__begin_[v10] == v15.__begin_[v10])
    {
      if (v12 == ++v10)
      {
        v8 = v10 >= v11;
        goto LABEL_17;
      }
    }

    v8 = 0;
LABEL_17:
    v15.__end_ = v15.__begin_;
    operator delete(v15.__begin_);
    begin = v16.__begin_;
    if (!v16.__begin_)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v15.__begin_)
  {
    goto LABEL_17;
  }

  if (v16.__begin_)
  {
LABEL_14:
    v16.__end_ = begin;
    operator delete(begin);
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void geom::triangle_mesh_atlas::edge_vertices_have_compatible_charts(geom::triangle_mesh_connectivity const&,unsigned int)const::$_0::operator()(uint64_t a1, unsigned int a2, std::vector<unsigned int> *a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = *(a1 + 8);
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(*a1, a2, &v14);
  a3->__end_ = a3->__begin_;
  std::vector<float>::reserve(a3, v15 - v14);
  v5 = v14;
  v6 = v15;
  if (v14 == v15)
  {
    goto LABEL_14;
  }

  do
  {
    v7 = *(*(v4 + 96) + 4 * *v5);
    __x = v7;
    if (v7 == -1)
    {
      goto LABEL_12;
    }

    v8.__i_ = a3->__begin_;
    end = a3->__end_;
    if (end == a3->__begin_ || *(end - 1) < v7)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](&a3->__begin_, &__x);
      goto LABEL_12;
    }

    if (*v8.__i_ > v7)
    {
      goto LABEL_11;
    }

    v10 = 0;
    do
    {
      v11 = v10;
      v12 = v8.__i_[v10++];
    }

    while (v12 < v7);
    if (v12 > v7)
    {
      v8.__i_ += v11;
LABEL_11:
      std::vector<unsigned int>::insert(a3, v8, &__x);
    }

LABEL_12:
    ++v5;
  }

  while (v5 != v6);
  v5 = v14;
LABEL_14:
  if (v5)
  {
    v15 = v5;
    operator delete(v5);
  }
}

void geom::triangle_mesh_atlas::faces_in_chart(uint64_t a1, unsigned int a2, std::vector<unsigned int> *this)
{
  if (a2)
  {
    v5 = *(a1 + 48);
    v6 = *(v5 + 4 * (a2 - 1));
  }

  else
  {
    v6 = 0;
    v5 = *(a1 + 48);
  }

  v7 = *(v5 + 4 * a2);
  std::vector<float>::resize(this, v7 - v6);
  v8 = v7 - v6;
  if (v7 > v6)
  {
    begin = this->__begin_;
    v10 = (*(a1 + 72) + 4 * v6);
    do
    {
      v11 = *v10++;
      *begin++ = v11;
      --v8;
    }

    while (v8);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::triangle_mesh_atlas::face_vertex>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,geom::triangle_mesh_atlas::vertex_incident_charts(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<unsigned int> &)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v81 = *(a2 - 1);
        v82 = *v10;
        if (*(*(*a3 + 96) + 4 * v81) < *(*(*a3 + 96) + 4 * v82))
        {
          *v10 = v81;
          *(a2 - 1) = v82;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v89 = v10 + 1;
      v90 = v10[1];
      v91 = v10 + 2;
      v92 = v10[2];
      v93 = *v10;
      v94 = v93;
      v95 = *(*a3 + 96);
      v96 = *(v95 + 4 * v90);
      result = *(v95 + 4 * v93);
      v97 = v92;
      v98 = *(v95 + 4 * v92);
      if (v96 >= result)
      {
        if (v98 < v96)
        {
          *v89 = v92;
          *v91 = v90;
          result = *(v95 + 4 * v92);
          v143 = *(v95 + 4 * v93);
          v99 = v10;
          v100 = v10 + 1;
          v93 = v90;
          v92 = v90;
          if (result < v143)
          {
            goto LABEL_178;
          }

LABEL_180:
          v149 = *(a2 - 1);
          if (*(v95 + 4 * v149) < *(v95 + 4 * v92))
          {
            *v91 = v149;
            *(a2 - 1) = v90;
            v150 = *v91;
            v151 = *v89;
            if (*(v95 + 4 * v150) < *(v95 + 4 * v151))
            {
              v10[1] = v150;
              v10[2] = v151;
              v152 = *v10;
              if (*(v95 + 4 * v150) < *(v95 + 4 * v152))
              {
                *v10 = v150;
                v10[1] = v152;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v98 < v96)
        {
          v99 = v10;
          v100 = v10 + 2;
          LODWORD(v90) = *v10;
          goto LABEL_178;
        }

        *v10 = v90;
        v10[1] = v93;
        result = *(v95 + 4 * v92);
        v99 = v10 + 1;
        v100 = v10 + 2;
        LODWORD(v90) = v93;
        if (result < *(v95 + 4 * v93))
        {
LABEL_178:
          *v99 = v97;
          *v100 = v94;
          v92 = v93;
          goto LABEL_180;
        }
      }

      LODWORD(v90) = v92;
      goto LABEL_180;
    }

    if (v11 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geom::triangle_mesh_atlas::vertex_incident_charts(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<unsigned int> &)::$_0 &,unsigned int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v101 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v102 = 0;
            v103 = *(*a3 + 96);
            v104 = v10;
            do
            {
              v106 = *v104;
              v105 = v104[1];
              v104 = v101;
              if (*(v103 + 4 * v105) < *(v103 + 4 * v106))
              {
                v107 = v102;
                while (1)
                {
                  *(v10 + v107 + 4) = v106;
                  if (!v107)
                  {
                    break;
                  }

                  v106 = *(v10 + v107 - 4);
                  v107 -= 4;
                  if (*(v103 + 4 * v105) >= *(v103 + 4 * v106))
                  {
                    v108 = (v10 + v107 + 4);
                    goto LABEL_124;
                  }
                }

                v108 = v10;
LABEL_124:
                *v108 = v105;
              }

              v101 = v104 + 1;
              v102 += 4;
            }

            while (v104 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v144 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v145 = *(*a3 + 96);
          do
          {
            v147 = *v9;
            v146 = v9[1];
            v9 = v144;
            if (*(v145 + 4 * v146) < *(v145 + 4 * v147))
            {
              do
              {
                *v144 = v147;
                v147 = *(v144 - 2);
                --v144;
              }

              while (*(v145 + 4 * v146) < *(v145 + 4 * v147));
              *v144 = v146;
            }

            v144 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v109 = (v11 - 2) >> 1;
        v110 = *a3;
        v111 = v109;
        do
        {
          v112 = v111;
          if (v109 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = &v10[v113];
            v115 = *v114;
            if (2 * v112 + 2 >= v11)
            {
              v116 = *(v110 + 96);
            }

            else
            {
              v116 = *(v110 + 96);
              if (*(v116 + 4 * v115) < *(v116 + 4 * v114[1]))
              {
                v115 = v114[1];
                ++v114;
                v113 = 2 * v112 + 2;
              }
            }

            v117 = &v10[v112];
            v118 = *v117;
            if (*(v116 + 4 * v115) >= *(v116 + 4 * *v117))
            {
              do
              {
                v119 = v114;
                *v117 = v115;
                if (v109 < v113)
                {
                  break;
                }

                v120 = (2 * v113) | 1;
                v114 = &v10[v120];
                v121 = 2 * v113 + 2;
                v115 = *v114;
                if (v121 < v11 && *(v116 + 4 * v115) < *(v116 + 4 * v114[1]))
                {
                  v115 = v114[1];
                  ++v114;
                  v120 = v121;
                }

                v117 = v119;
                v113 = v120;
              }

              while (*(v116 + 4 * v115) >= *(v116 + 4 * v118));
              *v119 = v118;
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        do
        {
          v122 = 0;
          v123 = *v10;
          v124 = *a3;
          v125 = v10;
          do
          {
            v126 = &v125[v122];
            v127 = v126 + 1;
            v128 = v126[1];
            result = 2 * v122;
            v129 = (2 * v122) | 1;
            v122 = 2 * v122 + 2;
            if (v122 >= v11)
            {
              v122 = v129;
            }

            else
            {
              v131 = v126[2];
              v130 = v126 + 2;
              result = v131;
              if (*(*(v124 + 96) + 4 * v128) >= *(*(v124 + 96) + 4 * v131))
              {
                v122 = v129;
              }

              else
              {
                v128 = result;
                v127 = v130;
              }
            }

            *v125 = v128;
            v125 = v127;
          }

          while (v122 <= ((v11 - 2) >> 1));
          if (v127 == --a2)
          {
            *v127 = v123;
          }

          else
          {
            *v127 = *a2;
            *a2 = v123;
            v132 = (v127 - v10 + 4) >> 2;
            v133 = v132 < 2;
            v134 = v132 - 2;
            if (!v133)
            {
              v135 = v134 >> 1;
              v136 = &v10[v135];
              v137 = *v136;
              v138 = *v127;
              v139 = *(v124 + 96);
              if (*(v139 + 4 * v137) < *(v139 + 4 * *v127))
              {
                do
                {
                  v140 = v136;
                  *v127 = v137;
                  if (!v135)
                  {
                    break;
                  }

                  v135 = (v135 - 1) >> 1;
                  v136 = &v10[v135];
                  v137 = *v136;
                  v127 = v140;
                }

                while (*(v139 + 4 * v137) < *(v139 + 4 * v138));
                *v140 = v138;
              }
            }
          }

          v133 = v11-- <= 2;
        }

        while (!v133);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(*a3 + 96);
    v15 = *(a2 - 1);
    v16 = *(v14 + 4 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 4 * v17);
      if (v19 >= *(v14 + 4 * *v10))
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v23 = *v12;
          v24 = *v10;
          if (*(v14 + 4 * v23) < *(v14 + 4 * v24))
          {
            *v10 = v23;
            *v12 = v24;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v27 = *(a2 - 1);
        if (*(v14 + 4 * v27) < *(v14 + 4 * v18))
        {
          *v12 = v27;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = v10[1];
      v31 = *(v14 + 4 * v29);
      v32 = *(a2 - 2);
      v33 = *(v14 + 4 * v32);
      if (v31 >= *(v14 + 4 * v30))
      {
        if (v33 < v31)
        {
          *v28 = v32;
          *(a2 - 2) = v29;
          v34 = *v28;
          v35 = v10[1];
          if (*(v14 + 4 * v34) < *(v14 + 4 * v35))
          {
            v10[1] = v34;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v33 < v31)
        {
          v10[1] = v32;
          goto LABEL_39;
        }

        v10[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (*(v14 + 4 * v37) < *(v14 + 4 * v30))
        {
          *v28 = v37;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v40 = v12[1];
      v38 = v12 + 1;
      v39 = v40;
      v41 = v10[2];
      v42 = *(v14 + 4 * v40);
      v43 = *(a2 - 3);
      v44 = *(v14 + 4 * v43);
      if (v42 >= *(v14 + 4 * v41))
      {
        if (v44 < v42)
        {
          *v38 = v43;
          *(a2 - 3) = v39;
          v45 = *v38;
          v46 = v10[2];
          if (*(v14 + 4 * v45) < *(v14 + 4 * v46))
          {
            v10[2] = v45;
            *v38 = v46;
          }
        }
      }

      else
      {
        if (v44 < v42)
        {
          v10[2] = v43;
          goto LABEL_48;
        }

        v10[2] = v39;
        *v38 = v41;
        v47 = *(a2 - 3);
        if (*(v14 + 4 * v47) < *(v14 + 4 * v41))
        {
          *v38 = v47;
LABEL_48:
          *(a2 - 3) = v41;
        }
      }

      v48 = *v13;
      v49 = *v28;
      v50 = *(v14 + 4 * v48);
      v51 = *v38;
      v52 = *(v14 + 4 * *v38);
      if (v50 >= *(v14 + 4 * *v28))
      {
        if (v52 >= v50)
        {
          goto LABEL_56;
        }

        *v13 = v51;
        *v38 = v48;
        v38 = v13;
        LODWORD(v48) = v49;
        if (*(v14 + 4 * v51) >= *(v14 + 4 * v49))
        {
          LODWORD(v48) = v51;
          goto LABEL_56;
        }
      }

      else if (v52 >= v50)
      {
        *v28 = v48;
        *v13 = v49;
        v28 = v13;
        LODWORD(v48) = v51;
        if (*(v14 + 4 * v51) >= *(v14 + 4 * v49))
        {
          LODWORD(v48) = v49;
LABEL_56:
          v53 = *v10;
          *v10 = v48;
          *v13 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v38 = v49;
      goto LABEL_56;
    }

    v20 = *v10;
    v21 = *v13;
    v22 = *(v14 + 4 * v20);
    if (v22 >= *(v14 + 4 * *v13))
    {
      if (v16 < v22)
      {
        *v10 = v15;
        *(a2 - 1) = v20;
        v25 = *v10;
        v26 = *v13;
        if (*(v14 + 4 * v25) < *(v14 + 4 * v26))
        {
          *v13 = v25;
          *v10 = v26;
        }
      }

      goto LABEL_57;
    }

    if (v16 < v22)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v21;
      goto LABEL_57;
    }

    *v13 = v20;
    *v10 = v21;
    v36 = *(a2 - 1);
    if (*(v14 + 4 * v36) < *(v14 + 4 * v21))
    {
      *v10 = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v10;
    if (a5)
    {
      v55 = *(v14 + 4 * v54);
LABEL_60:
      v56 = 0;
      do
      {
        v57 = v10[++v56];
      }

      while (*(v14 + 4 * v57) < v55);
      v58 = &v10[v56];
      v59 = a2;
      if (v56 == 1)
      {
        v59 = a2;
        do
        {
          if (v58 >= v59)
          {
            break;
          }

          v61 = *--v59;
        }

        while (*(v14 + 4 * v61) >= v55);
      }

      else
      {
        do
        {
          v60 = *--v59;
        }

        while (*(v14 + 4 * v60) >= v55);
      }

      if (v58 >= v59)
      {
        v69 = v58 - 1;
      }

      else
      {
        v62 = *v59;
        v63 = v57;
        v64 = v58;
        v65 = v59;
        do
        {
          *v64 = v62;
          *v65 = v63;
          v66 = *(v14 + 4 * v54);
          do
          {
            v67 = v64[1];
            ++v64;
            v63 = v67;
          }

          while (*(v14 + 4 * v67) < v66);
          do
          {
            v68 = *--v65;
            v62 = v68;
          }

          while (*(v14 + 4 * v68) >= v66);
        }

        while (v64 < v65);
        v69 = v64 - 1;
      }

      if (v69 != v10)
      {
        *v10 = *v69;
      }

      *v69 = v54;
      if (v58 < v59)
      {
        goto LABEL_81;
      }

      v70 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geom::triangle_mesh_atlas::vertex_incident_charts(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<unsigned int> &)::$_0 &,unsigned int *>(v10, v69, a3);
      v10 = v69 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geom::triangle_mesh_atlas::vertex_incident_charts(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<unsigned int> &)::$_0 &,unsigned int *>(v69 + 1, a2, a3);
      if (result)
      {
        a2 = v69;
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,geom::triangle_mesh_atlas::vertex_incident_charts(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<unsigned int> &)::$_0 &,unsigned int *,false>(v9, v69, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v69 + 1;
      }
    }

    else
    {
      v55 = *(v14 + 4 * v54);
      if (*(v14 + 4 * *(v10 - 1)) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(v14 + 4 * *(a2 - 1)))
      {
        v72 = v10 + 1;
        do
        {
          v10 = v72;
          if (v72 >= a2)
          {
            break;
          }

          ++v72;
        }

        while (v55 >= *(v14 + 4 * *v10));
      }

      else
      {
        do
        {
          v71 = v10[1];
          ++v10;
        }

        while (v55 >= *(v14 + 4 * v71));
      }

      v73 = a2;
      if (v10 < a2)
      {
        v73 = a2;
        do
        {
          v74 = *--v73;
        }

        while (v55 < *(v14 + 4 * v74));
      }

      if (v10 < v73)
      {
        v75 = *v10;
        v76 = *v73;
        do
        {
          *v10 = v76;
          *v73 = v75;
          v77 = *(v14 + 4 * v54);
          do
          {
            v78 = v10[1];
            ++v10;
            v75 = v78;
          }

          while (v77 >= *(v14 + 4 * v78));
          do
          {
            v79 = *--v73;
            v76 = v79;
          }

          while (v77 < *(v14 + 4 * v79));
        }

        while (v10 < v73);
      }

      v80 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v80;
      }

      a5 = 0;
      *v80 = v54;
    }
  }

  v83 = *v10;
  v84 = v10[1];
  v85 = *(*a3 + 96);
  v86 = *(v85 + 4 * v84);
  v87 = *(a2 - 1);
  v88 = *(v85 + 4 * v87);
  if (v86 >= *(v85 + 4 * *v10))
  {
    if (v88 < v86)
    {
      v10[1] = v87;
      *(a2 - 1) = v84;
      v142 = *v10;
      v141 = v10[1];
      if (*(v85 + 4 * v141) < *(v85 + 4 * v142))
      {
        *v10 = v141;
        v10[1] = v142;
      }
    }
  }

  else
  {
    if (v88 >= v86)
    {
      *v10 = v84;
      v10[1] = v83;
      v148 = *(a2 - 1);
      if (*(v85 + 4 * v148) >= *(v85 + 4 * v83))
      {
        return result;
      }

      v10[1] = v148;
    }

    else
    {
      *v10 = v87;
    }

    *(a2 - 1) = v83;
  }

  return result;
}

_DWORD *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geom::triangle_mesh_atlas::vertex_incident_charts(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<unsigned int> &)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(*a6 + 96);
  v9 = *(v8 + 4 * v6);
  v10 = *a3;
  v11 = *(v8 + 4 * *a3);
  if (v9 >= *(v8 + 4 * v7))
  {
    if (v11 >= v9)
    {
      v7 = *a3;
      goto LABEL_14;
    }

    *a2 = v10;
    *a3 = v6;
    v12 = *a2;
    v13 = *result;
    if (*(v8 + 4 * v12) >= *(v8 + 4 * v13))
    {
      v7 = v6;
      v10 = v6;
      goto LABEL_14;
    }

    *result = v12;
    *a2 = v13;
    v7 = *a3;
  }

  else
  {
    if (v11 >= v9)
    {
      *result = v6;
      *a2 = v7;
      v10 = *a3;
      if (*(v8 + 4 * *a3) >= *(v8 + 4 * v7))
      {
        v7 = *a3;
        goto LABEL_14;
      }

      *a2 = v10;
    }

    else
    {
      *result = v10;
    }

    *a3 = v7;
  }

  v10 = v7;
LABEL_14:
  v14 = *a4;
  if (*(v8 + 4 * v14) < *(v8 + 4 * v7))
  {
    *a3 = v14;
    *a4 = v10;
    v15 = *a3;
    v16 = *a2;
    if (*(v8 + 4 * v15) < *(v8 + 4 * v16))
    {
      *a2 = v15;
      *a3 = v16;
      v17 = *a2;
      v18 = *result;
      if (*(v8 + 4 * v17) < *(v8 + 4 * v18))
      {
        *result = v17;
        *a2 = v18;
      }
    }
  }

  v19 = *a5;
  v20 = *a4;
  if (*(v8 + 4 * v19) < *(v8 + 4 * v20))
  {
    *a4 = v19;
    *a5 = v20;
    v21 = *a4;
    v22 = *a3;
    if (*(v8 + 4 * v21) < *(v8 + 4 * v22))
    {
      *a3 = v21;
      *a4 = v22;
      v23 = *a3;
      v24 = *a2;
      if (*(v8 + 4 * v23) < *(v8 + 4 * v24))
      {
        *a2 = v23;
        *a3 = v24;
        v25 = *a2;
        v26 = *result;
        if (*(v8 + 4 * v25) < *(v8 + 4 * v26))
        {
          *result = v25;
          *a2 = v26;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geom::triangle_mesh_atlas::vertex_incident_charts(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<unsigned int> &)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *(*a3 + 96);
      v9 = *(v8 + 4 * v7);
      v10 = *(a2 - 1);
      v11 = *(v8 + 4 * v10);
      if (v9 >= *(v8 + 4 * *a1))
      {
        if (v11 < v9)
        {
          a1[1] = v10;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 4 * v35) < *(v8 + 4 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v47 = *(a2 - 1);
        if (*(v8 + 4 * v47) >= *(v8 + 4 * v6))
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v10;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geom::triangle_mesh_atlas::vertex_incident_charts(geom::triangle_mesh_connectivity const&,unsigned int,std::vector<unsigned int> &,std::vector<unsigned int> &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a1;
    v28 = v27;
    v29 = *(*a3 + 96);
    v30 = *(v29 + 4 * v24);
    v31 = v26;
    v32 = *(v29 + 4 * v26);
    if (v30 >= *(v29 + 4 * v27))
    {
      if (v32 < v30)
      {
        *v23 = v26;
        *v25 = v24;
        v45 = *(v29 + 4 * v26);
        v46 = *(v29 + 4 * v27);
        v33 = a1;
        v34 = a1 + 1;
        v27 = v24;
        v26 = v24;
        if (v45 >= v46)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v32 < v30)
      {
        v33 = a1;
        v34 = a1 + 2;
        LODWORD(v24) = *a1;
LABEL_44:
        *v33 = v31;
        *v34 = v28;
        v26 = v27;
LABEL_46:
        v48 = *(a2 - 1);
        if (*(v29 + 4 * v48) < *(v29 + 4 * v26))
        {
          *v25 = v48;
          *(a2 - 1) = v24;
          v49 = *v25;
          v50 = *v23;
          if (*(v29 + 4 * v49) < *(v29 + 4 * v50))
          {
            a1[1] = v49;
            a1[2] = v50;
            v51 = *a1;
            if (*(v29 + 4 * v49) < *(v29 + 4 * v51))
            {
              *a1 = v49;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      *a1 = v24;
      a1[1] = v27;
      v33 = a1 + 1;
      v34 = a1 + 2;
      LODWORD(v24) = v27;
      if (*(v29 + 4 * v26) < *(v29 + 4 * v27))
      {
        goto LABEL_44;
      }
    }

    LODWORD(v24) = v26;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*(*a3 + 96) + 4 * v4) < *(*(*a3 + 96) + 4 * v5))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *(*a3 + 96);
  v16 = *(v15 + 4 * v14);
  v17 = *a1;
  v18 = *(v15 + 4 * v12);
  if (v16 >= *(v15 + 4 * *a1))
  {
    if (v18 >= v16)
    {
      goto LABEL_26;
    }

    a1[1] = v12;
    *v13 = v14;
    v21 = *(v15 + 4 * v12);
    v22 = *(v15 + 4 * v17);
    v19 = a1;
    v20 = a1 + 1;
LABEL_24:
    if (v21 >= v22)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v19 = a1;
  v20 = a1 + 2;
  if (v18 >= v16)
  {
    *a1 = v14;
    a1[1] = v17;
    v21 = *(v15 + 4 * v12);
    v22 = *(v15 + 4 * v17);
    v19 = a1 + 1;
    v20 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v19 = v12;
  *v20 = v17;
LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 12; ; i += 4)
  {
    v40 = *v37;
    v41 = *v13;
    if (*(v15 + 4 * *v37) < *(v15 + 4 * v41))
    {
      v42 = i;
      while (1)
      {
        *(a1 + v42) = v41;
        v43 = v42 - 4;
        if (v42 == 4)
        {
          break;
        }

        v41 = *(a1 + v42 - 8);
        v42 -= 4;
        if (*(v15 + 4 * v40) >= *(v15 + 4 * v41))
        {
          v44 = (a1 + v43);
          goto LABEL_34;
        }
      }

      v44 = a1;
LABEL_34:
      *v44 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v13 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::vertex_to_half_edge_iterator<unsigned int,geom::triangle_mesh_half_edge_connectivity::outgoing_half_edge_tag>::operator++(uint64_t result)
{
  if (*result == 1)
  {
    v2 = *(result + 8);
    v1 = *(result + 12);
    if (v1 >> 30)
    {
      v3 = (v1 >> 30) - 1;
    }

    else
    {
      v3 = 2;
    }

    v4 = *(*(*(result + 16) + 64) + 4 * (v3 + 3 * (v1 & 0x3FFFFFFF)));
    *(result + 12) = v4;
    v5 = v4 != v2;
    v6 = v4 >> 30 != 3;
    if (v2 != -1)
    {
      v6 = v5;
    }

    *result = v6;
  }

  return result;
}

double geom::triangle_mesh_half_edge_connectivity::triangle_mesh_half_edge_connectivity(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *a5;
  *(a1 + 32) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *a6;
  *(a1 + 56) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = *a7;
  *(a1 + 80) = *(a7 + 16);
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *a8;
  *(a1 + 104) = *(a8 + 16);
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::vertex_to_half_edge_iterator<unsigned int,geom::triangle_mesh_half_edge_connectivity::incoming_half_edge_tag>::operator*(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 >> 30)
  {
    v2 = (v1 & 0xC0000000) - 0x40000000;
  }

  else
  {
    v2 = 0x80000000;
  }

  return v2 & 0xC0000000 | v1 & 0x3FFFFFFF;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::vertex_to_half_edge_iterator<unsigned int,geom::triangle_mesh_half_edge_connectivity::adjacent_vertex_tag>::operator*(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = -1;
  geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(*(a1 + 16), *(a1 + 12), v4);
  result = *(v4 | (4 * (LODWORD(v4[0]) == *(a1 + 4))));
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2, unsigned int *a3)
{
  result = geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(this, a2);
  if (result)
  {
    v7 = a2;
    if (a2 >> 30 == 3)
    {
      v7 = *(*(this + 11) + 4 * (a2 & 0x3FFFFFFF));
    }

    v8 = 3 * (v7 & 0x3FFFFFFF);
    if (v7 >> 30 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = (v7 >> 30) + 1;
    }

    v10 = *(this + 2);
    v11 = *(v10 + 4 * (v8 + (v7 >> 30)));
    *a3 = v11;
    v12 = *(v10 + 4 * (v9 + v8));
    a3[1] = v12;
    if (v7 != a2)
    {
      *a3 = v12;
      a3[1] = v11;
    }
  }

  return result;
}

void *geom::triangle_mesh_half_edge_connectivity::make_vertex_to_half_edge_iterator<unsigned int,geom::triangle_mesh_half_edge_connectivity::outgoing_half_edge_tag>@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[5];
  if (a2 >= ((result[6] - v3) >> 2) || (v4 = *(v3 + 4 * a2), v4 == -1))
  {
    result = 0;
    *a3 = 0;
    v4 = -1;
    *(a3 + 4) = -1;
    v5 = -1;
  }

  else if (v4 >> 30 == 3)
  {
    v5 = *(result[11] + 4 * (v4 & 0x3FFFFFFF));
    *a3 = 1;
    *(a3 + 4) = a2;
    v4 = -1;
  }

  else
  {
    *a3 = 1;
    *(a3 + 4) = a2;
    v5 = v4;
  }

  *(a3 + 8) = v4;
  *(a3 + 12) = v5;
  *(a3 + 16) = result;
  return result;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::vertex_to_half_edge_iterator<unsigned int,geom::triangle_mesh_half_edge_connectivity::adjacent_vertex_tag>::operator++(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 12);
    v2 = v1 >> 30;
    if (v1 >> 30 == 3)
    {
      v3 = 0;
LABEL_9:
      *result = v3;
      return result;
    }

    v4 = v1 & 0x3FFFFFFF;
    if (v2)
    {
      v5 = v2 - 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = *(*(*(result + 16) + 64) + 4 * (v5 + 3 * v4));
    *(result + 12) = v6;
    v7 = *(result + 8);
    if (v7 != -1)
    {
      v3 = v6 != v7;
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::face_vertex_to_component_iterator<unsigned int,geom::triangle_mesh_half_edge_connectivity::outgoing_half_edge_tag>::operator*(uint64_t a1)
{
  if (*a1 == 1)
  {
    return (*(a1 + 4) / 3u) & 0x3FFFFFFF | ((*(a1 + 4) + *(a1 + 4) / 3u) << 30);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t geom::triangle_mesh_half_edge_connectivity::face_vertex_to_component_iterator<unsigned int,geom::triangle_mesh_half_edge_connectivity::adjacent_face_tag>::operator*(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    v8[0] = -1;
    v1 = *(a1 + 4);
    v2 = *(a1 + 16);
    if (geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(v2, (v1 / 3) & 0x3FFFFFFF | ((v1 + v1 / 3) << 30)))
    {
      v3 = (v1 / 3uLL) & 0x3FFFFFFF;
      LODWORD(v8[0]) = (v1 / 3) & 0x3FFFFFFF;
      v4 = v1 + 0x40000000;
      if (v1 >> 30 != 3)
      {
        v4 = v1;
      }

      v5 = *(*(v2 + 8) + 4 * v4);
      if (v5 >> 30 != 3)
      {
        HIDWORD(v8[0]) = v5 & 0x3FFFFFFF;
      }
    }

    else
    {
      LODWORD(v3) = -1;
    }

    result = *(v8 | (4 * (v3 == v1 / 3)));
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::face_vertex_to_component_iterator<unsigned int,geom::triangle_mesh_half_edge_connectivity::adjacent_face_tag>::operator++(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 4);
    v3 = *(a1 + 8);
    v4 = v2 + 1;
    v5 = (v2 << 30) + 0x40000000;
    do
    {
      v6 = v4;
      *(a1 + 4) = v4;
      if (v4 >= v3)
      {
        break;
      }

      is_boundary_half_edge = geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(*(a1 + 16), v5 + ((v4 / 3) << 30) + ((v4 / 3) & 0x3FFFFFFF));
      v4 = v6 + 1;
      v5 += 0x40000000;
    }

    while (is_boundary_half_edge);
    *a1 = v6 < v3;
  }

  return a1;
}

BOOL geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2)
{
  result = geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(this, a2);
  if (result)
  {
    return a2 >> 30 == 3 || *(*(this + 8) + 4 * (3 * (a2 & 0x3FFFFFFF) + (a2 >> 30))) >> 30 == 3;
  }

  return result;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::face_vertex_to_component_iterator<unsigned int,geom::triangle_mesh_half_edge_connectivity::outgoing_half_edge_tag>::operator++(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 4);
    v3 = *(a1 + 8);
    v4 = v2 + 1;
    v5 = (v2 << 30) + 0x40000000;
    do
    {
      v6 = v4;
      *(a1 + 4) = v4;
      if (v4 >= v3)
      {
        break;
      }

      is_valid_half_edge = geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(*(a1 + 16), v5 + ((v4 / 3) << 30) + ((v4 / 3) & 0x3FFFFFFF));
      v4 = v6 + 1;
      v5 += 0x40000000;
    }

    while (!is_valid_half_edge);
    *a1 = v6 < v3;
  }

  return a1;
}

BOOL geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2 & 0x3FFFFFFF;
  if (a2 >> 30 == 3)
  {
    v3 = *(this + 11);
    v4 = *(this + 12);
  }

  else
  {
    v2 = (3 * v2);
    v3 = *(this + 2);
    v4 = *(this + 3);
  }

  return v2 < (v4 - v3) >> 2 && *(v3 + 4 * v2) != -1;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::face_to_adjacent_faces_begin@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = (3 * a2);
  v5 = *(this + 16);
  if (v4 >= (*(this + 24) - v5) >> 2 || *(v5 + 4 * v4) == -1)
  {
    v6 = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    v13 = -1;
    *(a3 + 4) = -1;
  }

  else
  {
    v6 = this;
    v7 = a2 & 0x3FFFFFFF;
    this = geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(this, a2 & 0x3FFFFFFF);
    if (this)
    {
      v8 = 0;
      v9 = v7 | 0x40000000;
      do
      {
        v10 = v8 + 1;
        this = geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v6, v9);
        v11 = v8 < 2;
        if (!this)
        {
          break;
        }

        v9 += 0x40000000;
      }

      while (v8++ < 2);
    }

    else
    {
      v10 = 0;
      v11 = 1;
    }

    v13 = v4 + 3;
    *a3 = v11;
    *(a3 + 4) = v4 + v10;
  }

  *(a3 + 8) = v13;
  *(a3 + 16) = v6;
  return this;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::half_edges_begin@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = ((*(this + 24) - *(this + 16)) >> 2) / 3uLL;
  v5 = 3 * v4;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
LABEL_3:
    v8 = 0;
    v9 = v6 & 0x3FFFFFFF;
    v10 = v7 + 3;
    v11 = v6 & 0x3FFFFFFF;
    while (1)
    {
      this = geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(v2, v11);
      if (this)
      {
        break;
      }

      --v8;
      v11 += 0x40000000;
      if (v8 == -3)
      {
        if (v10 >= v5)
        {
          v12 = 1;
        }

        else
        {
          v12 = this;
        }

        v6 = v9 + 1;
        v7 += 3;
        if (v12)
        {
          LOBYTE(v4) = 0;
          goto LABEL_13;
        }

        goto LABEL_3;
      }
    }

    v10 = v7 - v8;
    LOBYTE(v4) = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_13:
  *a2 = v4;
  *(a2 + 4) = v10;
  *(a2 + 8) = v5;
  *(a2 + 16) = v2;
  return this;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::half_edges_end@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = ((*(this + 24) - *(this + 16)) >> 2) / 3uLL;
  *a2 = 0;
  LODWORD(v2) = 3 * v2;
  *(a2 + 4) = v2;
  *(a2 + 8) = v2;
  *(a2 + 16) = this;
  return this;
}

void geom::triangle_mesh_half_edge_connectivity::make(geom::triangle_mesh_half_edge_connectivity *this@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, a2);
  }

  geom::triangle_mesh_half_edge_connectivity::make(this, &__p, a3);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void geom::triangle_mesh_half_edge_connectivity::make(std::vector<int>::size_type __sz@<X0>, unsigned int **a2@<X1>, _BYTE *a3@<X8>)
{
  v184 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v3 = a2[1];
  v5 = v3 - *a2;
  if (v5 % 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = (v5 / 3) > 0x20000000uLL;
  }

  if (v6)
  {
LABEL_6:
    *a3 = 0;
    a3[192] = 0;
    goto LABEL_181;
  }

  v7 = a2;
  if (v3 != v4)
  {
    do
    {
      v8 = *v4++;
      if (v8 >= __sz)
      {
        goto LABEL_6;
      }
    }

    while (--v5);
  }

  memset(&v164, 0, sizeof(v164));
  v134 = __sz;
  std::vector<unsigned int>::resize(&v164, __sz, &geom::triangle_mesh_half_edge_connectivity::k_invalid_index);
  begin = v164.__begin_;
  end = v164.__end_;
  if (v164.__begin_ != v164.__end_)
  {
    v11 = 0;
    v12 = (v164.__end_ - v164.__begin_ - 4) >> 2;
    v13 = vdupq_n_s64(v12);
    v14 = (v12 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v15 = v164.__begin_ + 2;
    do
    {
      v16 = vdupq_n_s64(v11);
      v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_2500C1680)));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        *(v15 - 2) = v11;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        *(v15 - 1) = v11 + 1;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_2500C1670)))).i32[1])
      {
        *v15 = v11 + 2;
        v15[1] = v11 + 3;
      }

      v11 += 4;
      v15 += 4;
    }

    while (v14 != v11);
  }

  v18 = *v7;
  v19 = v7[1];
  if (*v7 < v19)
  {
    v20 = (end - begin) >> 2;
    do
    {
      v22 = *v18;
      v21 = v18[1];
      if (v22 == v21 || (v23 = v18[2], v22 == v23))
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&v164.__begin_, &v164.__begin_[v22]);
        *v18 = v20;
        LODWORD(v20) = v20 + 1;
        v21 = v18[1];
        v23 = v18[2];
      }

      if (v21 == v23)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&v164.__begin_, &v164.__begin_[v23]);
        v18[1] = v20;
        LODWORD(v20) = v20 + 1;
      }

      v18 += 3;
    }

    while (v18 < v19);
  }

  v183 = 0;
  v181 = 0u;
  v182 = 0u;
  v24 = *v7;
  v25 = v7[1];
  v26 = (v25 - *v7) >> 2;
  if (*(&v182 + 1) < v26)
  {
    v24 = *v7;
    v25 = v7[1];
    v26 = (v25 - *v7) >> 2;
  }

  v146 = v7;
  if (v26 >= 3)
  {
    v27 = v26 / 3;
    v28 = (v164.__end_ - v164.__begin_) >> 2;
    v29 = (v24 + 8);
    v30 = 1;
    do
    {
      v32 = *(v29 - 2);
      v31 = *(v29 - 1);
      v148 = (v32 | (v31 << 32));
      v34 = *v29;
      v148 = (v31 | (v34 << 32));
      v148 = (v34 | (v32 << 32));
      if ((v36 & internal) != 0xFFFFFFFFFFFFFFFFLL)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&v164.__begin_, &v164.__begin_[v32]);
        *(v29 - 2) = v28;
        LODWORD(v28) = v28 + 1;
      }

      if ((v35 & internal) != 0xFFFFFFFFFFFFFFFFLL)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&v164.__begin_, &v164.__begin_[*(v29 - 1)]);
        *(v29 - 1) = v28;
        LODWORD(v28) = v28 + 1;
      }

      if ((v36 & v35) != 0xFFFFFFFFFFFFFFFFLL)
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&v164.__begin_, &v164.__begin_[*v29]);
        *v29 = v28;
        LODWORD(v28) = v28 + 1;
      }

      v180[0] = *(v29 - 1);
      LODWORD(v177) = (v30 - 1) & 0x3FFFFFFF;
      v180[0] = *(v29 - 1);
      LODWORD(v177) = (v30 - 1) & 0x3FFFFFFF | 0x40000000;
      LODWORD(v180[0]) = *v29;
      HIDWORD(v180[0]) = *(v29 - 2);
      LODWORD(v177) = (v30 - 1) & 0x3FFFFFFF | 0x80000000;
      v6 = v27 > v30++;
      v29 += 3;
    }

    while (v6);
    v7 = v146;
    v24 = *v146;
    v25 = v146[1];
  }

  memset(&v163, 0, sizeof(v163));
  memset(&v162, 0, sizeof(v162));
  memset(&v161, 0, sizeof(v161));
  v37 = ((v25 - v24) >> 2) / 3uLL;
  v38 = ((v164.__end_ - v164.__begin_) >> 2);
  v165 = 0;
  v166 = 0;
  v167 = 0;
  if (((v164.__end_ - v164.__begin_) >> 2))
  {
    std::vector<float>::__vallocate[abi:nn200100](&v165, ((v164.__end_ - v164.__begin_) >> 2));
  }

  v148 = &v181;
  if (v182 >= 0x10)
  {
    v39 = 0;
    v40 = v181;
    v41 = v182 >> 4;
    while (1)
    {
      v42 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v40), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      if (v42 != 0xFFFFLL)
      {
        break;
      }

      v39 -= 16;
      ++v40;
      if (!--v41)
      {
        goto LABEL_49;
      }
    }

    v43 = __clz(__rbit64(v42 ^ 0xFFFFLL));
    v44 = (v43 - v39);
    v149[0] = (v42 ^ 0xFFFFLL);
    v149[1] = (v43 - v39);
    if (v43 + 1 != v39)
    {
      v45 = v165;
      do
      {
        v46 = *(*(v148 + 1) + 12 * v44);
        ++v45[v46];
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(&v148);
        v44 = v149[1];
      }

      while (v149[1] != -1);
    }
  }

LABEL_49:
  v163.__end_ = v163.__begin_;
  v162.__end_ = v162.__begin_;
  v161.__end_ = v161.__begin_;
  std::vector<float>::reserve(&v161, v37);
  v47 = *v7;
  if (v37)
  {
    v48 = 0;
    v49 = v162.__begin_;
    do
    {
      v50 = 0;
      v51 = v48 & 0x3FFFFFFF;
      do
      {
        v52 = *(v47 + 4 * v50);
        if (v50 == 2)
        {
          v53 = 0;
        }

        else
        {
          v53 = v50 + 1;
        }

        v148 = (*(v47 + 4 * v53) | (v52 << 32));
        if (v54 == -1)
        {
          v55 = ((LODWORD(v161.__end_) - LODWORD(v161.__begin_)) >> 2) | 0xC0000000;
          v49[v50] = v55;
          LODWORD(v148) = v51;
          std::vector<unsigned int>::push_back[abi:nn200100](&v161.__begin_, &v148);
          v163.__begin_[v52] = v55;
        }

        else
        {
          v49[v50] = *(*(&v181 + 1) + 12 * v54 + 8);
          if (v163.__begin_[v52] == -1)
          {
            v163.__begin_[v52] = v51;
          }
        }

        ++v50;
        v51 += 0x40000000;
      }

      while (v50 != 3);
      ++v48;
      v47 += 12;
      v49 += 3;
    }

    while (v48 != v37);
    v7 = v146;
    v47 = *v146;
  }

  v56 = v7[1];
  v57 = v164.__end_ - v164.__begin_;
  LOBYTE(v148) = 0;
  std::vector<BOOL>::vector(v180, v57);
  if (!v57)
  {
    v67 = 0;
    goto LABEL_152;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v145 = ((v56 - v47) >> 2) / 3uLL;
  v62 = v163.__begin_;
  v63 = v162.__begin_;
  v64 = v161.__begin_;
  v65 = v165;
  v66 = v180[0];
  v67 = v57;
  v68 = v57;
  do
  {
    v69 = v62[v58];
    if (v69 == -1)
    {
LABEL_67:
      v71 = 0;
      goto LABEL_79;
    }

    if (v69 >> 30 == 3)
    {
      v70 = v64[v69 & 0x3FFFFFFF];
      if (v70 >> 30 == 3)
      {
        goto LABEL_67;
      }

      v71 = 0;
      do
      {
        ++v71;
        v76 = v70 & 0x3FFFFFFF;
        v77 = v70 >> 30;
        if (v77)
        {
          v78 = v77 - 1;
        }

        else
        {
          v78 = 2;
        }

        v70 = v63[v78 + 3 * v76];
      }

      while (v70 >> 30 != 3);
    }

    else
    {
      v71 = 0;
      v72 = v62[v58];
      do
      {
        ++v71;
        v73 = v72 & 0x3FFFFFFF;
        v74 = v72 >> 30;
        if (v74)
        {
          v75 = v74 - 1;
        }

        else
        {
          v75 = 2;
        }

        v72 = v63[v75 + 3 * v73];
      }

      while (v72 != v69);
    }

LABEL_79:
    v79 = v65[v58];
    if (v71 != v79)
    {
      *&v66[(v58 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v58;
      ++v59;
      v61 += v79;
      if (v79 > v60)
      {
        v60 = v79;
      }
    }

    if (!v71)
    {
      v67 = --v68;
    }

    ++v58;
  }

  while (v58 != v57);
  if (v59)
  {
    v144 = v60;
    v147 = v57;
    v137 = v67;
    v177 = 0;
    v178 = 0;
    v179 = 0;
    std::vector<double>::reserve(&v177, v61);
    if (v145)
    {
      v80 = 0;
      v81 = *v146;
      do
      {
        v82 = 0;
        v83 = (v80 & 0x3FFFFFFF) << 32;
        do
        {
          v84 = *(v81 + v82);
          if ((*(v180[0] + ((v84 >> 3) & 0x1FFFFFF8)) >> v84))
          {
            v85 = v83 + v84;
            v86 = v178;
            if (v178 >= v179)
            {
              v88 = (v178 - v177) >> 3;
              if ((v88 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v89 = (v179 - v177) >> 2;
              if (v89 <= v88 + 1)
              {
                v89 = v88 + 1;
              }

              if (v179 - v177 >= 0x7FFFFFFFFFFFFFF8)
              {
                v90 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v90 = v89;
              }

              if (v90)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(&v177, v90);
              }

              v91 = (8 * v88);
              *v91 = v85;
              v87 = (8 * v88 + 8);
              v92 = v91 - (v178 - v177);
              memcpy(v92, v177, v178 - v177);
              v93 = v177;
              v177 = v92;
              v178 = v87;
              v179 = 0;
              if (v93)
              {
                operator delete(v93);
              }
            }

            else
            {
              *v178 = v85;
              v87 = v86 + 8;
            }

            v178 = v87;
          }

          v82 += 4;
          v83 += 0x4000000000000000;
        }

        while (v82 != 12);
        ++v80;
        v81 += 12;
      }

      while (v80 != v145);
    }

    v94 = 126 - 2 * __clz((v178 - v177) >> 3);
    if (v178 == v177)
    {
      v95 = 0;
    }

    else
    {
      v95 = v94;
    }

    LOBYTE(v148) = 0;
    std::vector<BOOL>::vector(v176, v145);
    v174 = 0;
    v173 = 0;
    v175 = 0;
    if (v144)
    {
      std::vector<float>::__vallocate[abi:nn200100](&v173, v144);
    }

    __p = 0;
    v171 = 0;
    v172 = 0;
    v7 = v146;
    v67 = v137;
    if (((v178 - v177) & 0x7FFFFFFF8) != 0)
    {
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = ((v178 - v177) >> 3);
      v100 = 0xFFFFFFFFLL;
      v136 = v99;
      do
      {
        v101 = v177;
        v102 = *&v177[8 * v97];
        if (v100 != v102)
        {
          if (v97 > v98)
          {
            v103 = v176[0];
            v104 = v96 + v98;
            v105 = &v177[8 * v98 + 4];
            do
            {
              v106 = *v105;
              v105 += 8;
              *&v103[(v106 & 0x3FFFFFC0) >> 3] &= ~(1 << v106);
            }

            while (!__CFADD__(v104++, 1));
          }

          v108 = v163.__begin_[v102];
          if (v108 >> 30 == 3)
          {
            v108 = v161.__begin_[v108 & 0x3FFFFFFF];
          }

          v98 = v97;
          v101 = v177;
          v100 = v102;
        }

        v109 = *&v101[8 * v97 + 4];
        if (((*(v176[0] + ((v109 >> 3) & 0x7FFFFF8)) >> v109) & 1) == 0)
        {
          ++v67;
          std::vector<unsigned int>::push_back[abi:nn200100](&v164.__begin_, &v164.__begin_[v100]);
          if (petal_of_faces_incident_to_face_vertex_helper)
          {
            v138 = v67;
            v111 = 0;
            v140 = 4 * petal_of_faces_incident_to_face_vertex_helper;
            v139 = v100;
            v142 = v98;
            v141 = v100;
            v7 = v146;
            while (1)
            {
              v112 = *(__p + v111);
              v113 = (*v7 + 4 * (3 * v112));
              if (*v113 == v100)
              {
                v114 = 0;
                v115 = 2;
                v116 = v139;
                v143 = (*v7 + 4 * (3 * v112));
                v117 = 1;
                goto LABEL_132;
              }

              if (v113[1] == v100)
              {
                v114 = 1;
              }

              else
              {
                if (v113[2] == v100)
                {
                  v143 = v113 + 2;
                  v117 = 0;
                  v114 = 2;
                  v115 = 1;
                  v116 = v139;
                  goto LABEL_132;
                }

                v114 = -1;
              }

              v115 = v114 - 1;
              v117 = v114 + 1;
              v143 = &v113[v114];
              v116 = *v143;
LABEL_132:
              v118 = v113[v115];
              v119 = v113[v117];
              v169 = v116 | (v119 << 32);
              v148 = &v181;
              v149[0] = 0;
              v149[1] = v120;
              if (v120 >> 4 < v182 >> 4)
              {
                v149[0] = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v181 + 16 * (v120 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
              }

              v169 = v118 | (v116 << 32);
              v148 = &v181;
              v149[0] = 0;
              v149[1] = v121;
              if (v121 >> 4 < v182 >> 4)
              {
                v149[0] = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v181 + 16 * (v121 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
              }

              v168[1] = v119;
              v168[0] = v147;
              LODWORD(v169) = v112 & 0x3FFFFFFF | (v114 << 30);
              *v168 = (v147 << 32) | v118;
              LODWORD(v169) = v112 & 0x3FFFFFFF | (v115 << 30);
              v7 = v146;
              v98 = v142;
              *v143 = v147;
              v122 = v162.__begin_[3 * v112 + v114];
              if (v122 >> 30 == 3)
              {
                goto LABEL_139;
              }

              if (v163.__begin_[v147] == -1)
              {
                v122 = v112 & 0x3FFFFFFF | (v114 << 30);
LABEL_139:
                v163.__begin_[v147] = v122;
              }

              v111 += 4;
              v100 = v141;
              if (v140 == v111)
              {
                v147 = (v147 + 1);
                v67 = v138;
                v99 = v136;
                goto LABEL_143;
              }
            }
          }

          v147 = (v147 + 1);
          v7 = v146;
        }

LABEL_143:
        ++v97;
        --v96;
      }

      while (v97 != v99);
    }

    if (__p)
    {
      v171 = __p;
      operator delete(__p);
    }

    if (v173)
    {
      v174 = v173;
      operator delete(v173);
    }

    if (v176[0])
    {
      operator delete(v176[0]);
    }

    if (v177)
    {
      v178 = v177;
      operator delete(v177);
    }
  }

LABEL_152:
  if (v180[0])
  {
    operator delete(v180[0]);
  }

  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  v123 = *v7;
  v124 = *(v7 + 1);
  memset(v158, 0, 25);
  v150 = v124;
  v125 = ((v124 - v123) >> 2) / 3uLL;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  value = v163.__end_cap_.__value_;
  v127 = *&v163.__begin_;
  memset(&v163, 0, sizeof(v163));
  v128 = v162.__end_cap_.__value_;
  v129 = *&v162.__begin_;
  memset(&v162, 0, sizeof(v162));
  v130 = v161.__end_cap_.__value_;
  v131 = *&v161.__begin_;
  memset(&v161, 0, sizeof(v161));
  v160 = 0;
  v156[1] = 0;
  v149[0] = 0;
  v157 = 0u;
  *v151 = v127;
  v152 = value;
  *v153 = v129;
  v154 = v128;
  *v155 = v131;
  v156[0] = v130;
  v148 = __PAIR64__(v125, v67);
  v149[1] = v123;
  if (v67 != v134)
  {
    std::optional<std::vector<unsigned int>>::operator=[abi:nn200100]<std::vector<unsigned int>,void>(&v158[24], &v164);
  }

  std::pair<geom::triangle_mesh_half_edge_connectivity,std::optional<std::vector<unsigned int>>>::pair[abi:nn200100](a3, &v148);
  *(v132 + 192) = 1;
  if (v160 == 1 && *&v158[24])
  {
    v159 = *&v158[24];
    operator delete(*&v158[24]);
  }

  if (*v158)
  {
    *&v158[8] = *v158;
    operator delete(*v158);
  }

  if (v156[1])
  {
    *&v157 = v156[1];
    operator delete(v156[1]);
  }

  if (v155[0])
  {
    v155[1] = v155[0];
    operator delete(v155[0]);
  }

  if (v153[0])
  {
    v153[1] = v153[0];
    operator delete(v153[0]);
  }

  if (v151[0])
  {
    v151[1] = v151[0];
    operator delete(v151[0]);
  }

  if (v149[1])
  {
    *&v150 = v149[1];
    operator delete(v149[1]);
  }

  if (v161.__begin_)
  {
    v161.__end_ = v161.__begin_;
    operator delete(v161.__begin_);
  }

  if (v162.__begin_)
  {
    v162.__end_ = v162.__begin_;
    operator delete(v162.__begin_);
  }

  if (v163.__begin_)
  {
    v163.__end_ = v163.__begin_;
    operator delete(v163.__begin_);
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEED1Ev(&v181);
  if (v164.__begin_)
  {
    v164.__end_ = v164.__begin_;
    operator delete(v164.__begin_);
  }

LABEL_181:
  v133 = *MEMORY[0x277D85DE8];
}

uint64_t geom::triangle_mesh_half_edge_connectivity::make_interior_half_edge(geom::triangle_mesh_half_edge_connectivity *this, uint64_t a2)
{
  if (a2 >> 30 == 3)
  {
    return *(*(this + 11) + 4 * (a2 & 0x3FFFFFFF));
  }

  return a2;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2)
{
  if (((a2 >> 30 != 3) & geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(this, a2)) != 0)
  {
    return a2 & 0x3FFFFFFF;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin_with_exterior(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2)
{
  if (!geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(this, a2))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a2 & 0x3FFFFFFF;
  if (a2 >> 30 != 3)
  {
    v4 = 3 * (a2 & 0x3FFFFFFF) + (a2 >> 30);
  }

  v5 = 64;
  if (a2 >> 30 == 3)
  {
    v5 = 88;
  }

  return *(*(this + v5) + 4 * v4);
}

uint64_t geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2)
{
  if (geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(this, a2) && !geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(this, a2))
  {
    return *(*(this + 8) + 4 * (3 * (a2 & 0x3FFFFFFF) + (a2 >> 30)));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t geom::triangle_mesh_half_edge_connectivity::get_face_half_edges(geom::triangle_mesh_half_edge_connectivity *this, int a2, unsigned int *a3)
{
  v4 = (3 * a2);
  v5 = *(this + 2);
  if (v4 >= (*(this + 3) - v5) >> 2 || *(v5 + 4 * v4) == -1)
  {
    *a3 = -1;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = *(this + 8);
    *a3 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin_with_exterior(this, *(v7 + 4 * v4));
    a3[1] = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin_with_exterior(this, *(v7 + 4 * (v4 + 1)));
    result = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin_with_exterior(this, *(v7 + 4 * (v4 + 2)));
  }

  a3[2] = result;
  return result;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(geom::triangle_mesh_half_edge_connectivity *this, int a2, unsigned int a3)
{
  v3 = (3 * a2);
  v4 = *(this + 2);
  if (v3 >= (*(this + 3) - v4) >> 2 || a3 > 3 || *(v4 + 4 * v3) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin_with_exterior(this, *(*(this + 8) + 4 * (v3 + a3)));
  }
}

uint64_t geom::triangle_mesh_half_edge_connectivity::find_half_edge(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 5) + 4 * a2);
  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 >> 30 == 3)
  {
    v4 = *(*(this + 11) + 4 * (v3 & 0x3FFFFFFF));
    if (v4 >> 30 != 3)
    {
      while (1)
      {
        v5 = 3 * (v4 & 0x3FFFFFFF);
        v6 = v4 >> 30;
        v7 = v4 >> 30 == 2 ? 0 : v6 + 1;
        if (*(*(this + 2) + 4 * (v7 + v5)) == a3)
        {
          break;
        }

        v8 = v6 - 1;
        if (!v6)
        {
          v8 = 2;
        }

        v4 = *(*(this + 8) + 4 * (v8 + v5));
        if (v4 >> 30 == 3)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return v4;
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(*(this + 5) + 4 * a2);
  while (1)
  {
    v9 = 3 * (v4 & 0x3FFFFFFF);
    v10 = v4 >> 30;
    v11 = v4 >> 30 == 2 ? 0 : v10 + 1;
    if (*(*(this + 2) + 4 * (v11 + v9)) == a3)
    {
      break;
    }

    v12 = v10 - 1;
    if (!v10)
    {
      v12 = 2;
    }

    v4 = *(*(this + 8) + 4 * (v12 + v9));
    if (v4 == v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::find_edge(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2, int a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = *(*(this + 5) + 4 * a2);
  if (v3 == -1)
  {
    goto LABEL_23;
  }

  if (v3 >> 30 == 3)
  {
    v5 = v3 & 0x3FFFFFFF;
    v6 = *(this + 11);
    for (i = *(v6 + 4 * v5); i >> 30 != 3; i = *(*(this + 8) + 4 * (v11 + v8)))
    {
      v8 = 3 * (i & 0x3FFFFFFF);
      v9 = i >> 30;
      v10 = i >> 30 == 2 ? 0 : v9 + 1;
      if (*(*(this + 2) + 4 * (v10 + v8)) == a3)
      {
        goto LABEL_24;
      }

      if (v9)
      {
        v11 = v9 - 1;
      }

      else
      {
        v11 = 2;
      }
    }

    v18[0] = -1;
    i = *(v6 + 4 * (i & 0x3FFFFFFF));
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(this, i, v18);
    if (LODWORD(v18[0]) == a3)
    {
      goto LABEL_24;
    }

LABEL_23:
    i = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  i = *(*(this + 5) + 4 * a2);
  while (1)
  {
    v12 = 3 * (i & 0x3FFFFFFF);
    v13 = i >> 30;
    v14 = i >> 30 == 2 ? 0 : v13 + 1;
    if (*(*(this + 2) + 4 * (v14 + v12)) == a3)
    {
      break;
    }

    if (v13)
    {
      v15 = v13 - 1;
    }

    else
    {
      v15 = 2;
    }

    i = *(*(this + 8) + 4 * (v15 + v12));
    if (i == v3)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v16 = *MEMORY[0x277D85DE8];
  return i;
}

void geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(void *a1, unsigned int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  v5 = a1[5];
  if (a2 < ((a1[6] - v5) >> 2))
  {
    v13 = v3;
    v14 = v4;
    v6 = *(v5 + 4 * a2);
    if (v6 != -1)
    {
      v9 = *(v5 + 4 * a2);
      if (v6 >> 30 == 3)
      {
        v9 = *(a1[11] + 4 * (v6 & 0x3FFFFFFF));
        v6 = -1;
      }

      do
      {
        v12 = v9 & 0x3FFFFFFF;
        std::vector<unsigned int>::push_back[abi:nn200100](a3, &v12);
        if (v9 >> 30)
        {
          v10 = (v9 >> 30) - 1;
        }

        else
        {
          v10 = 2;
        }

        v9 = *(a1[8] + 4 * (v10 + 3 * (v9 & 0x3FFFFFFF)));
        v11 = v9 != v6;
        if (v6 == -1)
        {
          v11 = v9 >> 30 != 3;
        }
      }

      while (v11);
    }
  }
}

uint64_t geom::triangle_mesh_half_edge_connectivity::get_vertex_opposite_half_edge(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2)
{
  is_valid_half_edge = geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(this, a2);
  result = 0xFFFFFFFFLL;
  v6 = a2 >> 30;
  if (a2 >> 30 != 3 && is_valid_half_edge)
  {
    if (v6)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 2;
    }

    return *(*(this + 2) + 4 * (v7 + 3 * (a2 & 0x3FFFFFFF)));
  }

  return result;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::count_incident_edges_to_vertex(uint64_t this, unsigned int a2)
{
  v2 = *(this + 40);
  if (a2 >= ((*(this + 48) - v2) >> 2))
  {
    return 0;
  }

  v3 = *(v2 + 4 * a2);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = this;
  if (v3 >> 30 == 3)
  {
    v5 = *(*(this + 88) + 4 * (v3 & 0x3FFFFFFF));
    v6 = *(this + 64);
    LODWORD(this) = 1;
    do
    {
      this = (this + 1);
      v7 = v5 & 0x3FFFFFFF;
      v8 = v5 >> 30;
      if (v8)
      {
        v9 = v8 - 1;
      }

      else
      {
        v9 = 2;
      }

      v5 = *(v6 + 4 * (v9 + 3 * v7));
    }

    while (v5 >> 30 != 3);
  }

  else
  {
    LODWORD(this) = 0;
    v10 = *(v4 + 64);
    v11 = *(v2 + 4 * a2);
    do
    {
      this = (this + 1);
      v12 = v11 & 0x3FFFFFFF;
      v13 = v11 >> 30;
      if (v13)
      {
        v14 = v13 - 1;
      }

      else
      {
        v14 = 2;
      }

      v11 = *(v10 + 4 * (v14 + 3 * v12));
    }

    while (v11 != v3);
  }

  return this;
}

void geom::triangle_mesh_half_edge_connectivity::get_incident_outgoing_half_edges_to_vertex(void *a1, unsigned int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  v5 = a1[5];
  if (a2 < ((a1[6] - v5) >> 2))
  {
    v13 = v3;
    v14 = v4;
    v6 = *(v5 + 4 * a2);
    if (v6 != -1)
    {
      v9 = *(v5 + 4 * a2);
      if (v6 >> 30 == 3)
      {
        v9 = *(a1[11] + 4 * (v6 & 0x3FFFFFFF));
        v6 = -1;
      }

      do
      {
        v12 = v9;
        std::vector<unsigned int>::push_back[abi:nn200100](a3, &v12);
        if (v9 >> 30)
        {
          v10 = (v9 >> 30) - 1;
        }

        else
        {
          v10 = 2;
        }

        v9 = *(a1[8] + 4 * (v10 + 3 * (v9 & 0x3FFFFFFF)));
        v11 = v9 != v6;
        if (v6 == -1)
        {
          v11 = v9 >> 30 != 3;
        }
      }

      while (v11);
    }
  }
}

void geom::triangle_mesh_half_edge_connectivity::get_incident_incoming_half_edges_to_vertex(void *a1, unsigned int a2, uint64_t a3)
{
  *(a3 + 8) = *a3;
  v5 = a1[5];
  if (a2 < ((a1[6] - v5) >> 2))
  {
    v15 = v3;
    v16 = v4;
    v6 = *(v5 + 4 * a2);
    if (v6 != -1)
    {
      v9 = *(v5 + 4 * a2);
      if (v6 >> 30 == 3)
      {
        v9 = *(a1[11] + 4 * (v6 & 0x3FFFFFFF));
        v6 = -1;
      }

      do
      {
        v10 = v9 & 0x3FFFFFFF;
        v11 = (v9 & 0xC0000000) - 0x40000000;
        if (!(v9 >> 30))
        {
          v11 = 0x80000000;
        }

        v14 = v11 & 0xC0000000 | v9 & 0x3FFFFFFF;
        if (v9 >> 30)
        {
          v12 = (v9 >> 30) - 1;
        }

        else
        {
          v12 = 2;
        }

        std::vector<unsigned int>::push_back[abi:nn200100](a3, &v14);
        v9 = *(a1[8] + 4 * (v12 + 3 * v10));
        v13 = v9 != v6;
        if (v6 == -1)
        {
          v13 = v9 >> 30 != 3;
        }
      }

      while (v13);
    }
  }
}

void geom::triangle_mesh_half_edge_connectivity::get_adjacent_vertices_to_vertex(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  *(a3 + 8) = *a3;
  v3 = *(this + 5);
  if (a2 < ((*(this + 6) - v3) >> 2))
  {
    v4 = *(v3 + 4 * a2);
    if (v4 != -1)
    {
      v7 = *(v3 + 4 * a2);
      if (v4 >> 30 == 3)
      {
        v7 = *(*(this + 11) + 4 * (v4 & 0x3FFFFFFF));
        v4 = -1;
      }

      v8 = (a2 << 32) | 1;
      do
      {
        v13[0] = -1;
        geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(this, v7, v13);
        LODWORD(v13[0]) = *(v13 | (4 * (LODWORD(v13[0]) == HIDWORD(v8))));
        std::vector<unsigned int>::push_back[abi:nn200100](a3, v13);
        v9 = v7 >> 30;
        if (v7 >> 30 == 3)
        {
          v10 = 0;
        }

        else
        {
          if (v9)
          {
            v11 = v9 - 1;
          }

          else
          {
            v11 = 2;
          }

          v7 = *(*(this + 8) + 4 * (v11 + 3 * (v7 & 0x3FFFFFFF)));
          if (v4 == -1)
          {
            continue;
          }

          v10 = v7 != v4;
        }

        v8 = v10 | v8 & 0xFFFFFFFFFFFFFF00;
      }

      while ((v8 & 1) != 0);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

BOOL geom::triangle_mesh_half_edge_connectivity::is_boundary_face(geom::triangle_mesh_half_edge_connectivity *this, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = (3 * a2);
  v3 = *(this + 2);
  if (v2 >= (*(this + 3) - v3) >> 2 || *(v3 + 4 * v2) == -1)
  {
    result = 0;
  }

  else
  {
    *v7 = -1;
    v8 = -1;
    geom::triangle_mesh_half_edge_connectivity::get_face_half_edges(this, a2, v7);
    result = geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(this, v7[0]) || geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(this, v7[1]) || geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(this, v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::is_edge_collapse_manifold(geom::triangle_mesh_half_edge_connectivity *a1, unsigned int a2, std::vector<unsigned int> *a3, std::vector<unsigned int> *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(a1, a2))
  {
    goto LABEL_47;
  }

  *v46 = -1;
  geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(a1, a2, v46);
  v8 = v46[0];
  v9 = *(a1 + 5);
  v10 = (*(a1 + 6) - v9) >> 2;
  v11 = v10 <= v46[0] || (*(v9 + 4 * v46[0]) + 1) < 0xC0000001;
  v12 = v46[1];
  if (v10 <= v46[1] || ((*(v9 + 4 * v46[1]) + 1) < 0xC0000001 ? (v13 = 1) : (v13 = v11), (v13 & 1) != 0 || geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(a1, a2)))
  {
    std::vector<float>::reserve(a3, 6uLL);
    std::vector<float>::reserve(a4, 6uLL);
    geom::triangle_mesh_half_edge_connectivity::get_adjacent_vertices_to_vertex(a1, v8, a3);
    geom::triangle_mesh_half_edge_connectivity::get_adjacent_vertices_to_vertex(a1, v12, a4);
    begin = a3->__begin_;
    end = a3->__end_;
    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v16 = a4->__begin_;
    v17 = a4->__end_;
    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v18 = a3->__begin_;
    v20 = a4->__begin_;
    v19 = a4->__end_;
    v21 = a3->__end_ - a3->__begin_;
    v22 = v21 >> 2;
    v23 = v19 - a4->__begin_;
    v24 = v23 + (v21 >> 2);
    if (v21 && v19 != v20)
    {
      v45 = v8;
      v25 = 0;
      v26 = 0;
      do
      {
        while (1)
        {
          v27 = v20[v26];
          if (v27 >= v18[v25])
          {
            break;
          }

          if (++v26 >= v23)
          {
            goto LABEL_48;
          }
        }

        if (v25 < v22)
        {
          while (1)
          {
            v28 = v18[v25];
            if (v28 >= v27)
            {
              break;
            }

            if (v22 == ++v25)
            {
              goto LABEL_48;
            }
          }

          if (v28 == v27)
          {
            edge = geom::triangle_mesh_half_edge_connectivity::find_edge(a1, v45, v20[v26]);
            v42 = geom::triangle_mesh_half_edge_connectivity::find_edge(a1, v12, v27);
            v29 = edge;
            if (geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(a1, edge))
            {
              if (edge >> 30 == 3)
              {
                v29 = *(*(a1 + 11) + 4 * (edge & 0x3FFFFFFF));
              }

              v44 = v29 & 0x3FFFFFFF;
              v30 = *(*(a1 + 8) + 4 * (3 * (v29 & 0x3FFFFFFF) + (v29 >> 30)));
              v31 = v30 >> 30 == 3;
              v32 = v30 >> 30 != 3;
              v33 = v30 & 0x3FFFFFFF;
              if (v31)
              {
                v33 = -1;
              }

              v40 = v33;
              v41 = v32;
            }

            else
            {
              v40 = -1;
              v41 = 0;
              v44 = -1;
            }

            v34 = v42;
            if (geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(a1, v42))
            {
              if (v42 >> 30 == 3)
              {
                v34 = *(*(a1 + 11) + 4 * (v42 & 0x3FFFFFFF));
              }

              v35 = v34 & 0x3FFFFFFF;
              v36 = *(*(a1 + 8) + 4 * (3 * (v34 & 0x3FFFFFFF) + (v34 >> 30)));
              if (v36 >> 30 == 3)
              {
                v37 = -1;
              }

              else
              {
                v37 = v36 & 0x3FFFFFFF;
              }
            }

            else
            {
              v37 = -1;
              v35 = -1;
            }

            if (v44 == v37 || v44 == v35)
            {
              ++v25;
              ++v26;
              v24 = (v24 - 1);
            }

            else
            {
              if (!v41)
              {
                goto LABEL_47;
              }

              ++v25;
              ++v26;
              v24 = (v24 - 1);
              if (v40 != v37 && v40 != v35)
              {
                goto LABEL_47;
              }
            }
          }
        }
      }

      while (v25 < v22 && v26 < v23);
    }
  }

  else
  {
LABEL_47:
    v24 = 0;
  }

LABEL_48:
  v38 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::is_edge_collapse_safe_and_genus_preserving(geom::triangle_mesh_half_edge_connectivity *a1, unsigned int a2, std::vector<unsigned int> *a3, std::vector<unsigned int> *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  result = geom::triangle_mesh_half_edge_connectivity::is_edge_collapse_manifold(a1, a2, a3, a4);
  if (result)
  {
    v7 = result;
    v16[0] = -1;
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(a1, a2, v16);
    v8 = *(a1 + 5);
    v9 = (*(a1 + 6) - v8) >> 2;
    v10 = v9 > LODWORD(v16[0]) && (*(v8 + 4 * LODWORD(v16[0])) + 0x40000000) < 0x3FFFFFFF;
    v11 = v9 > HIDWORD(v16[0]) && (*(v8 + 4 * HIDWORD(v16[0])) + 0x40000000) < 0x3FFFFFFF;
    v12 = v10 || v11;
    v13 = v12 || v7 < 5;
    v14 = v7 > 3 && v12;
    if (v13)
    {
      result = v14;
    }

    else
    {
      result = 1;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::collapse_edge(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2)
{
  v2 = a2;
  if (!geom::triangle_mesh_half_edge_connectivity::is_edge_collapse_manifold(this, a2, (this + 112), (this + 136)))
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 >> 30 == 3)
  {
    v2 = *(*(this + 11) + 4 * (v2 & 0x3FFFFFFF));
  }

  v4 = 3 * (v2 & 0x3FFFFFFF);
  v5 = v2 >> 30;
  if (v2 >> 30 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 + 1;
  }

  if (v5)
  {
    v7 = v5 - 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = v4 + (v2 >> 30);
  v10 = this + 64;
  v9 = *(this + 8);
  v11 = *(this + 2);
  v12 = *(v11 + 4 * v8);
  v13 = v6 + v4;
  v14 = *(v11 + 4 * v13);
  v15 = v7 + v4;
  v16 = *(v11 + 4 * v15);
  v17 = *(v9 + 4 * v15);
  v18 = *(v9 + 4 * v13);
  v19 = *(v9 + 4 * v8);
  v20 = v19 >> 30;
  if (v19 >> 30 == 3)
  {
    v21 = 0;
    v71 = -1073741824;
    v22 = -1;
    LODWORD(v23) = -3;
    if (v17 >> 30 == 3)
    {
      v24 = -1;
      v25 = -1;
      v75 = -1;
      v73 = 0;
      if (v18 >> 30 == 3)
      {
        v26 = *(v9 + 4 * v4) & 0x3FFFFFFF;
        v27 = *(this + 11);
        if (*(v27 + 4 * v26) != -1)
        {
          ++*(this + 2);
        }

        *(v27 + 4 * v26) = -1;
        v28 = *(v9 + 4 * (v4 + 1)) & 0x3FFFFFFF;
        if (*(v27 + 4 * v28) != -1)
        {
          ++*(this + 2);
        }

        *(v27 + 4 * v28) = -1;
        v29 = (v27 + 4 * (*(v9 + 4 * (v4 + 2)) & 0x3FFFFFFF));
        if (*v29 != -1)
        {
          ++*(this + 2);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v24 = -1;
      v25 = -1;
      v75 = -1;
      v73 = 0;
    }
  }

  else
  {
    v22 = v19 & 0x3FFFFFFF;
    v23 = 3 * (v19 & 0x3FFFFFFF);
    if (v17 >> 30 != 3 && v18 >> 30 != 3 && (v17 & 0x3FFFFFFF) == v22 && (v18 & 0x3FFFFFFF) == v22)
    {
      v30 = (v11 + 4 * v23);
      if (*v30 == -1)
      {
LABEL_26:
        v31 = (v11 + 4 * v4);
        if (*v31 != -1)
        {
          --*(this + 1);
          v32 = v4 + 2;
          *(v11 + 4 * v32) = -1;
          *v31 = -1;
          *(v9 + 4 * v4) = -1;
          *(v9 + 4 * v32) = -1;
        }

        v33 = *(this + 5);
        *(v33 + 4 * v12) = -1;
        *(v33 + 4 * v14) = -1;
        *(v33 + 4 * v16) = -1;
        *this -= 3;
        return 0xFFFFFFFFLL;
      }

      --*(this + 1);
      *(v11 + 4 * (v23 + 2)) = -1;
      *v30 = -1;
      *(v9 + 4 * v23) = -1;
      v29 = (v9 + 4 * (v23 + 2));
LABEL_25:
      *v29 = -1;
      goto LABEL_26;
    }

    if (v20 == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = v20 + 2;
    }

    if (v20 == 2)
    {
      v25 = 1;
    }

    else
    {
      v25 = v35;
    }

    if (v20 == 2)
    {
      v36 = 0;
    }

    else
    {
      v36 = v20 + 1;
    }

    v24 = *(v9 + 4 * (v23 + v36));
    v21 = v24 >> 30 != 3;
    v75 = *(v9 + 4 * (v23 + v25));
    v73 = v75 >> 30 != 3;
    v71 = v36 << 30;
  }

  v74 = v21;
  v76 = v23;
  v70 = v25;
  v78 = v24;
  v79 = v22;
  v72 = v2 & 0x3FFFFFFF;
  v77 = v19 >> 30;
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(this, v14, this + 112);
  if (v17 >> 30 == 3)
  {
    v37 = this + 88;
    v38 = v17 & 0x3FFFFFFF;
  }

  else
  {
    v38 = 3 * (v17 & 0x3FFFFFFF) + (v17 >> 30);
    v37 = this + 64;
  }

  *(*v37 + 4 * v38) = v18;
  if (v18 >> 30 == 3)
  {
    v39 = this + 88;
    v40 = v18 & 0x3FFFFFFF;
  }

  else
  {
    v40 = 3 * (v18 & 0x3FFFFFFF) + (v18 >> 30);
    v39 = this + 64;
  }

  *(*v39 + 4 * v40) = v17;
  if (v77 <= 2)
  {
    if (v74)
    {
      v44 = 3 * (v78 & 0x3FFFFFFF) + (v78 >> 30);
      v45 = this + 64;
    }

    else
    {
      v45 = this + 88;
      v44 = v78 & 0x3FFFFFFF;
    }

    *(*v45 + 4 * v44) = v75;
    if (v73)
    {
      v46 = 3 * (v75 & 0x3FFFFFFF) + (v75 >> 30);
    }

    else
    {
      v10 = this + 88;
      v46 = v75 & 0x3FFFFFFF;
    }

    *(*v10 + 4 * v46) = v78;
    v41 = *(this + 5);
    v42 = (v41 + 4 * v12);
    v43 = *v42;
    if (*v42 == v2)
    {
      goto LABEL_60;
    }

    v2 = *v42;
    if (v43 == (v71 | v79 & 0x3FFFFFFF))
    {
      goto LABEL_60;
    }
  }

  else
  {
    v41 = *(this + 5);
    v42 = (v41 + 4 * v12);
    v43 = *v42;
    if (*v42 == v2)
    {
      goto LABEL_60;
    }
  }

  v2 = v43;
  if (*(v41 + 4 * v14) >> 30 == 3)
  {
LABEL_60:
    if (v2 >> 30 == 3)
    {
      v47 = *(this + 11);
      if (*(v47 + 4 * (v2 & 0x3FFFFFFF)) != -1)
      {
        ++*(this + 2);
      }

      *(v47 + 4 * (v2 & 0x3FFFFFFF)) = -1;
    }

    v48 = *(v41 + 4 * v14);
    if (v48 >> 30 == 3)
    {
      *v42 = v48;
      *(v41 + 4 * v14) = -1;
    }

    else if (v17 >> 30 == 3)
    {
      if ((v18 & 0xC0000000) == 0x80000000)
      {
        v49 = 0;
      }

      else
      {
        v49 = (v18 & 0xC0000000) + 0x40000000;
      }

      *v42 = v49 & 0xC0000000 | v18 & 0x3FFFFFFF;
    }

    else
    {
      *v42 = v17;
    }
  }

  v50 = *(v41 + 4 * v14);
  if ((v50 + 0x40000000) <= 0x3FFFFFFE)
  {
    v51 = v50 & 0x3FFFFFFF;
    v52 = *(this + 11);
    if (*(v52 + 4 * v51) != -1)
    {
      ++*(this + 2);
    }

    *(v52 + 4 * v51) = -1;
  }

  *(v41 + 4 * v14) = -1;
  --*this;
  v53 = *(v41 + 4 * v16);
  if (v53 >> 30 != 3 && (v53 & 0x3FFFFFFF) == v72)
  {
    *(v41 + 4 * v16) = v18;
  }

  v54 = *(this + 2);
  if (v77 <= 2)
  {
    v55 = *(v54 + 4 * (v70 + v76));
    v56 = *(v41 + 4 * v55);
    if (v56 >> 30 != 3 && (v56 & 0x3FFFFFFF) == v79)
    {
      *(v41 + 4 * v55) = v78;
    }
  }

  v57 = *(this + 14);
  v58 = *(this + 15);
  if (v57 != v58)
  {
    v59 = vdup_n_s32(v14);
    v60 = vdup_n_s32(v12);
    do
    {
      v61 = *v57++;
      v62 = (v54 + 4 * (3 * v61));
      *v62 = vbsl_s8(vceq_s32(*v62, v59), v60, *v62);
      v63 = v62[1].i32[0];
      if (v63 == v14)
      {
        v63 = v12;
      }

      v62[1].i32[0] = v63;
    }

    while (v57 != v58);
  }

  v64 = (v54 + 4 * v4);
  if (*v64 != -1)
  {
    --*(this + 1);
    *v64 = -1;
    v65 = v4 + 2;
    *(v54 + 4 * v65) = -1;
    v66 = *(this + 8);
    *(v66 + 4 * v4) = -1;
    *(v66 + 4 * v65) = -1;
  }

  if (v77 <= 2 && *(v54 + 4 * v76) != -1)
  {
    --*(this + 1);
    *(v54 + 4 * v76) = -1;
    v67 = v76 + 1;
    *(v54 + 4 * v67) = -1;
    v68 = v76 + 2;
    *(v54 + 4 * v68) = -1;
    v69 = *(this + 8);
    *(v69 + 4 * v76) = -1;
    *(v69 + 4 * v67) = -1;
    *(v69 + 4 * v68) = -1;
  }

  return v12;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::debug_print(geom::triangle_mesh_half_edge_connectivity *this)
{
  puts("triangle_mesh_half_edge_connectivity_state ");
  puts("  face_vertices: ");
  v2 = *(this + 3) - *(this + 2);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 >> 2;
    do
    {
      printf("%zu : %d %d %d \n", v4, *(*(this + 2) + 4 * v3), *(*(this + 2) + 4 * v3 + 4), *(*(this + 2) + 4 * v3 + 8));
      v3 += 3;
      ++v4;
    }

    while (v3 < v5);
  }

  printf(" === v2e (%d %d) === \n", *this, (*(this + 6) - *(this + 5)) >> 2);
  v6 = *(this + 6) - *(this + 5);
  if ((v6 & 0x3FFFFFFFCLL) != 0)
  {
    v7 = 0;
    v8 = (v6 >> 2);
    do
    {
      printf("    %d ", v7);
      v9 = *(*(this + 5) + 4 * v7);
      if (v9 == -1)
      {
        printf("invalid ");
      }

      else
      {
        v10 = v9 & 0x3FFFFFFF;
        if (v9 >> 30 == 3)
        {
          v11 = *(*(this + 11) + 4 * v10);
          v12 = 3 * (v11 & 0x3FFFFFFF) + (v11 >> 30);
          v13 = *(this + 2);
          v38 = *(v13 + 4 * v12);
          v43 = *(v13 + 4 * (v12 + ((v11 >> 31) ^ 1)));
          printf("border %d -> face-vertex (%d, %d) or edge (%d %d)");
        }

        else
        {
          v14 = 3 * v10 + (v9 >> 30);
          v15 = *(this + 2);
          v35 = *(v15 + 4 * v14);
          v39 = *(v15 + 4 * (v14 + ((v9 >> 31) ^ 1)));
          printf("interior -> face-vertex (%d, %d) or edge (%d, %d)");
        }
      }

      putchar(10);
      ++v7;
    }

    while (v8 != v7);
  }

  printf(" === e2e (%d, %d) === \n", (3 * *(this + 1) - *(this + 2) + ((*(this + 12) - *(this + 11)) >> 2)) >> 1, (*(this + 9) - *(this + 8)) >> 2);
  v16 = ((*(this + 9) - *(this + 8)) >> 2) / 3uLL;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      printf("    %d ", v17);
      if (*(*(this + 8) + 4 * v18) == -1)
      {
        puts(" invalid");
      }

      else
      {
        printf("      (%d %d %d)\n", *(*(this + 2) + 4 * v18), *(*(this + 2) + 4 * (v18 + 1)), *(*(this + 2) + 4 * (v18 + 2)));
        v19 = 3;
        v20 = v18;
        do
        {
          v21 = *(*(this + 8) + 4 * v20);
          v22 = v21 & 0x3FFFFFFF;
          if (v21 >> 30 == 3)
          {
            v23 = *(*(this + 11) + 4 * v22);
            if (v23 >> 30 == 3)
            {
              printf("      ERROR:  border %d -> border %d \n");
            }

            else
            {
              v26 = 3 * (v23 & 0x3FFFFFFF) + (v23 >> 30);
              v27 = *(this + 2);
              v41 = *(v27 + 4 * v26);
              v44 = *(v27 + 4 * (v26 + ((v23 >> 31) ^ 1)));
              printf("      border %d -> face-vertex (%d, %d) or edge (%d, %d) \n");
            }
          }

          else
          {
            v24 = 3 * v22 + (v21 >> 30);
            v25 = *(this + 2);
            v36 = *(v25 + 4 * v24);
            v40 = *(v25 + 4 * (v24 + ((v21 >> 31) ^ 1)));
            printf("      twin face - vertex (%d, %d) with verts (%d, %d)\n");
          }

          ++v20;
          --v19;
        }

        while (v19);
      }

      ++v17;
      v18 += 3;
    }

    while (v17 != v16);
  }

  result = puts(" === b2e === ");
  v29 = *(this + 12) - *(this + 11);
  if ((v29 & 0x3FFFFFFFCLL) != 0)
  {
    v30 = 0;
    v31 = (v29 >> 2);
    do
    {
      printf("    %d ", v30);
      v32 = *(*(this + 11) + 4 * v30);
      if (v32 == -1)
      {
        printf("invalid");
      }

      else
      {
        v33 = 3 * (v32 & 0x3FFFFFFF) + (v32 >> 30);
        v34 = *(this + 2);
        v37 = *(v34 + 4 * v33);
        v42 = *(v34 + 4 * (v33 + ((v32 >> 31) ^ 1)));
        printf(" -> face-vertex (%d, %d) or edge (%d %d)");
      }

      result = putchar(10);
      ++v30;
    }

    while (v31 != v30);
  }

  return result;
}

BOOL geom::triangle_mesh_half_edge_connectivity::is_internally_consistent(geom::triangle_mesh_half_edge_connectivity *this)
{
  v1 = *(this + 8);
  v2 = *(this + 9);
  v3 = (v2 - v1) >> 2;
  v4 = v3 / 3;
  if (v3 != 3 * (v3 / 3))
  {
    return 0;
  }

  v5 = *(this + 2);
  if (v2 - v1 != *(this + 3) - v5)
  {
    return 0;
  }

  v7 = *(this + 5);
  v6 = *(this + 6);
  v8 = *(this + 11);
  v9 = *(this + 12);
  if (v2 == v1)
  {
    v10 = *(this + 1);
    if (!v10)
    {
      goto LABEL_20;
    }

    return 0;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    if (*(v5 + 4 * v11) != -1)
    {
      ++v10;
    }

    v11 += 3;
  }

  while (v11 < v3);
  if (v10 != *(this + 1))
  {
    return 0;
  }

  if (v2 != v1)
  {
    v12 = 0;
    if (v3 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (v2 - v1) >> 2;
    }

    v14 = *(this + 8);
    do
    {
      v16 = *v14++;
      v15 = v16;
      if (v16 >> 30 == 3)
      {
        v17 = v15 != -1;
      }

      else
      {
        v17 = v15 > *(v1 + 4 * (3 * (v15 & 0x3FFFFFFF) + (v15 >> 30)));
      }

      v12 += v17;
      --v13;
    }

    while (v13);
    goto LABEL_21;
  }

LABEL_20:
  v12 = 0;
LABEL_21:
  v18 = 3 * v10;
  v19 = *(this + 2);
  if (v12 != (v18 - v19 + ((v9 - v8) >> 2)) >> 1)
  {
    return 0;
  }

  v20 = (v9 - v8) >> 2;
  if (v6 != v7)
  {
    v21 = 0;
    v22 = 0;
    v23 = (v6 - v7) >> 2;
    if (v23 <= 1)
    {
      v23 = 1;
    }

    while (1)
    {
      v24 = *(v7 + 4 * v22);
      if (v24 != -1)
      {
        ++v21;
        v25 = v24 & 0x3FFFFFFF;
        if (v24 >> 30 == 3)
        {
          if (v20 <= v25)
          {
            return 0;
          }

          v24 = *(v8 + 4 * v25);
          if (v24 >> 30 == 3)
          {
            return 0;
          }

          v25 = v24 & 0x3FFFFFFF;
        }

        if (v4 <= v25 || v22 != *(v5 + 4 * (3 * v25 + (v24 >> 30))))
        {
          return 0;
        }
      }

      if (v23 == ++v22)
      {
        goto LABEL_35;
      }
    }
  }

  v21 = 0;
LABEL_35:
  if (v21 != *this)
  {
    return 0;
  }

  if (v2 != v1)
  {
    v26 = 0;
    if (v3 <= 1)
    {
      v3 = 1;
    }

    do
    {
      v27 = *(v1 + 4 * v26);
      v28 = *(v5 + 4 * v26);
      if (v27 == -1 || v28 == -1)
      {
        if ((v27 == -1) != (v28 == -1))
        {
          return 0;
        }
      }

      else
      {
        v30 = v27 & 0x3FFFFFFF;
        if (v27 >> 30 == 3)
        {
          if (v20 <= v30)
          {
            return 0;
          }

          v31 = *(v8 + 4 * v30);
          if (v31 >> 30 == 3 || v4 <= (v31 & 0x3FFFFFFF))
          {
            return 0;
          }

          v32 = 3 * (v31 & 0x3FFFFFFF) + (v31 >> 30);
        }

        else
        {
          if (v4 <= v30)
          {
            return 0;
          }

          v33 = *(v1 + 4 * (3 * v30 + (v27 >> 30)));
          if (v33 == -1)
          {
            return 0;
          }

          v34 = v33 & 0x3FFFFFFF;
          v35 = v33 >> 30;
          v36 = v35 != 3 && v4 > v34;
          if (!v36)
          {
            return 0;
          }

          v32 = 3 * v34 + v35;
        }

        if (v26 != v32)
        {
          return 0;
        }
      }

      ++v26;
    }

    while (v3 != v26);
  }

  if (v9 != v8)
  {
    v37 = 0;
    v38 = 0;
    v39 = 1;
    while (1)
    {
      v40 = *(v8 + 4 * v37);
      if (v40 == -1)
      {
        ++v38;
      }

      else
      {
        if (v40 >> 30 == 3)
        {
          return 0;
        }

        if (v4 <= (v40 & 0x3FFFFFFF))
        {
          return 0;
        }

        v41 = 3 * (v40 & 0x3FFFFFFF) + (v40 >> 30);
        v42 = *(v5 + 4 * v41);
        if (v42 == -1)
        {
          return 0;
        }

        v43 = v39 - 1;
        v44 = *(v7 + 4 * v42);
        if (v44 >> 30 != 3 || v43 != (v44 & 0x3FFFFFFF))
        {
          return 0;
        }

        v46 = *(v1 + 4 * v41);
        if (v46 >> 30 != 3 || v43 != (v46 & 0x3FFFFFFF))
        {
          return 0;
        }
      }

      v37 = v39;
      v36 = v20 > v39++;
      if (!v36)
      {
        return v19 == v38;
      }
    }
  }

  v38 = 0;
  return v19 == v38;
}

void *geom::triangle_mesh_half_edge_connectivity::get_incident_boundary_half_edges_to_boundary_vertex(void *this, unsigned int a2, unsigned int *a3)
{
  *a3 = -1;
  v3 = this[5];
  if (a2 < ((this[6] - v3) >> 2))
  {
    v4 = *(v3 + 4 * a2);
    if ((v4 + 0x40000000) <= 0x3FFFFFFE)
    {
      v5 = *(this[11] + 4 * (v4 & 0x3FFFFFFF));
      *a3 = v5;
      a3[1] = v5;
      v6 = this[8];
      do
      {
        v7 = v5 & 0x3FFFFFFF;
        v8 = v5 >> 30;
        if (v8)
        {
          v9 = v8 - 1;
        }

        else
        {
          v9 = 2;
        }

        v5 = *(v6 + 4 * (v9 + 3 * v7));
        *a3 = v5;
      }

      while (v5 >> 30 != 3);
      *a3 = *(this[11] + 4 * (v5 & 0x3FFFFFFF));
    }
  }

  return this;
}

unint64_t geom::triangle_mesh_half_edge_connectivity::get_face_and_face_vertex_for_half_edge(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2)
{
  if (((a2 >> 30 != 3) & geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(this, a2)) != 0)
  {
    return a2 & 0x3FFFFFFF | ((a2 >> 30) << 32);
  }

  else
  {
    return 0xFFFFFFFFFFLL;
  }
}

BOOL geom::triangle_mesh_half_edge_connectivity::get_boundary_loop_for_boundary_vertex(_BOOL8 result, unsigned int a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *(a3 + 8) = *a3;
  v3 = *(result + 40);
  if (a2 < ((*(result + 48) - v3) >> 2) && (*(v3 + 4 * a2) + 0x40000000) <= 0x3FFFFFFE)
  {
    v6 = result;
    v9 = a2;
    do
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a3, &v9);
      v7 = v9;
      result = geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v6, *(*(v6 + 5) + 4 * v9), v10);
      v9 = v10[v7 == v10[0]];
    }

    while (v9 != a2);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void geom::triangle_mesh_half_edge_connectivity::get_boundary_loops(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *a2;
  *(a3 + 8) = *a3;
  v6 = ((*(a1 + 48) - *(a1 + 40)) >> 2);
  LOBYTE(__p) = 0;
  std::vector<BOOL>::vector(&v21, v6);
  v20 = 0;
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v7 - v8;
  if (((v7 - v8) & 0x3FFFFFFFCLL) != 0)
  {
    v10 = 0;
    do
    {
      if (v10 < v9 >> 2)
      {
        v11 = *(v8 + 4 * v10);
        if (v11 != -1 && ((*(v21 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0 && (v11 + 0x40000000) <= 0x3FFFFFFE)
        {
          __p = 0;
          v18 = 0;
          v19 = 0;
          geom::triangle_mesh_half_edge_connectivity::get_boundary_loop_for_boundary_vertex(a1, v10, &__p);
          v12 = __p;
          v13 = v18;
          if (__p != v18)
          {
            v14 = v21;
            v15 = __p;
            do
            {
              v16 = *v15;
              v15 += 4;
              *&v14[(v16 >> 3) & 0x1FFFFFF8] |= 1 << v16;
            }

            while (v15 != v13);
          }

          v20 += (v13 - v12) >> 2;
          std::vector<unsigned int>::push_back[abi:nn200100](a2, &v20);
          std::vector<unsigned int>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(a3, *(a3 + 8), __p, v18, (v18 - __p) >> 2);
          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }

          v8 = *(a1 + 40);
          v7 = *(a1 + 48);
        }
      }

      ++v10;
      v9 = v7 - v8;
    }

    while (v10 < ((v7 - v8) >> 2));
  }

  if (v21)
  {
    operator delete(v21);
  }
}

unint64_t geom::triangle_mesh_half_edge_connectivity::count_boundary_loops(geom::triangle_mesh_half_edge_connectivity *this)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_boundary_loops(this, &v8, &__p);
  v2 = v8;
  v1 = v9;
  if (!__p)
  {
    v3 = v8;
    if (!v8)
    {
      return (v1 - v2) >> 2;
    }

    goto LABEL_3;
  }

  v6 = __p;
  operator delete(__p);
  v3 = v8;
  if (v8)
  {
LABEL_3:
    v9 = v3;
    operator delete(v3);
  }

  return (v1 - v2) >> 2;
}

void geom::triangle_mesh_half_edge_connectivity::get_connected_component_for_face_helper(geom::triangle_mesh_half_edge_connectivity *a1, unsigned int a2, void *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  *(a4 + 8) = *a4;
  v20[0] = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v16, v20);
  *(*a3 + ((v20[0] >> 3) & 0x1FFFFFF8)) |= 1 << SLOBYTE(v20[0]);
  v7 = v16;
  for (i = v17; v16 != v17; i = v17)
  {
    v9 = *(i - 1);
    v17 = (i - 1);
    v15 = v9;
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15);
    geom::triangle_mesh_half_edge_connectivity::get_face_half_edges(a1, v15, v20);
    for (j = 0; j != 3; ++j)
    {
      v11 = v20[j];
      if (!geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(a1, v11))
      {
        half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(a1, v11);
        v13 = ((half_edge_twin >> 30 != 3) & geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(a1, half_edge_twin)) != 0 ? half_edge_twin & 0x3FFFFFFF : 0xFFFFFFFFLL;
        if (((*(*a3 + ((v13 >> 3) & 0x1FFFFFF8)) >> v13) & 1) == 0)
        {
          v19 = v13;
          std::vector<unsigned int>::push_back[abi:nn200100](&v16, &v19);
          *(*a3 + ((v19 >> 3) & 0x1FFFFFF8)) |= 1 << v19;
        }
      }
    }

    v7 = v16;
  }

  if (v7)
  {
    v17 = v7;
    operator delete(v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void geom::triangle_mesh_half_edge_connectivity::get_connected_component_for_face(geom::triangle_mesh_half_edge_connectivity *a1, unsigned int a2, uint64_t a3)
{
  std::vector<BOOL>::vector(__p, (((*(a1 + 3) - *(a1 + 2)) >> 2) / 3uLL));
  geom::triangle_mesh_half_edge_connectivity::get_connected_component_for_face_helper(a1, a2, __p, a3);
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void geom::triangle_mesh_half_edge_connectivity::get_connected_components(geom::triangle_mesh_half_edge_connectivity *a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *a2;
  *(a3 + 8) = *a3;
  std::vector<BOOL>::vector(v16, (((*(a1 + 3) - *(a1 + 2)) >> 2) / 3uLL));
  __p = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  v8 = (v6 - v7) >> 2;
  if ((v8 / 3))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v8 > v9 && *(v7 + 4 * v9) != -1 && ((*(v16[0] + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        geom::triangle_mesh_half_edge_connectivity::get_connected_component_for_face_helper(a1, v10, v16, &__p);
        v11 = (v14 - __p) >> 2;
        v12 += v11;
        std::vector<unsigned int>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(a3, *(a3 + 8), __p, v14, v11);
        std::vector<unsigned int>::push_back[abi:nn200100](a2, &v12);
        v7 = *(a1 + 2);
        v6 = *(a1 + 3);
      }

      ++v10;
      v8 = (v6 - v7) >> 2;
      v9 += 3;
    }

    while (v10 < (v8 / 3));
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  if (v16[0])
  {
    operator delete(v16[0]);
  }
}

unint64_t geom::triangle_mesh_half_edge_connectivity::count_connected_components(geom::triangle_mesh_half_edge_connectivity *this)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_connected_components(this, &v8, &__p);
  v2 = v8;
  v1 = v9;
  if (!__p)
  {
    v3 = v8;
    if (!v8)
    {
      return (v1 - v2) >> 2;
    }

    goto LABEL_3;
  }

  v6 = __p;
  operator delete(__p);
  v3 = v8;
  if (v8)
  {
LABEL_3:
    v9 = v3;
    operator delete(v3);
  }

  return (v1 - v2) >> 2;
}

BOOL geom::triangle_mesh_half_edge_connectivity::swap_edge(geom::triangle_mesh_half_edge_connectivity *this, unsigned int a2)
{
  result = geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(this, a2);
  if (result)
  {
    half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(this, a2);
    if (half_edge_twin == -1)
    {
      return 0;
    }

    v6 = a2 >> 30;
    if (half_edge_twin >> 30 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = (half_edge_twin & 0xC0000000) + 0x40000000;
    }

    v8 = (a2 & 0xC0000000) + 0x40000000;
    if (v6 == 2)
    {
      v8 = 0;
    }

    v9 = 3 * (half_edge_twin & 0x3FFFFFFF);
    v10 = 3 * (a2 & 0x3FFFFFFF);
    v11 = half_edge_twin >> 30 ? (half_edge_twin - 0x40000000) >> 30 : 2;
    v12 = v11 + v9;
    v13 = v6 ? (a2 - 0x40000000) >> 30 : 2;
    v14 = v13 + v10;
    v15 = *(this + 2);
    v16 = *(v15 + 4 * v12);
    v17 = *(v15 + 4 * v14);
    if (v16 == v17)
    {
      return 0;
    }

    else
    {
      v18 = v9 + (half_edge_twin >> 30);
      v19 = v10 + (a2 >> 30);
      v20 = v10 + (v8 >> 30);
      v21 = v8 & 0xC0000000 | a2 & 0x3FFFFFFF;
      v22 = *(v15 + 4 * v19);
      v23 = v9 + (v7 >> 30);
      v24 = v7 & 0xC0000000 | half_edge_twin & 0x3FFFFFFF;
      v25 = *(this + 8);
      v26 = *(v25 + 4 * v23);
      v27 = v26 & 0x3FFFFFFF;
      if (v26 >> 30 == 3)
      {
        v28 = (*(this + 11) + 4 * v27);
      }

      else
      {
        v28 = (v25 + 4 * (3 * v27 + (v26 >> 30)));
      }

      v29 = *(v15 + 4 * v18);
      *v28 = a2;
      v30 = *(v25 + 4 * v20);
      v31 = v30 & 0x3FFFFFFF;
      if (v30 >> 30 == 3)
      {
        v32 = (*(this + 11) + 4 * v31);
      }

      else
      {
        v32 = (v25 + 4 * (3 * v31 + (v30 >> 30)));
      }

      *v32 = half_edge_twin;
      *(v25 + 4 * v18) = *(v25 + 4 * v20);
      *(v25 + 4 * v19) = *(v25 + 4 * v23);
      *(v25 + 4 * v23) = v21;
      *(v25 + 4 * v20) = v24;
      v33 = *(this + 5);
      if (*(v33 + 4 * v22) == v24)
      {
        *(v33 + 4 * v22) = a2;
      }

      if (*(v33 + 4 * v29) == v21)
      {
        *(v33 + 4 * v29) = half_edge_twin;
      }

      *(v15 + 4 * v23) = v17;
      *(v15 + 4 * v20) = v16;
      return 1;
    }
  }

  return result;
}

uint64_t geom::triangle_mesh_half_edge_connectivity::split_face(int32x2_t *this, int a2)
{
  v2 = (3 * a2);
  v3 = this[2];
  v4 = &this[2];
  v5 = (*&this[3] - *&v3) >> 2;
  if (v5 <= v2 || *(*&v3 + 4 * v2) == -1)
  {
    return 0;
  }

  v8 = v2 + 1;
  v9 = (v2 + 2);
  v28 = *(*&v3 + 4 * v2);
  v27 = *(*&v3 + 4 * (v2 + 1));
  v10 = *(*&v3 + 4 * v9);
  v23 = &this[5];
  v25 = (*&this[6] - *&this[5]) >> 2;
  v26 = v10;
  v11 = v5 / 3;
  std::vector<unsigned int>::push_back[abi:nn200100](&this[2], &v27);
  std::vector<unsigned int>::push_back[abi:nn200100](v4, &v26);
  std::vector<unsigned int>::push_back[abi:nn200100](v4, &v25);
  std::vector<unsigned int>::push_back[abi:nn200100](v4, &v26);
  std::vector<unsigned int>::push_back[abi:nn200100](v4, &v28);
  std::vector<unsigned int>::push_back[abi:nn200100](v4, &v25);
  v13 = this + 8;
  v12 = this[8];
  *(*&this[2] + 4 * v9) = v25;
  v14 = (*&v12 + 4 * v8);
  v15 = *v14 & 0x3FFFFFFF;
  if (*v14 >> 30 == 3)
  {
    *(*&this[11] + 4 * v15) = v11 & 0x3FFFFFFF;
  }

  else
  {
    *(*&v12 + 4 * (3 * v15 + (*v14 >> 30))) = v11 & 0x3FFFFFFF;
  }

  v17 = v11 + 1;
  v18 = *(*&v12 + 4 * v9);
  v19 = v18 & 0x3FFFFFFF;
  v20 = (v11 + 1) & 0x3FFFFFFF;
  if (v18 >> 30 == 3)
  {
    *(*&this[11] + 4 * v19) = v17 & 0x3FFFFFFF;
  }

  else
  {
    *(*&v12 + 4 * (3 * v19 + (v18 >> 30))) = v17 & 0x3FFFFFFF;
  }

  std::vector<unsigned int>::push_back[abi:nn200100](&this[8], v14);
  v24 = v20 | 0x80000000;
  std::vector<unsigned int>::push_back[abi:nn200100](&this[8], &v24);
  v24 = a2 & 0x3FFFFFFF | 0x40000000;
  std::vector<unsigned int>::push_back[abi:nn200100](&this[8], &v24);
  std::vector<unsigned int>::push_back[abi:nn200100](&this[8], (*v13 + 4 * v9));
  v24 = a2 & 0x3FFFFFFF | 0x80000000;
  std::vector<unsigned int>::push_back[abi:nn200100](&this[8], &v24);
  v24 = v11 & 0x3FFFFFFF | 0x40000000;
  std::vector<unsigned int>::push_back[abi:nn200100](&this[8], &v24);
  v21 = *v13;
  *(*v13 + 4 * v8) = v11 & 0x3FFFFFFF | 0x80000000;
  *(*&v21 + 4 * v9) = v20 | 0x40000000;
  v22 = *v23;
  if (*(*v23 + v27) == (a2 & 0x3FFFFFFF | 0x40000000))
  {
    v22[v27] = v11 & 0x3FFFFFFF;
  }

  if (v22[v26] == (a2 & 0x3FFFFFFF | 0x80000000))
  {
    v22[v26] = v20;
  }

  v24 = a2 & 0x3FFFFFFF | 0x80000000;
  std::vector<unsigned int>::push_back[abi:nn200100](v23, &v24);
  *this = vadd_s32(*this, 0x200000001);
  return 1;
}

void geom::hash_brown<std::pair<unsigned int,unsigned int>,unsigned int,geom::anonymous namespace::vertex_pair_hash,std::equal_to<std::pair<unsigned int,unsigned int>>>::init(void **a1, unint64_t a2)
{
  a1[4] = 0;
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = 151 * v3;
  v5 = ((151 * v3) >> 7) + 15;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = (v5 & 0x3FFFFFFFFFFFFF0);
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    if ((((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0) <= 0x40)
    {
      v6 = 64;
    }

    else
    {
      v6 = ((v5 & 0x3FFFFFFFFFFFFF0) + 63) & 0x7FFFFFFFFFFFFC0;
    }

    *a1 = malloc_type_aligned_alloc(0x40uLL, v6, 0x1000040451B5BE8uLL);
    if (v4 >= 0x80)
    {
      v7 = 0;
      *&v8 = -1;
      *(&v8 + 1) = -1;
      do
      {
        *(*a1 + v7++) = v8;
      }

      while (v5 >> 4 != v7);
    }

    if (((12 * a1[2] + 63) & 0xFFFFFFFFFFFFFFC0) <= 0x40)
    {
      v9 = 64;
    }

    else
    {
      v9 = (12 * a1[2] + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    v10 = malloc_type_aligned_alloc(0x40uLL, v9, 0x10000403E1C8BA9uLL);
    a1[1] = v10;
    v11 = a1[2];
    if (v11)
    {
      bzero(v10, 12 * v11);
    }
  }

  else
  {
    v11 = 0;
  }

  a1[3] = 0;
  a1[4] = v11;
}

uint64_t geom::hash_brown<std::pair<unsigned int,unsigned int>,unsigned int,geom::anonymous namespace::vertex_pair_hash,std::equal_to<std::pair<unsigned int,unsigned int>>>::do_resize(__int128 *a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19[0] = a1;
  v3 = *(a1 + 2);
  if (v3 >= 0x10)
  {
    v4 = 0;
    v5 = *a1;
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_2500C4D40)))), 0x3830282018100800).u16[0];
      if (v7 != 0xFFFFLL)
      {
        break;
      }

      v4 -= 16;
      ++v5;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
    v9 = v8 - v4;
    v19[1] = v7 ^ 0xFFFFLL;
    v20 = v8 - v4;
    if (v8 + 1 != v4)
    {
      do
      {
        v10 = *(v19[0] + 8) + 12 * v9;
        v17 = *v10;
        v18 = *(v10 + 8);
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(v19);
        v9 = v20;
      }

      while (v20 != -1);
    }
  }

LABEL_10:
  if (&v21 != a1)
  {
    v11 = v22;
    v12 = *a1;
    v13 = a1[1];
    *a1 = v21;
    a1[1] = v11;
    v21 = v12;
    v22 = v13;
    v14 = *(a1 + 4);
    *(a1 + 4) = v23;
    v23 = v14;
  }

  result = _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEED1Ev(&v21);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

int64x2_t geom::hash_brown<std::pair<unsigned int,unsigned int>,unsigned int,geom::anonymous namespace::vertex_pair_hash,std::equal_to<std::pair<unsigned int,unsigned int>>>::internal_add<unsigned int>(uint64_t *a1, unsigned int *a2, int a3)
{
  if (!a1[4])
  {
  }

  v6 = a2[1];
  v7 = a1[2] >> 4;
  v8 = (v6 | (*a2 << 32)) % v7;
  v9 = *a1;
  v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v8)), xmmword_2500C4D40)))), 0x3830282018100800)));
  if (v10 >= 0x40)
  {
    do
    {
      if (v8 + 1 == v7)
      {
        v8 = 0;
      }

      else
      {
        ++v8;
      }

      v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v9 + 16 * v8)), xmmword_2500C4D40)))), 0x3830282018100800)));
    }

    while (v10 > 0x3F);
  }

  v11 = v9 + 16 * v8;
  v12 = *(v11 + v10);
  *(v11 + v10) = v6 & 0x7F;
  v13 = a1[1] + 12 * (v10 + 16 * v8);
  *v13 = *a2;
  *(v13 + 8) = a3;
  if (v12 == 255)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  v15.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v15.i64[1] = v14;
  result = vaddq_s64(*(a1 + 3), v15);
  *(a1 + 3) = result;
  return result;
}

void *geom::hash_brown<std::pair<unsigned int,unsigned int>,unsigned int,geom::anonymous namespace::vertex_pair_hash,std::equal_to<std::pair<unsigned int,unsigned int>>>::grow_to_count(void *result)
{
  v1 = result[2];
  v2 = (((151 * result[3]) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v2 != v1 || !result[4])
  {
  }

  return result;
}

uint64_t geom::anonymous namespace::find_petal_of_faces_incident_to_face_vertex_helper(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v30 = a2;
  *(a5 + 8) = *a5;
  std::vector<unsigned int>::push_back[abi:nn200100](a5, &v30);
  v13 = *(a5 + 8);
  if (*a5 != v13)
  {
    v14 = 0;
    v28 = a7;
    while (1)
    {
      v16 = *(v13 - 4);
      v15 = v16;
      *(a5 + 8) = v13 - 4;
      v17 = (*a3 + 12 * v16);
      v18 = *v17;
      if (v18 == a1)
      {
        break;
      }

      if (v17[1] == a1)
      {
        v21 = 1;
        goto LABEL_12;
      }

      if (v17[2] == a1)
      {
        v21 = 2;
LABEL_14:
        v29 = (a1 << 32) | v18;
        if (internal != -1)
        {
          v23 = *(a4[1] + 12 * internal + 8);
          if (v23 >> 30 != 3)
          {
            LODWORD(v29) = v23 & 0x3FFFFFFF;
            if (((*(*a6 + ((v23 >> 3) & 0x7FFFFF8)) >> v23) & 1) == 0)
            {
              std::vector<unsigned int>::push_back[abi:nn200100](a5, &v29);
            }
          }
        }

        v24 = v21 - 1;
        if (!v21)
        {
          v24 = 2;
        }

        v29 = a1 | (v17[v24] << 32);
        a7 = v28;
        if (v25 != -1)
        {
          v26 = *(a4[1] + 12 * v25 + 8);
          if (v26 >> 30 != 3)
          {
            LODWORD(v29) = v26 & 0x3FFFFFFF;
            if (((*(*a6 + ((v26 >> 3) & 0x7FFFFF8)) >> v26) & 1) == 0)
            {
              std::vector<unsigned int>::push_back[abi:nn200100](a5, &v29);
            }
          }
        }
      }

      v19 = *a6;
      v20 = *(*a6 + 8 * (v15 >> 6));
      if ((v20 & (1 << v15)) == 0)
      {
        *(a7 + 4 * v14) = v15;
        *(v19 + 8 * (v15 >> 6)) = v20 | (1 << v15);
        v14 = (v14 + 1);
      }

      v13 = *(a5 + 8);
      if (*a5 == v13)
      {
        return v14;
      }
    }

    v21 = 0;
LABEL_12:
    v18 = v17[v21 + 1];
    goto LABEL_14;
  }

  return 0;
}

double geom::hash_brown<std::pair<unsigned int,unsigned int>,unsigned int,geom::anonymous namespace::vertex_pair_hash,std::equal_to<std::pair<unsigned int,unsigned int>>>::erase@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == a1 && (v5 = *(a2 + 2), v5 != -1))
  {
    v12 = *a2;
    v13 = *(a2 + 2);
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(&v12);
    v7 = (*a1 + (v5 & 0xFFFFFFFFFFFFFFF0));
    v8.i64[0] = -1;
    v8.i64[1] = -1;
    v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v7, v8), xmmword_2500C4D40)))), 0x3830282018100800);
    if (v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0x80;
    }

    v7->i8[v5 & 0xF] = v10;
    v8.i64[1] = *&v9 != 0;
    v11 = vaddq_s64(*(a1 + 24), v8);
    *(a1 + 24) = v11;
    if (v11.i64[0] >= 0x11uLL && v11.i64[0] < *(a1 + 16) >> 2)
    {
    }

    result = *&v12;
    *a3 = v12;
    *(a3 + 16) = v13;
  }

  else
  {
    *a3 = a1;
    result = 0.0;
    *(a3 + 8) = xmmword_2500D14A0;
  }

  return result;
}

int *std::__introsort<std::_ClassicAlgPolicy,geom::anonymous namespace::find_and_repair_non_manifold_vertices_helper(std::vector<unsigned int> const&,unsigned int &,geom::hash_brown<std::pair<unsigned int,unsigned int>,unsigned int,geom::anonymous namespace::vertex_pair_hash,std::equal_to<std::pair<unsigned int,unsigned int>>> &,std::vector<unsigned int>&,std::vector<unsigned int>&,std::vector<unsigned int>&,std::vector<unsigned int>&,std::vector<unsigned int>&)::{lambda(std::pair<unsigned int,unsigned int> const&,std::pair<unsigned int,unsigned int> const&)#1} &,std::pair<unsigned int,unsigned int>*,false>(int *result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 4;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 3;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v95 = v9[2];
                v96 = *v9;
                v97 = *(a2 - 2);
                if (v95 >= *v9)
                {
                  if (v97 >= v95)
                  {
                    return result;
                  }

                  v9[2] = v97;
                  *(a2 - 2) = v95;
                  v8 = (v9 + 3);
                  v149 = v9[3];
                  v9[3] = *(a2 - 1);
                  *(a2 - 1) = v149;
                  v150 = v9[2];
                  v151 = *v9;
                  if (v150 >= *v9)
                  {
                    return result;
                  }

                  *v9 = v150;
                  v9[2] = v151;
                  v98 = (v9 + 1);
                }

                else
                {
                  if (v97 >= v95)
                  {
                    v98 = (v9 + 3);
                    v162 = v9[3];
                    v163 = v9[1];
                    *v9 = v95;
                    v9[1] = v162;
                    v9[2] = v96;
                    v9[3] = v163;
                    v164 = *(a2 - 2);
                    if (v164 >= v96)
                    {
                      return result;
                    }

                    v9[2] = v164;
                  }

                  else
                  {
                    v98 = (v9 + 1);
                    *v9 = v97;
                  }

                  *(a2 - 2) = v96;
                }

                v165 = *v98;
                *v98 = *v8;
                *v8 = v165;
                return result;
              case 4:
                v99 = v9[2];
                v100 = *v9;
                v101 = v9[4];
                if (v99 >= *v9)
                {
                  if (v101 < v99)
                  {
                    v152 = (v9 + 3);
                    v153 = v9[3];
                    v154 = v9[5];
                    v9[2] = v101;
                    v9[3] = v154;
                    v9[4] = v99;
                    v9[5] = v153;
                    if (v101 < v100)
                    {
                      *v9 = v101;
                      v9[2] = v100;
                      v102 = (v9 + 1);
                      goto LABEL_204;
                    }

LABEL_206:
                    v169 = *(a2 - 2);
                    if (v169 < v99)
                    {
                      v9[4] = v169;
                      *(a2 - 2) = v99;
                      v170 = v9[5];
                      v9[5] = *(a2 - 1);
                      *(a2 - 1) = v170;
                      v171 = v9[4];
                      v172 = v9[2];
                      if (v171 < v172)
                      {
                        v173 = v9[3];
                        v174 = v9[5];
                        v9[2] = v171;
                        v9[3] = v174;
                        v9[4] = v172;
                        v9[5] = v173;
                        v175 = *v9;
                        if (v171 < *v9)
                        {
                          v176 = v9[1];
                          *v9 = v171;
                          v9[1] = v174;
                          v9[2] = v175;
                          v9[3] = v176;
                        }
                      }
                    }

                    return result;
                  }
                }

                else
                {
                  if (v101 < v99)
                  {
                    v102 = (v9 + 1);
                    *v9 = v101;
                    goto LABEL_203;
                  }

                  v102 = (v9 + 3);
                  v166 = v9[3];
                  v167 = v9[1];
                  *v9 = v99;
                  v9[1] = v166;
                  v9[2] = v100;
                  v9[3] = v167;
                  if (v101 < v100)
                  {
                    v9[2] = v101;
LABEL_203:
                    v9[4] = v100;
                    v152 = (v9 + 5);
LABEL_204:
                    v168 = *v102;
                    *v102 = *v152;
                    *v152 = v168;
                    v99 = v9[4];
                    goto LABEL_206;
                  }
                }

                v99 = v101;
                goto LABEL_206;
              case 5:
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v92 = *(a2 - 2);
              v93 = *v9;
              if (v92 < *v9)
              {
                *v9 = v92;
                *(a2 - 2) = v93;
                v94 = v9[1];
                v9[1] = *(a2 - 1);
                *(a2 - 1) = v94;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v103 = (v9 + 2);
            v105 = v9 == a2 || v103 == a2;
            if (a4)
            {
              if (!v105)
              {
                v106 = 0;
                v107 = v9;
                do
                {
                  v108 = v107[2];
                  v109 = *v107;
                  v107 = v103;
                  if (v108 < v109)
                  {
                    v111 = *v103;
                    v110 = *(v103 + 1);
                    v112 = v106;
                    while (1)
                    {
                      v113 = v9 + v112;
                      v114 = *(v9 + v112 + 4);
                      *(v113 + 2) = v109;
                      *(v113 + 3) = v114;
                      if (!v112)
                      {
                        break;
                      }

                      v109 = *(v113 - 2);
                      v112 -= 8;
                      if (v109 <= v111)
                      {
                        v115 = (v9 + v112 + 8);
                        goto LABEL_137;
                      }
                    }

                    v115 = v9;
LABEL_137:
                    *v115 = v111;
                    v115[1] = v110;
                  }

                  v103 = (v107 + 2);
                  v106 += 8;
                }

                while (v107 + 2 != a2);
              }
            }

            else if (!v105)
            {
              v155 = v9 + 3;
              do
              {
                v156 = v7[2];
                v157 = *v7;
                v7 = v103;
                if (v156 < v157)
                {
                  v158 = *v103;
                  v159 = v155;
                  do
                  {
                    v160 = v159;
                    v161 = *(v159 - 2);
                    v159 -= 2;
                    *(v160 - 1) = v157;
                    *v160 = v161;
                    v157 = *(v160 - 5);
                  }

                  while (v157 > v158);
                  *(v159 - 1) = v158;
                }

                v103 = (v7 + 2);
                v155 += 2;
              }

              while (v7 + 2 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v116 = (v10 - 2) >> 1;
              v117 = v116;
              do
              {
                v118 = v117;
                if (v116 >= v117)
                {
                  v119 = (2 * v117) | 1;
                  v120 = &v9[2 * v119];
                  if (2 * v118 + 2 >= v10)
                  {
                    v121 = *v120;
                  }

                  else
                  {
                    v121 = *v120;
                    v122 = v120[2];
                    if (*v120 <= v122)
                    {
                      v121 = v120[2];
                    }

                    if (*v120 < v122)
                    {
                      v120 += 2;
                      v119 = 2 * v118 + 2;
                    }
                  }

                  v123 = &v9[2 * v118];
                  if (v121 >= *v123)
                  {
                    v124 = *v123;
                    v125 = v123[1];
                    do
                    {
                      v126 = v123;
                      v123 = v120;
                      *v126 = v121;
                      v126[1] = v120[1];
                      if (v116 < v119)
                      {
                        break;
                      }

                      v127 = (2 * v119) | 1;
                      v120 = &v9[2 * v127];
                      v119 = 2 * v119 + 2;
                      if (v119 >= v10)
                      {
                        v121 = *v120;
                        v119 = v127;
                      }

                      else
                      {
                        v121 = *v120;
                        result = (v120 + 2);
                        v128 = v120[2];
                        if (*v120 <= v128)
                        {
                          v121 = v120[2];
                        }

                        if (*v120 >= v128)
                        {
                          v119 = v127;
                        }

                        else
                        {
                          v120 += 2;
                        }
                      }
                    }

                    while (v121 >= v124);
                    *v123 = v124;
                    v123[1] = v125;
                  }
                }

                v117 = v118 - 1;
              }

              while (v118);
              do
              {
                v129 = 0;
                v130 = *v9;
                v131 = v9;
                do
                {
                  v132 = &v131[2 * v129];
                  v133 = (v132 + 2);
                  v134 = (2 * v129) | 1;
                  v129 = 2 * v129 + 2;
                  if (v129 >= v10)
                  {
                    v135 = *v133;
                    v129 = v134;
                  }

                  else
                  {
                    v137 = v132[4];
                    v136 = (v132 + 4);
                    v135 = v137;
                    v138 = *(v136 - 2);
                    v139 = v138 >= v137;
                    if (v138 > v137)
                    {
                      v135 = *(v136 - 2);
                    }

                    if (v139)
                    {
                      v129 = v134;
                    }

                    else
                    {
                      v133 = v136;
                    }
                  }

                  *v131 = v135;
                  v131[1] = *(v133 + 1);
                  v131 = v133;
                }

                while (v129 <= ((v10 - 2) >> 1));
                if (v133 == a2 - 8)
                {
                  *v133 = v130;
                }

                else
                {
                  *v133 = *(a2 - 2);
                  *(v133 + 1) = *(a2 - 1);
                  *(a2 - 1) = v130;
                  v140 = (v133 - v9 + 8) >> 3;
                  v141 = v140 < 2;
                  v142 = v140 - 2;
                  if (!v141)
                  {
                    v143 = v142 >> 1;
                    v144 = &v9[2 * v143];
                    v145 = *v144;
                    if (*v144 < *v133)
                    {
                      v146 = *v133;
                      v147 = *(v133 + 1);
                      do
                      {
                        v148 = v133;
                        v133 = v144;
                        *v148 = v145;
                        *(v148 + 1) = *(v144 + 1);
                        if (!v143)
                        {
                          break;
                        }

                        v143 = (v143 - 1) >> 1;
                        v144 = &v9[2 * v143];
                        v145 = *v144;
                      }

                      while (*v144 < v146);
                      *v133 = v146;
                      *(v133 + 1) = v147;
                    }
                  }
                }

                a2 -= 8;
                v141 = v10-- <= 2;
              }

              while (!v141);
            }

            return result;
          }

          v11 = &v9[2 * (v10 >> 1)];
          v12 = v11;
          v13 = *(a2 - 2);
          if (v10 >= 0x81)
          {
            v14 = *v11;
            v15 = *v9;
            if (*v11 >= *v9)
            {
              if (v13 >= v14 || (*v11 = v13, *(a2 - 2) = v14, v21 = (v11 + 1), v20 = v11[1], v11[1] = *(a2 - 1), *(a2 - 1) = v20, v22 = *v9, *v11 >= *v9))
              {
LABEL_29:
                v30 = v11 - 2;
                v31 = *(v11 - 2);
                v32 = v9[2];
                v33 = *(a2 - 4);
                if (v31 >= v32)
                {
                  if (v33 >= v31 || (*v30 = v33, *(a2 - 4) = v31, v36 = (v11 - 1), v35 = *(v11 - 1), *(v11 - 1) = *(a2 - 3), *(a2 - 3) = v35, v37 = v9[2], *v30 >= v37))
                  {
LABEL_42:
                    v47 = v11[2];
                    v45 = v11 + 2;
                    v46 = v47;
                    v48 = v9[4];
                    v49 = *(a2 - 6);
                    if (v47 >= v48)
                    {
                      if (v49 < v46)
                      {
                        *v45 = v49;
                        *(a2 - 6) = v46;
                        v52 = (v45 + 1);
                        v51 = v45[1];
                        v45[1] = *(a2 - 5);
                        *(a2 - 5) = v51;
                        v46 = *v45;
                        v53 = v9[4];
                        if (*v45 < v53)
                        {
                          v9[4] = v46;
                          *v45 = v53;
                          v50 = (v9 + 5);
LABEL_51:
                          v57 = *v50;
                          *v50 = *v52;
                          *v52 = v57;
                          v46 = *v45;
                        }
                      }
                    }

                    else
                    {
                      if (v49 < v46)
                      {
                        v50 = (v9 + 5);
                        v9[4] = v49;
LABEL_50:
                        *(a2 - 6) = v48;
                        v52 = a2 - 20;
                        goto LABEL_51;
                      }

                      v50 = (v45 + 1);
                      v54 = v45[1];
                      v55 = v9[5];
                      v9[4] = v46;
                      v9[5] = v54;
                      *v45 = v48;
                      v45[1] = v55;
                      v56 = *(a2 - 6);
                      if (v56 < v48)
                      {
                        *v45 = v56;
                        goto LABEL_50;
                      }

                      v46 = v48;
                    }

                    v58 = *v12;
                    v59 = *v30;
                    if (*v12 >= *v30)
                    {
                      if (v46 >= v58)
                      {
LABEL_62:
                        v67 = *v9;
                        *v9 = v58;
                        v19 = (v9 + 1);
                        *v12 = v67;
                        v25 = (v12 + 1);
                        goto LABEL_63;
                      }

                      v62 = (v12 + 1);
                      v63 = v12[1];
                      *v12 = v46;
                      v12[1] = v45[1];
                      *v45 = v58;
                      v45[1] = v63;
                      if (v46 >= v59)
                      {
                        v58 = v46;
                        goto LABEL_62;
                      }

                      *v30 = v46;
                      v60 = (v30 + 1);
                      *v12 = v59;
                    }

                    else
                    {
                      if (v46 >= v58)
                      {
                        v64 = v12[1];
                        *v12 = v59;
                        v65 = v30[1];
                        *v30 = v58;
                        v30[1] = v64;
                        v12[1] = v65;
                        if (v46 >= v59)
                        {
                          v58 = v59;
                          goto LABEL_62;
                        }

                        *v12 = v46;
                        *v45 = v59;
                        v61 = (v45 + 1);
                        v60 = (v12 + 1);
                      }

                      else
                      {
                        *v30 = v46;
                        v60 = (v30 + 1);
                        *v45 = v59;
                        v61 = (v45 + 1);
                      }

                      v62 = v61;
                    }

                    v66 = *v60;
                    *v60 = *v62;
                    *v62 = v66;
                    v58 = *v12;
                    goto LABEL_62;
                  }

                  v9[2] = *v30;
                  *v30 = v37;
                  v34 = v9 + 3;
                }

                else
                {
                  if (v33 >= v31)
                  {
                    v34 = v11 - 1;
                    v41 = *(v11 - 1);
                    v42 = v9[3];
                    v9[2] = v31;
                    v9[3] = v41;
                    *v30 = v32;
                    *(v11 - 1) = v42;
                    v43 = *(a2 - 4);
                    if (v43 >= v32)
                    {
                      goto LABEL_42;
                    }

                    *v30 = v43;
                  }

                  else
                  {
                    v34 = v9 + 3;
                    v9[2] = v33;
                  }

                  *(a2 - 4) = v32;
                  v36 = a2 - 12;
                }

                v44 = *v34;
                *v34 = *v36;
                *v36 = v44;
                goto LABEL_42;
              }

              *v9 = *v11;
              v16 = (v9 + 1);
              *v11 = v22;
            }

            else
            {
              if (v13 >= v14)
              {
                v16 = (v11 + 1);
                v26 = v11[1];
                v27 = v9[1];
                *v9 = v14;
                v9[1] = v26;
                *v11 = v15;
                v11[1] = v27;
                v28 = *(a2 - 2);
                if (v28 >= v15)
                {
                  goto LABEL_29;
                }

                *v11 = v28;
              }

              else
              {
                v16 = (v9 + 1);
                *v9 = v13;
              }

              *(a2 - 2) = v15;
              v21 = a2 - 4;
            }

            v29 = *v16;
            *v16 = *v21;
            *v21 = v29;
            goto LABEL_29;
          }

          v17 = *v9;
          v18 = *v11;
          if (*v9 >= *v11)
          {
            if (v13 < v17)
            {
              *v9 = v13;
              *(a2 - 2) = v17;
              v23 = v9[1];
              v9[1] = *(a2 - 1);
              *(a2 - 1) = v23;
              v24 = *v12;
              if (*v9 < *v12)
              {
                *v12 = *v9;
                *v9 = v24;
                v19 = (v12 + 1);
                v25 = (v9 + 1);
LABEL_63:
                v68 = *v19;
                *v19 = *v25;
                *v25 = v68;
              }
            }
          }

          else
          {
            if (v13 < v17)
            {
              v19 = (v11 + 1);
              *v12 = v13;
LABEL_37:
              *(a2 - 2) = v18;
              v25 = a2 - 4;
              goto LABEL_63;
            }

            v19 = (v9 + 1);
            v38 = v9[1];
            v39 = v12[1];
            *v12 = v17;
            v12[1] = v38;
            *v9 = v18;
            v9[1] = v39;
            v40 = *(a2 - 2);
            if (v40 < v18)
            {
              *v9 = v40;
              goto LABEL_37;
            }
          }

          --a3;
          if ((a4 & 1) != 0 || *(v9 - 2) < *v9)
          {
            break;
          }

          v82 = *v9;
          if (*(a2 - 2) <= *v9)
          {
            v84 = v9 + 2;
            do
            {
              v9 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v84 += 2;
            }

            while (*v9 <= v82);
          }

          else
          {
            do
            {
              v83 = v9[2];
              v9 += 2;
            }

            while (v83 <= v82);
          }

          v85 = a2;
          if (v9 < a2)
          {
            v85 = a2;
            do
            {
              v86 = *(v85 - 2);
              v85 -= 2;
            }

            while (v86 > v82);
          }

          if (v9 < v85)
          {
            v87 = *v9;
            v88 = *v85;
            do
            {
              *v9 = v88;
              *v85 = v87;
              v89 = v9[1];
              v9[1] = v85[1];
              v85[1] = v89;
              do
              {
                v90 = v9[2];
                v9 += 2;
                v87 = v90;
              }

              while (v90 <= v82);
              do
              {
                v91 = *(v85 - 2);
                v85 -= 2;
                v88 = v91;
              }

              while (v91 > v82);
            }

            while (v9 < v85);
          }

          if (v9 - 2 != v7)
          {
            *v7 = *(v9 - 2);
            v7[1] = *(v9 - 1);
          }

          a4 = 0;
          *(v9 - 1) = v82;
        }

        v69 = 0;
        v70 = *v9;
        do
        {
          v71 = v9[v69 + 2];
          v69 += 2;
        }

        while (v71 < v70);
        v72 = &v9[v69];
        v73 = a2;
        if (v69 == 2)
        {
          v73 = a2;
          do
          {
            if (v72 >= v73)
            {
              break;
            }

            v75 = *(v73 - 2);
            v73 -= 8;
          }

          while (v75 >= v70);
        }

        else
        {
          do
          {
            v74 = *(v73 - 2);
            v73 -= 8;
          }

          while (v74 >= v70);
        }

        if (v72 >= v73)
        {
          v9 = (v9 + v69 * 4);
        }

        else
        {
          v76 = *v73;
          v9 = (v9 + v69 * 4);
          v77 = v73;
          do
          {
            *v9 = v76;
            *v77 = v71;
            v78 = v9[1];
            v9[1] = v77[1];
            v77[1] = v78;
            do
            {
              v79 = v9[2];
              v9 += 2;
              v71 = v79;
            }

            while (v79 < v70);
            do
            {
              v80 = *(v77 - 2);
              v77 -= 2;
              v76 = v80;
            }

            while (v80 >= v70);
          }

          while (v9 < v77);
        }

        if (v9 - 2 != v7)
        {
          *v7 = *(v9 - 2);
          v7[1] = *(v9 - 1);
        }

        *(v9 - 1) = v70;
        if (v72 >= v73)
        {
          break;
        }

LABEL_87:
        a4 = 0;
      }

      if (result)
      {
        break;
      }

      if (!v81)
      {
        goto LABEL_87;
      }
    }

    a2 = (v9 - 2);
    if (!v81)
    {
      continue;
    }

    return result;
  }
}

int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geom::anonymous namespace::find_and_repair_non_manifold_vertices_helper(std::vector<unsigned int> const&,unsigned int &,geom::hash_brown<std::pair<unsigned int,unsigned int>,unsigned int,geom::anonymous namespace::vertex_pair_hash,std::equal_to<std::pair<unsigned int,unsigned int>>> &,std::vector<unsigned int>&,std::vector<unsigned int>&,std::vector<unsigned int>&,std::vector<unsigned int>&,std::vector<unsigned int>&)::{lambda(std::pair<unsigned int,unsigned int> const&,std::pair<unsigned int,unsigned int> const&)#1} &,std::pair<unsigned int,unsigned int>*,0>(int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = (a2 + 1);
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = (a3 + 1);
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 1);
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geom::anonymous namespace::find_and_repair_non_manifold_vertices_helper(std::vector<unsigned int> const&,unsigned int &,geom::hash_brown<std::pair<unsigned int,unsigned int>,unsigned int,geom::anonymous namespace::vertex_pair_hash,std::equal_to<std::pair<unsigned int,unsigned int>>> &,std::vector<unsigned int>&,std::vector<unsigned int>&,std::vector<unsigned int>&,std::vector<unsigned int>&,std::vector<unsigned int>&)::{lambda(std::pair<unsigned int,unsigned int> const&,std::pair<unsigned int,unsigned int> const&)#1} &,std::pair<unsigned int,unsigned int>*>(unsigned int *a1, char *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 >= *a1)
      {
        if (v8 >= v6)
        {
          return 1;
        }

        a1[2] = v8;
        *(a2 - 2) = v6;
        v20 = (a1 + 3);
        v19 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v19;
        v21 = a1[2];
        v22 = *a1;
        if (v21 >= *a1)
        {
          return 1;
        }

        *a1 = v21;
        a1[2] = v22;
        v9 = (a1 + 1);
      }

      else
      {
        if (v8 >= v6)
        {
          v9 = (a1 + 3);
          v29 = a1[3];
          v30 = a1[1];
          *a1 = v6;
          a1[1] = v29;
          a1[2] = v7;
          a1[3] = v30;
          v31 = *(a2 - 2);
          if (v31 >= v7)
          {
            return 1;
          }

          a1[2] = v31;
        }

        else
        {
          v9 = (a1 + 1);
          *a1 = v8;
        }

        *(a2 - 2) = v7;
        v20 = a2 - 4;
      }

      v32 = *v9;
      *v9 = *v20;
      *v20 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v15 = a1[2];
    v16 = *a1;
    v17 = a1[4];
    if (v15 >= *a1)
    {
      if (v17 < v15)
      {
        v27 = (a1 + 3);
        v26 = a1[3];
        v28 = a1[5];
        a1[2] = v17;
        a1[3] = v28;
        a1[4] = v15;
        a1[5] = v26;
        if (v17 >= v16)
        {
LABEL_51:
          v17 = v15;
          goto LABEL_52;
        }

        *a1 = v17;
        a1[2] = v16;
        v18 = (a1 + 1);
LABEL_50:
        v48 = *v18;
        *v18 = *v27;
        *v27 = v48;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = (a1 + 1);
        *a1 = v17;
LABEL_49:
        a1[4] = v16;
        v27 = (a1 + 5);
        v15 = v16;
        goto LABEL_50;
      }

      v18 = (a1 + 3);
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v15;
      a1[1] = v46;
      a1[2] = v16;
      a1[3] = v47;
      if (v17 < v16)
      {
        a1[2] = v17;
        goto LABEL_49;
      }
    }

LABEL_52:
    v49 = *(a2 - 2);
    if (v49 < v17)
    {
      a1[4] = v49;
      *(a2 - 2) = v17;
      v50 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v50;
      v51 = a1[4];
      v52 = a1[2];
      if (v51 < v52)
      {
        v53 = a1[3];
        v54 = a1[5];
        a1[2] = v51;
        a1[3] = v54;
        a1[4] = v52;
        a1[5] = v53;
        v55 = *a1;
        if (v51 < *a1)
        {
          v56 = a1[1];
          *a1 = v51;
          a1[1] = v54;
          a1[2] = v55;
          a1[3] = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      v5 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = (a1 + 4);
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 < *a1)
  {
    if (v11 >= v12)
    {
      v14 = (a1 + 3);
      v33 = a1[3];
      v34 = a1[1];
      *a1 = v12;
      a1[1] = v33;
      a1[2] = v13;
      a1[3] = v34;
      if (v11 >= v13)
      {
        goto LABEL_36;
      }

      a1[2] = v11;
    }

    else
    {
      v14 = (a1 + 1);
      *a1 = v11;
    }

    a1[4] = v13;
    v24 = (a1 + 5);
    goto LABEL_35;
  }

  if (v11 < v12)
  {
    v24 = (a1 + 3);
    v23 = a1[3];
    v25 = a1[5];
    a1[2] = v11;
    a1[3] = v25;
    a1[4] = v12;
    a1[5] = v23;
    if (v11 < v13)
    {
      *a1 = v11;
      a1[2] = v13;
      v14 = (a1 + 1);
LABEL_35:
      v35 = *v14;
      *v14 = *v24;
      *v24 = v35;
    }
  }

LABEL_36:
  v36 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v10;
    if (*v36 < *v10)
    {
      v41 = *v36;
      v40 = *(v36 + 1);
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 20);
        v43[6] = v39;
        v43[7] = v44;
        if (v42 == -16)
        {
          break;
        }

        v39 = v43[2];
        v42 -= 8;
        if (v39 <= v41)
        {
          v45 = (a1 + v42 + 24);
          goto LABEL_44;
        }
      }

      v45 = a1;
LABEL_44:
      *v45 = v41;
      v45[1] = v40;
      if (++v38 == 8)
      {
        return v36 + 8 == a2;
      }
    }

    v10 = v36;
    v37 += 8;
    v36 += 8;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

__n128 std::pair<geom::triangle_mesh_half_edge_connectivity,std::optional<std::vector<unsigned int>>>::pair[abi:nn200100](uint64_t a1, __n128 *a2)
{
  result.n128_f64[0] = geom::triangle_mesh_half_edge_connectivity::triangle_mesh_half_edge_connectivity(a1, a2);
  *(v3 + 160) = 0;
  *(v3 + 184) = 0;
  if (a2[11].n128_u8[8] == 1)
  {
    *(v3 + 160) = 0;
    *(v3 + 168) = 0;
    *(v3 + 176) = 0;
    result = a2[10];
    *(v3 + 160) = result;
    *(v3 + 176) = a2[11].n128_u64[0];
    a2[10].n128_u64[0] = 0;
    a2[10].n128_u64[1] = 0;
    a2[11].n128_u64[0] = 0;
    *(v3 + 184) = 1;
  }

  return result;
}

double geom::triangle_mesh_half_edge_connectivity::triangle_mesh_half_edge_connectivity(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v3 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v3;
  v4 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v4;
  v5 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v5;
  v6 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v6;
  v7 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v7;
  v8 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v8;
  v9 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v9;
  v10 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v10;
  *a1 = *a2;
  *a2 = 0;
  LODWORD(v10) = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v10;
  LODWORD(v10) = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v12;
  v13 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v13;
  return result;
}

char *std::vector<unsigned int>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
      std::__throw_bad_array_new_length[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v15);
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

uint64_t geom::triangulate_by_ear_clipping<float>(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *result;
    v4 = 0x7F0000007FLL;
    v5 = vneg_f32(0x7F0000007FLL);
    v6 = 8 * v2;
    do
    {
      v7 = *v3++;
      v5 = vminnm_f32(v7, v5);
      v4 = vmaxnm_f32(v7, v4);
      v6 -= 8;
    }

    while (v6);
  }

  if (v2 > 2)
  {
    geom::fixed_pool_list<unsigned long>::fixed_pool_list(v8, v2);
  }

  a2[1] = *a2;
  return result;
}

void geom::triangulate_by_ear_clipping_helper<float>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, std::vector<unsigned int> *a7, float a8)
{
  v176 = *MEMORY[0x277D85DE8];
  v168[0] = a3;
  v168[1] = a4;
  v15 = *a2;
  v14 = a2[1];
  v16 = (v14 - *a2) >> 3;
  v17 = 3 * (v16 - 2);
  if (6 * (v16 - 2) <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 6 * (v16 - 2);
  }

  v175 = 0;
  memset(v174, 0, sizeof(v174));
  geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::init(v174, v18);
  geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::fixed_pool_list(&v163, v16);
  v160 = 0;
  v161 = 0;
  v162 = 0;
  if (v14 != v15)
  {
    std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::__vallocate[abi:nn200100](&v160, v16);
  }

  *__p = 0u;
  v159 = 0u;
  *v157 = 0u;
  std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::reserve(v157, v16);
  std::vector<unsigned long long>::resize(&__p[1], v16, &geom::indexed_priority_queue<unsigned long,double>::k_invalid_index);
  v19 = a1[2];
  v20 = *(v19 + 16);
  while (v20 != 1)
  {
    v21 = (v160 + 16 * *(v19 + 32 * v20));
    *v21 = v20;
    v21[1] = a1;
    v19 = a1[2];
    v22 = (*a6 + 16 * *(v19 + 32 * v20));
    if (v22[1] == a5 && *v22 == 1)
    {
      v171 = v20;
      v172 = *&a1;
      is_triangle_incident_to_vertex_concave = geom::is_triangle_incident_to_vertex_concave_free<float>(&v171, a1, a2, v168, a5, a8);
      v19 = a1[2];
      if (is_triangle_incident_to_vertex_concave)
      {
        v24 = (v19 + 32 * v20);
        v25 = v24[2];
        if (v25 == -1)
        {
          v25 = v20;
        }

        if (v25 == 1)
        {
          v25 = *(v19 + 16);
        }

        if (v20 == *(v19 + 16))
        {
          v26 = *(v19 + 56);
          if (v26 <= 1)
          {
            v26 = 1;
          }
        }

        else
        {
          v26 = v24[3];
          if (!v26)
          {
            v26 = v20;
          }
        }

        v27 = *v24;
        v28 = *(v168[0] + 8 * *(*a2 + 8 * v27));
        v29 = vsub_f32(v28, *(v168[0] + 8 * *(*a2 + 8 * *(v19 + 32 * v26))));
        v30 = vsub_f32(*(v168[0] + 8 * *(*a2 + 8 * *(v19 + 32 * v25))), v28);
        v31 = vmul_f32(v30, v30);
        v31.i32[0] = vadd_f32(v31, vdup_lane_s32(v31, 1)).u32[0];
        v32 = vrsqrte_f32(v31.u32[0]);
        v33 = vmul_f32(v32, vrsqrts_f32(v31.u32[0], vmul_f32(v32, v32)));
        v34 = vmul_f32(v33, vrsqrts_f32(v31.u32[0], vmul_f32(v33, v33)));
        v35 = vmul_n_f32(v30, *v34.i32);
        *v34.i32 = -*&v29.i32[1];
        v36 = vzip1_s32(v34, v29);
        v37 = vmul_f32(v36, v36);
        v37.i32[0] = vadd_f32(v37, vdup_lane_s32(v37, 1)).u32[0];
        v38 = vrsqrte_f32(v37.u32[0]);
        v39 = vmul_f32(v38, vrsqrts_f32(v37.u32[0], vmul_f32(v38, v38)));
        v40 = vaddv_f32(vmul_f32(v35, vmul_n_f32(v36, vmul_f32(v39, vrsqrts_f32(v37.u32[0], vmul_f32(v39, v39))).f32[0])));
        if (v40 < 0.0)
        {
          v40 = v40 + 2.0;
        }

        v171 = v27;
        v172 = v40;
        geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v157, &v171);
        v19 = a1[2];
      }
    }

    if (*(v19 + 32 * v20 + 16) != -1)
    {
      v20 = *(v19 + 32 * v20 + 16);
    }
  }

  a7->__end_ = a7->__begin_;
  std::vector<float>::reserve(a7, v17);
  v41 = v157[0];
  v42 = v157[1] - v157[0];
  if (v157[1] != v157[0])
  {
    while (1)
    {
      v43 = *v41;
      v44 = v41[1];
      if (v42 == 16)
      {
        v157[1] = v41;
        v45 = __p[1];
      }

      else
      {
        v54 = (v42 >> 4) - 1;
        v55 = &v41[2 * v54];
        v56 = *v55;
        *v41 = *v55;
        v41[1] = v55[1];
        *(__p[1] + *&v56) = 0;
        std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::resize(v157, v54);
        v57 = 0;
        v41 = v157[0];
        v58 = (v157[1] - v157[0]) >> 4;
        v45 = __p[1];
        for (i = 0; ; v57 = i)
        {
          v60 = (2 * v57) | 1;
          v61 = &v41[2 * v57];
          if (v60 < v58)
          {
            i = v57;
            if (v41[2 * v60 + 1] < v61[1])
            {
              i = (2 * v57) | 1;
            }
          }

          v62 = 2 * v57 + 2;
          if (v62 < v58 && v41[2 * v62 + 1] < v41[2 * i + 1])
          {
            i = 2 * v57 + 2;
          }

          if (i == v57)
          {
            break;
          }

          v63 = &v41[2 * i];
          v64 = *v61;
          v65 = *(v61 + 1);
          *v61 = *v63;
          v61[1] = v63[1];
          *v63 = v64;
          *(v63 + 1) = v65;
          v45[*v61] = v57;
          v45[*v63] = i;
        }
      }

      v45[*&v43] = -1;
      if (v44 == INFINITY)
      {
        goto LABEL_167;
      }

      v46 = (v160 + 16 * *&v43);
      v48 = *v46;
      v47 = v46[1];
      if (v47 == a1 && v48 == 1)
      {
        break;
      }

      v50 = *(v47[2] + 32 * v48 + 16);
      if (v50 == -1)
      {
        v50 = v48;
      }

      if (v47 == a1 && v50 == 1)
      {
        v50 = *(a1[2] + 16);
        v52 = a1;
        goto LABEL_52;
      }

      v52 = v47;
      v53 = v47;
LABEL_53:
      v155 = v50;
      v156 = v52;
      if (v47 != a1)
      {
        goto LABEL_54;
      }

      v66 = a1[2];
      if (v48 == 1)
      {
        v68 = a1;
        v67 = 1;
        goto LABEL_63;
      }

      if (v48 == *(v66 + 16))
      {
        v67 = *(v66 + 56);
        if (v67 <= 1)
        {
          v67 = 1;
        }

        v68 = a1;
      }

      else
      {
LABEL_54:
        v66 = v47[2];
        v67 = *(v66 + 32 * v48 + 24);
        if (!v67)
        {
          v67 = v48;
        }

        v68 = v47;
      }

LABEL_63:
      v153 = v67;
      v154 = v68;
      v171 = *(v47[2] + 32 * v48);
      v172 = *(v53[2] + 32 * v50);
      v173 = *(v66 + 32 * v67);
      geom::add_triangle_helper<float>(&v171, a7, v174, a2, v168[0]);
      v69 = a1[2];
      v70 = (v69 + 32 * v48);
      v71 = v69 + 32 * v70[3];
      v72 = v69 + 32 * v70[2];
      *(v71 + 16) = *(v72 + 8);
      *(v72 + 24) = *(v71 + 8);
      v70[2] = -1;
      v70[3] = -1;
      v73 = a1[1] - 1;
      a1[1] = v73;
      *(a1[5] + 8 * v73) = v70[1];
      v74 = v153;
      v75 = v154[2];
      v76 = *(v75 + 32 * v153);
      v77 = *a6;
      v78 = (*a6 + 16 * v76);
      if (v78[1] == a5 && *v78 == 1)
      {
        goto LABEL_85;
      }

      v79 = v75 + 32 * v153;
      if (v154 == a1 && v153 == 1)
      {
        v80 = v154[2];
        v81 = 1;
      }

      else
      {
        v81 = *(v79 + 16);
        if (v81 == -1)
        {
          v81 = v153;
        }

        v80 = v154[2];
        if (v154 == a1 && v81 == 1)
        {
          v80 = a1[2];
          v81 = *(v80 + 16);
        }
      }

      if (v154 != a1)
      {
LABEL_74:
        if (*(v79 + 24))
        {
          v74 = *(v79 + 24);
        }

        goto LABEL_83;
      }

      if (v153 != 1)
      {
        v82 = a1[2];
        if (v153 != *(v82 + 16))
        {
          goto LABEL_74;
        }

        if (*(v82 + 56) <= 1uLL)
        {
          v74 = 1;
        }

        else
        {
          v74 = *(v82 + 56);
        }

        v75 = a1[2];
      }

LABEL_83:
      v83 = _simd_orient_pf2(*(v168[0] + 8 * *(*a2 + 8 * *(v75 + 32 * v74))), *(v168[0] + 8 * *(*a2 + 8 * v76)), *(v168[0] + 8 * *(*a2 + 8 * *(v80 + 32 * v81))));
      v77 = *a6;
      if (v83 > 0.0)
      {
        v84 = a5[2];
        v85 = (v84 + 40 * *(v77 + 16 * *(v154[2] + 32 * v153)));
        v86 = v84 + 40 * v85[4];
        v87 = v84 + 40 * v85[3];
        *(v86 + 24) = *(v87 + 16);
        *(v87 + 32) = *(v86 + 16);
        v85[3] = -1;
        v85[4] = -1;
        v88 = a5[1] - 1;
        a5[1] = v88;
        *(a5[5] + 8 * v88) = v85[2];
        v89 = (*a6 + 16 * *(v154[2] + 32 * v153));
        *v89 = 1;
        v89[1] = a5;
        v77 = *a6;
      }

LABEL_85:
      v90 = v155;
      v91 = v156[2];
      v92 = *(v91 + 32 * v155);
      v93 = (v77 + 16 * v92);
      if (v93[1] == a5 && *v93 == 1)
      {
        goto LABEL_107;
      }

      v94 = v91 + 32 * v155;
      if (v156 == a1 && v155 == 1)
      {
        v95 = v156[2];
        v96 = 1;
      }

      else
      {
        v96 = *(v94 + 16);
        if (v96 == -1)
        {
          v96 = v155;
        }

        v95 = v156[2];
        if (v156 == a1 && v96 == 1)
        {
          v95 = a1[2];
          v96 = *(v95 + 16);
        }
      }

      if (v156 != a1)
      {
LABEL_96:
        if (*(v94 + 24))
        {
          v90 = *(v94 + 24);
        }

        goto LABEL_105;
      }

      if (v155 != 1)
      {
        v97 = a1[2];
        if (v155 != *(v97 + 16))
        {
          goto LABEL_96;
        }

        if (*(v97 + 56) <= 1uLL)
        {
          v90 = 1;
        }

        else
        {
          v90 = *(v97 + 56);
        }

        v91 = a1[2];
      }

LABEL_105:
      if (_simd_orient_pf2(*(v168[0] + 8 * *(*a2 + 8 * *(v91 + 32 * v90))), *(v168[0] + 8 * *(*a2 + 8 * v92)), *(v168[0] + 8 * *(*a2 + 8 * *(v95 + 32 * v96)))) > 0.0)
      {
        v98 = a5[2];
        v99 = (v98 + 40 * *(*a6 + 16 * *(v156[2] + 32 * v155)));
        v100 = v98 + 40 * v99[4];
        v101 = v98 + 40 * v99[3];
        *(v100 + 24) = *(v101 + 16);
        *(v101 + 32) = *(v100 + 16);
        v99[3] = -1;
        v99[4] = -1;
        v102 = a5[1] - 1;
        a5[1] = v102;
        *(a5[5] + 8 * v102) = v99[2];
        v103 = (*a6 + 16 * *(v156[2] + 32 * v155));
        *v103 = 1;
        v103[1] = a5;
      }

LABEL_107:
      v104 = *(v154[2] + 32 * v153);
      v105 = *(__p[1] + v104);
      v106 = v105 != -1 && *(v157[0] + 2 * v105 + 1) != INFINITY;
      v107 = (*a6 + 16 * v104);
      if (v107[1] == a5 && *v107 == 1 && geom::is_triangle_incident_to_vertex_concave_free<float>(&v153, a1, a2, v168, a5, a8))
      {
        v108 = v154[2];
        v109 = v108 + 32 * v153;
        if (v154 == a1 && v153 == 1)
        {
          v110 = v154[2];
          v111 = 1;
        }

        else
        {
          v111 = *(v109 + 16);
          if (v111 == -1)
          {
            v111 = v153;
          }

          v110 = v154[2];
          if (v154 == a1 && v111 == 1)
          {
            v110 = a1[2];
            v111 = *(v110 + 16);
          }
        }

        if (v154 == a1)
        {
          if (v153 == 1)
          {
            v121 = v154[2];
            v120 = 1;
          }

          else
          {
            v121 = a1[2];
            if (v153 != *(v121 + 16))
            {
              goto LABEL_139;
            }

            v120 = *(v121 + 56);
            if (v120 <= 1)
            {
              v120 = 1;
            }
          }
        }

        else
        {
LABEL_139:
          v120 = *(v109 + 24);
          if (!v120)
          {
            v120 = v153;
          }

          v121 = v154[2];
        }

        v124 = *(v108 + 32 * v153);
        v125 = *(v168[0] + 8 * *(*a2 + 8 * v124));
        v126 = vsub_f32(v125, *(v168[0] + 8 * *(*a2 + 8 * *(v121 + 32 * v120))));
        v127 = vsub_f32(*(v168[0] + 8 * *(*a2 + 8 * *(v110 + 32 * v111))), v125);
        v128 = vmul_f32(v127, v127);
        v128.i32[0] = vadd_f32(v128, vdup_lane_s32(v128, 1)).u32[0];
        v129 = vrsqrte_f32(v128.u32[0]);
        v130 = vmul_f32(v129, vrsqrts_f32(v128.u32[0], vmul_f32(v129, v129)));
        v131 = vmul_f32(v130, vrsqrts_f32(v128.u32[0], vmul_f32(v130, v130)));
        v132 = vmul_n_f32(v127, *v131.i32);
        *v131.i32 = -*&v126.i32[1];
        v133 = vzip1_s32(v131, v126);
        v134 = vmul_f32(v133, v133);
        v134.i32[0] = vadd_f32(v134, vdup_lane_s32(v134, 1)).u32[0];
        v135 = vrsqrte_f32(v134.u32[0]);
        v136 = vmul_f32(v135, vrsqrts_f32(v134.u32[0], vmul_f32(v135, v135)));
        v137 = vaddv_f32(vmul_f32(v132, vmul_n_f32(v133, vmul_f32(v136, vrsqrts_f32(v134.u32[0], vmul_f32(v136, v136))).f32[0])));
        if (v137 < 0.0)
        {
          v137 = v137 + 2.0;
        }

        v169 = v124;
        v170 = v137;
        goto LABEL_118;
      }

      if (!v106)
      {
        goto LABEL_119;
      }

      v169 = *(v154[2] + 32 * v153);
      v170 = INFINITY;
LABEL_118:
      geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v157, &v169);
LABEL_119:
      v112 = *(v156[2] + 32 * v155);
      v113 = *(__p[1] + v112);
      v114 = v113 != -1 && *(v157[0] + 2 * v113 + 1) != INFINITY;
      v115 = (*a6 + 16 * v112);
      if (v115[1] == a5 && *v115 == 1 && geom::is_triangle_incident_to_vertex_concave_free<float>(&v155, a1, a2, v168, a5, a8))
      {
        v116 = v156[2];
        v117 = v116 + 32 * v155;
        if (v156 == a1 && v155 == 1)
        {
          v118 = v156[2];
          v119 = 1;
        }

        else
        {
          v119 = *(v117 + 16);
          if (v119 == -1)
          {
            v119 = v155;
          }

          v118 = v156[2];
          if (v156 == a1 && v119 == 1)
          {
            v118 = a1[2];
            v119 = *(v118 + 16);
          }
        }

        if (v156 == a1)
        {
          if (v155 == 1)
          {
            v123 = v156[2];
            v122 = 1;
          }

          else
          {
            v123 = a1[2];
            if (v155 != *(v123 + 16))
            {
              goto LABEL_148;
            }

            v122 = *(v123 + 56);
            if (v122 <= 1)
            {
              v122 = 1;
            }
          }
        }

        else
        {
LABEL_148:
          v122 = *(v117 + 24);
          if (!v122)
          {
            v122 = v155;
          }

          v123 = v156[2];
        }

        v138 = *(v116 + 32 * v155);
        v139 = *(v168[0] + 8 * *(*a2 + 8 * v138));
        v140 = vsub_f32(v139, *(v168[0] + 8 * *(*a2 + 8 * *(v123 + 32 * v122))));
        v141 = vsub_f32(*(v168[0] + 8 * *(*a2 + 8 * *(v118 + 32 * v119))), v139);
        v142 = vmul_f32(v141, v141);
        v142.i32[0] = vadd_f32(v142, vdup_lane_s32(v142, 1)).u32[0];
        v143 = vrsqrte_f32(v142.u32[0]);
        v144 = vmul_f32(v143, vrsqrts_f32(v142.u32[0], vmul_f32(v143, v143)));
        v145 = vmul_f32(v144, vrsqrts_f32(v142.u32[0], vmul_f32(v144, v144)));
        v146 = vmul_n_f32(v141, *v145.i32);
        *v145.i32 = -*&v140.i32[1];
        v147 = vzip1_s32(v145, v140);
        v148 = vmul_f32(v147, v147);
        v148.i32[0] = vadd_f32(v148, vdup_lane_s32(v148, 1)).u32[0];
        v149 = vrsqrte_f32(v148.u32[0]);
        v150 = vmul_f32(v149, vrsqrts_f32(v148.u32[0], vmul_f32(v149, v149)));
        v151 = vaddv_f32(vmul_f32(v146, vmul_n_f32(v147, vmul_f32(v150, vrsqrts_f32(v148.u32[0], vmul_f32(v150, v150))).f32[0])));
        if (v151 < 0.0)
        {
          v151 = v151 + 2.0;
        }

        v169 = v138;
        v170 = v151;
LABEL_130:
        geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v157, &v169);
        goto LABEL_131;
      }

      if (v114)
      {
        v169 = *(v156[2] + 32 * v155);
        v170 = INFINITY;
        goto LABEL_130;
      }

LABEL_131:
      v41 = v157[0];
      v42 = v157[1] - v157[0];
      if (v157[1] == v157[0])
      {
        goto LABEL_167;
      }
    }

    v52 = a1;
    v50 = 1;
LABEL_52:
    v53 = a1;
    goto LABEL_53;
  }

LABEL_167:
  if (__p[1])
  {
    *&v159 = __p[1];
    operator delete(__p[1]);
    v41 = v157[0];
  }

  if (v41)
  {
    v157[1] = v41;
    operator delete(v41);
  }

  if (v160)
  {
    v161 = v160;
    operator delete(v160);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (v164)
  {
    v165 = v164;
    operator delete(v164);
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(v174);
  v152 = *MEMORY[0x277D85DE8];
}

float64x2_t **geom::triangulate_by_ear_clipping<double>(float64x2_t **result, void *a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    v4 = vdupq_n_s64(0x7FF0000000000000uLL);
    v5 = 16 * v2;
    v6 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v7 = *v3++;
      v4 = vminnmq_f64(v7, v4);
      v6 = vmaxnmq_f64(v7, v6);
      v5 -= 16;
    }

    while (v5);
  }

  if (v2 > 2)
  {
    geom::fixed_pool_list<unsigned long>::fixed_pool_list(v8, v2);
  }

  a2[1] = *a2;
  return result;
}

void geom::triangulate_by_ear_clipping_helper<double>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, std::vector<unsigned int> *a7, double a8)
{
  v158 = *MEMORY[0x277D85DE8];
  v150[0] = a3;
  v150[1] = a4;
  v15 = *a2;
  v14 = a2[1];
  v16 = (v14 - *a2) >> 3;
  v17 = 3 * (v16 - 2);
  if (6 * (v16 - 2) <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 6 * (v16 - 2);
  }

  v157 = 0;
  memset(v156, 0, sizeof(v156));
  geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::init(v156, v18);
  geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::fixed_pool_list(&v145, v16);
  v142 = 0;
  v143 = 0;
  v144 = 0;
  if (v14 != v15)
  {
    std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::__vallocate[abi:nn200100](&v142, v16);
  }

  *__p = 0u;
  v141 = 0u;
  *v139 = 0u;
  std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::reserve(v139, v16);
  std::vector<unsigned long long>::resize(&__p[1], v16, &geom::indexed_priority_queue<unsigned long,double>::k_invalid_index);
  v19 = a1[2];
  v20 = *(v19 + 16);
  while (v20 != 1)
  {
    v21 = (v142 + 16 * *(v19 + 32 * v20));
    *v21 = v20;
    v21[1] = a1;
    v19 = a1[2];
    v22 = (*a6 + 16 * *(v19 + 32 * v20));
    if (v22[1] == a5 && *v22 == 1)
    {
      v153 = v20;
      v154 = *&a1;
      is_triangle_incident_to_vertex_concave = geom::is_triangle_incident_to_vertex_concave_free<double>(&v153, a1, a2, v150, a5, a8);
      v19 = a1[2];
      if (is_triangle_incident_to_vertex_concave)
      {
        v24 = (v19 + 32 * v20);
        v25 = v24[2];
        if (v25 == -1)
        {
          v25 = v20;
        }

        if (v25 == 1)
        {
          v25 = *(v19 + 16);
        }

        if (v20 == *(v19 + 16))
        {
          v26 = *(v19 + 56);
          if (v26 <= 1)
          {
            v26 = 1;
          }
        }

        else
        {
          v26 = v24[3];
          if (!v26)
          {
            v26 = v20;
          }
        }

        v27 = *v24;
        v28 = *(v150[0] + 16 * *(*a2 + 8 * v27));
        v29 = vsubq_f64(v28, *(v150[0] + 16 * *(*a2 + 8 * *(v19 + 32 * v26))));
        v30 = vsubq_f64(*(v150[0] + 16 * *(*a2 + 8 * *(v19 + 32 * v25))), v28);
        v31 = vmulq_f64(v30, v30);
        v32 = vmulq_n_f64(v30, 1.0 / sqrt(vaddvq_f64(v31)));
        v31.f64[0] = -*&v29.i64[1];
        v33 = vzip1q_s64(v31, v29);
        v34 = vaddvq_f64(vmulq_f64(v32, vmulq_n_f64(v33, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v33, v33))))));
        if (v34 < 0.0)
        {
          v34 = v34 + 2.0;
        }

        v153 = v27;
        v154 = v34;
        geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v139, &v153);
        v19 = a1[2];
      }
    }

    if (*(v19 + 32 * v20 + 16) != -1)
    {
      v20 = *(v19 + 32 * v20 + 16);
    }
  }

  a7->__end_ = a7->__begin_;
  std::vector<float>::reserve(a7, v17);
  v35 = v139[0];
  v36 = v139[1] - v139[0];
  if (v139[1] != v139[0])
  {
    while (1)
    {
      v37 = *v35;
      v38 = v35[1];
      if (v36 == 16)
      {
        v139[1] = v35;
        v39 = __p[1];
      }

      else
      {
        v48 = (v36 >> 4) - 1;
        v49 = &v35[2 * v48];
        v50 = *v49;
        *v35 = *v49;
        v35[1] = v49[1];
        *(__p[1] + *&v50) = 0;
        std::vector<geom::indexed_priority_queue<unsigned long,double>::key,std::allocator<geom::indexed_priority_queue<unsigned long,double>::key>>::resize(v139, v48);
        v51 = 0;
        v35 = v139[0];
        v52 = (v139[1] - v139[0]) >> 4;
        v39 = __p[1];
        for (i = 0; ; v51 = i)
        {
          v54 = (2 * v51) | 1;
          v55 = &v35[2 * v51];
          if (v54 < v52)
          {
            i = v51;
            if (v35[2 * v54 + 1] < v55[1])
            {
              i = (2 * v51) | 1;
            }
          }

          v56 = 2 * v51 + 2;
          if (v56 < v52 && v35[2 * v56 + 1] < v35[2 * i + 1])
          {
            i = 2 * v51 + 2;
          }

          if (i == v51)
          {
            break;
          }

          v57 = &v35[2 * i];
          v58 = *v55;
          v59 = *(v55 + 1);
          *v55 = *v57;
          v55[1] = v57[1];
          *v57 = v58;
          *(v57 + 1) = v59;
          v39[*v55] = v51;
          v39[*v57] = i;
        }
      }

      v39[*&v37] = -1;
      if (v38 == INFINITY)
      {
        goto LABEL_167;
      }

      v40 = (v142 + 16 * *&v37);
      v42 = *v40;
      v41 = v40[1];
      if (v41 == a1 && v42 == 1)
      {
        break;
      }

      v44 = *(v41[2] + 32 * v42 + 16);
      if (v44 == -1)
      {
        v44 = v42;
      }

      if (v41 == a1 && v44 == 1)
      {
        v44 = *(a1[2] + 16);
        v46 = a1;
        goto LABEL_52;
      }

      v46 = v41;
      v47 = v41;
LABEL_53:
      v137 = v44;
      v138 = v46;
      if (v41 != a1)
      {
        goto LABEL_60;
      }

      v60 = a1[2];
      if (v42 == 1)
      {
        v61 = a1;
        v62 = 1;
        goto LABEL_63;
      }

      if (v42 == *(v60 + 16))
      {
        v62 = *(v60 + 56);
        if (v62 <= 1)
        {
          v62 = 1;
        }

        v61 = a1;
      }

      else
      {
LABEL_60:
        v60 = v41[2];
        v62 = *(v60 + 32 * v42 + 24);
        if (!v62)
        {
          v62 = v42;
        }

        v61 = v41;
      }

LABEL_63:
      v135 = v62;
      v136 = v61;
      v153 = *(v41[2] + 32 * v42);
      v154 = *(v47[2] + 32 * v44);
      v155 = *(v60 + 32 * v62);
      geom::add_triangle_helper<double>(&v153, a7, v156, a2, v150[0]);
      v63 = a1[2];
      v64 = (v63 + 32 * v42);
      v65 = v63 + 32 * v64[3];
      v66 = v63 + 32 * v64[2];
      *(v65 + 16) = *(v66 + 8);
      *(v66 + 24) = *(v65 + 8);
      v64[2] = -1;
      v64[3] = -1;
      v67 = a1[1] - 1;
      a1[1] = v67;
      *(a1[5] + 8 * v67) = v64[1];
      v68 = v135;
      v69 = v136[2];
      v70 = *(v69 + 32 * v135);
      v71 = *a6;
      v72 = (*a6 + 16 * v70);
      if (v72[1] == a5 && *v72 == 1)
      {
        goto LABEL_85;
      }

      v73 = v69 + 32 * v135;
      if (v136 == a1 && v135 == 1)
      {
        v74 = v136[2];
        v75 = 1;
      }

      else
      {
        v75 = *(v73 + 16);
        if (v75 == -1)
        {
          v75 = v135;
        }

        v74 = v136[2];
        if (v136 == a1 && v75 == 1)
        {
          v74 = a1[2];
          v75 = *(v74 + 16);
        }
      }

      if (v136 != a1)
      {
LABEL_74:
        if (*(v73 + 24))
        {
          v68 = *(v73 + 24);
        }

        goto LABEL_83;
      }

      if (v135 != 1)
      {
        v76 = a1[2];
        if (v135 != *(v76 + 16))
        {
          goto LABEL_74;
        }

        if (*(v76 + 56) <= 1uLL)
        {
          v68 = 1;
        }

        else
        {
          v68 = *(v76 + 56);
        }

        v69 = a1[2];
      }

LABEL_83:
      v77 = _simd_orient_pd2(*(v150[0] + 16 * *(*a2 + 8 * *(v69 + 32 * v68))), *(v150[0] + 16 * *(*a2 + 8 * v70)), *(v150[0] + 16 * *(*a2 + 8 * *(v74 + 32 * v75))));
      v71 = *a6;
      if (v77 > 0.0)
      {
        v78 = a5[2];
        v79 = (v78 + 40 * *(v71 + 16 * *(v136[2] + 32 * v135)));
        v80 = v78 + 40 * v79[4];
        v81 = v78 + 40 * v79[3];
        *(v80 + 24) = *(v81 + 16);
        *(v81 + 32) = *(v80 + 16);
        v79[3] = -1;
        v79[4] = -1;
        v82 = a5[1] - 1;
        a5[1] = v82;
        *(a5[5] + 8 * v82) = v79[2];
        v83 = (*a6 + 16 * *(v136[2] + 32 * v135));
        *v83 = 1;
        v83[1] = a5;
        v71 = *a6;
      }

LABEL_85:
      v84 = v137;
      v85 = v138[2];
      v86 = *(v85 + 32 * v137);
      v87 = (v71 + 16 * v86);
      if (v87[1] == a5 && *v87 == 1)
      {
        goto LABEL_107;
      }

      v88 = v85 + 32 * v137;
      if (v138 == a1 && v137 == 1)
      {
        v89 = v138[2];
        v90 = 1;
      }

      else
      {
        v90 = *(v88 + 16);
        if (v90 == -1)
        {
          v90 = v137;
        }

        v89 = v138[2];
        if (v138 == a1 && v90 == 1)
        {
          v89 = a1[2];
          v90 = *(v89 + 16);
        }
      }

      if (v138 != a1)
      {
LABEL_96:
        if (*(v88 + 24))
        {
          v84 = *(v88 + 24);
        }

        goto LABEL_105;
      }

      if (v137 != 1)
      {
        v91 = a1[2];
        if (v137 != *(v91 + 16))
        {
          goto LABEL_96;
        }

        if (*(v91 + 56) <= 1uLL)
        {
          v84 = 1;
        }

        else
        {
          v84 = *(v91 + 56);
        }

        v85 = a1[2];
      }

LABEL_105:
      if (_simd_orient_pd2(*(v150[0] + 16 * *(*a2 + 8 * *(v85 + 32 * v84))), *(v150[0] + 16 * *(*a2 + 8 * v86)), *(v150[0] + 16 * *(*a2 + 8 * *(v89 + 32 * v90)))) > 0.0)
      {
        v92 = a5[2];
        v93 = (v92 + 40 * *(*a6 + 16 * *(v138[2] + 32 * v137)));
        v94 = v92 + 40 * v93[4];
        v95 = v92 + 40 * v93[3];
        *(v94 + 24) = *(v95 + 16);
        *(v95 + 32) = *(v94 + 16);
        v93[3] = -1;
        v93[4] = -1;
        v96 = a5[1] - 1;
        a5[1] = v96;
        *(a5[5] + 8 * v96) = v93[2];
        v97 = (*a6 + 16 * *(v138[2] + 32 * v137));
        *v97 = 1;
        v97[1] = a5;
      }

LABEL_107:
      v98 = *(v136[2] + 32 * v135);
      v99 = *(__p[1] + v98);
      v100 = v99 != -1 && *(v139[0] + 2 * v99 + 1) != INFINITY;
      v101 = (*a6 + 16 * v98);
      if (v101[1] == a5 && *v101 == 1 && geom::is_triangle_incident_to_vertex_concave_free<double>(&v135, a1, a2, v150, a5, a8))
      {
        v102 = v136[2];
        v103 = v102 + 32 * v135;
        if (v136 == a1 && v135 == 1)
        {
          v104 = v136[2];
          v105 = 1;
        }

        else
        {
          v105 = *(v103 + 16);
          if (v105 == -1)
          {
            v105 = v135;
          }

          v104 = v136[2];
          if (v136 == a1 && v105 == 1)
          {
            v104 = a1[2];
            v105 = *(v104 + 16);
          }
        }

        if (v136 == a1)
        {
          if (v135 == 1)
          {
            v115 = v136[2];
            v114 = 1;
          }

          else
          {
            v115 = a1[2];
            if (v135 != *(v115 + 16))
            {
              goto LABEL_139;
            }

            v114 = *(v115 + 56);
            if (v114 <= 1)
            {
              v114 = 1;
            }
          }
        }

        else
        {
LABEL_139:
          v114 = *(v103 + 24);
          if (!v114)
          {
            v114 = v135;
          }

          v115 = v136[2];
        }

        v118 = *(v102 + 32 * v135);
        v119 = *(v150[0] + 16 * *(*a2 + 8 * v118));
        v120 = vsubq_f64(v119, *(v150[0] + 16 * *(*a2 + 8 * *(v115 + 32 * v114))));
        v121 = vsubq_f64(*(v150[0] + 16 * *(*a2 + 8 * *(v104 + 32 * v105))), v119);
        v122 = vmulq_f64(v121, v121);
        v123 = vmulq_n_f64(v121, 1.0 / sqrt(vaddvq_f64(v122)));
        v122.f64[0] = -*&v120.i64[1];
        v124 = vzip1q_s64(v122, v120);
        v125 = vaddvq_f64(vmulq_f64(v123, vmulq_n_f64(v124, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v124, v124))))));
        if (v125 < 0.0)
        {
          v125 = v125 + 2.0;
        }

        v151 = v118;
        v152 = *&v125;
        goto LABEL_118;
      }

      if (!v100)
      {
        goto LABEL_119;
      }

      v151 = *(v136[2] + 32 * v135);
      v152 = 0x7FF0000000000000;
LABEL_118:
      geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v139, &v151);
LABEL_119:
      v106 = *(v138[2] + 32 * v137);
      v107 = *(__p[1] + v106);
      v108 = v107 != -1 && *(v139[0] + 2 * v107 + 1) != INFINITY;
      v109 = (*a6 + 16 * v106);
      if (v109[1] == a5 && *v109 == 1 && geom::is_triangle_incident_to_vertex_concave_free<double>(&v137, a1, a2, v150, a5, a8))
      {
        v110 = v138[2];
        v111 = v110 + 32 * v137;
        if (v138 == a1 && v137 == 1)
        {
          v112 = v138[2];
          v113 = 1;
        }

        else
        {
          v113 = *(v111 + 16);
          if (v113 == -1)
          {
            v113 = v137;
          }

          v112 = v138[2];
          if (v138 == a1 && v113 == 1)
          {
            v112 = a1[2];
            v113 = *(v112 + 16);
          }
        }

        if (v138 == a1)
        {
          if (v137 == 1)
          {
            v117 = v138[2];
            v116 = 1;
          }

          else
          {
            v117 = a1[2];
            if (v137 != *(v117 + 16))
            {
              goto LABEL_148;
            }

            v116 = *(v117 + 56);
            if (v116 <= 1)
            {
              v116 = 1;
            }
          }
        }

        else
        {
LABEL_148:
          v116 = *(v111 + 24);
          if (!v116)
          {
            v116 = v137;
          }

          v117 = v138[2];
        }

        v126 = *(v110 + 32 * v137);
        v127 = *(v150[0] + 16 * *(*a2 + 8 * v126));
        v128 = vsubq_f64(v127, *(v150[0] + 16 * *(*a2 + 8 * *(v117 + 32 * v116))));
        v129 = vsubq_f64(*(v150[0] + 16 * *(*a2 + 8 * *(v112 + 32 * v113))), v127);
        v130 = vmulq_f64(v129, v129);
        v131 = vmulq_n_f64(v129, 1.0 / sqrt(vaddvq_f64(v130)));
        v130.f64[0] = -*&v128.i64[1];
        v132 = vzip1q_s64(v130, v128);
        v133 = vaddvq_f64(vmulq_f64(v131, vmulq_n_f64(v132, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v132, v132))))));
        if (v133 < 0.0)
        {
          v133 = v133 + 2.0;
        }

        v151 = v126;
        v152 = *&v133;
LABEL_130:
        geom::indexed_priority_queue<unsigned long,double>::push_or_change_cost(v139, &v151);
        goto LABEL_131;
      }

      if (v108)
      {
        v151 = *(v138[2] + 32 * v137);
        v152 = 0x7FF0000000000000;
        goto LABEL_130;
      }

LABEL_131:
      v35 = v139[0];
      v36 = v139[1] - v139[0];
      if (v139[1] == v139[0])
      {
        goto LABEL_167;
      }
    }

    v46 = a1;
    v44 = 1;
LABEL_52:
    v47 = a1;
    goto LABEL_53;
  }

LABEL_167:
  if (__p[1])
  {
    *&v141 = __p[1];
    operator delete(__p[1]);
    v35 = v139[0];
  }

  if (v35)
  {
    v139[1] = v35;
    operator delete(v35);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  if (v148)
  {
    v149 = v148;
    operator delete(v148);
  }

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6deinitEv(v156);
  v134 = *MEMORY[0x277D85DE8];
}

float32x2_t **geom::triangulate_by_ear_clipping<float>(float32x2_t **result, unsigned int **a2, void *a3)
{
  v3 = a2[1];
  v4 = result[1];
  if (v4)
  {
    v5 = *result;
    v6 = 0x7F0000007FLL;
    v7 = vneg_f32(0x7F0000007FLL);
    v8 = 8 * v4;
    do
    {
      v9 = *v5++;
      v7 = vminnm_f32(v9, v7);
      v6 = vmaxnm_f32(v9, v6);
      v8 -= 8;
    }

    while (v8);
  }

  v10 = v3 - 1;
  if (v3 != 1)
  {
    if (v3)
    {
      if (v4 + 2 * v10 > 2)
      {
        geom::fixed_pool_list<unsigned long>::fixed_pool_list(v11, v4 + 2 * v10);
      }
    }

    goto LABEL_12;
  }

  if (v4 != **a2)
  {
LABEL_12:
    a3[1] = *a3;
    return result;
  }

  return geom::triangulate_by_ear_clipping<float>(result, a3);
}

void std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::resize(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::const_node_iterator,std::allocator<std::allocator>>::__append(a1, a2 - v3, a3);
  }
}

float64x2_t **geom::triangulate_by_ear_clipping<double>(float64x2_t **result, unsigned int **a2, void *a3)
{
  v3 = a2[1];
  v4 = result[1];
  if (v4)
  {
    v5 = *result;
    v6 = vdupq_n_s64(0x7FF0000000000000uLL);
    v7 = 16 * v4;
    v8 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v9 = *v5++;
      v6 = vminnmq_f64(v9, v6);
      v8 = vmaxnmq_f64(v9, v8);
      v7 -= 16;
    }

    while (v7);
  }

  v10 = v3 - 1;
  if (v3 != 1)
  {
    if (v3)
    {
      if (v4 + 2 * v10 > 2)
      {
        geom::fixed_pool_list<unsigned long>::fixed_pool_list(v11, v4 + 2 * v10);
      }
    }

    goto LABEL_12;
  }

  if (v4 != **a2)
  {
LABEL_12:
    a3[1] = *a3;
    return result;
  }

  return geom::triangulate_by_ear_clipping<double>(result, a3);
}

void geom::fixed_pool_list<unsigned long>::fixed_pool_list(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (a2 != -2)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(a1 + 16, a2 + 2);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<double>::__vallocate[abi:nn200100](a1 + 40, 0xFFFFFFFFFFFFFFFELL);
}

unint64_t *geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::fixed_pool_list(unint64_t *a1, unint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::node,std::allocator<std::allocator>>::vector[abi:nn200100](a1 + 2, a2 + 2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:nn200100]((a1 + 5), a2);
  }

  v4 = a1[2];
  v4[3] = 1;
  v4[9] = 0;
  v5 = 0;
  v6 = vdupq_n_s64(1uLL);
  v7 = xmmword_2500C1680;
  v8 = v4 + 7;
  v9 = vdupq_n_s64(2uLL);
  do
  {
    v10 = vmovn_s64(vcgeq_u64(v6, v7));
    if (v10.i8[0])
    {
      *(v8 - 5) = v5;
    }

    if (v10.i8[4])
    {
      *v8 = v5 + 1;
    }

    v5 += 2;
    v7 = vaddq_s64(v7, v9);
    v8 += 10;
  }

  while (v5 != 2);
  return a1;
}

void *std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::node,std::allocator<std::allocator>>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<geom::fixed_pool_list<geom::fixed_pool_list<unsigned long>::const_node_iterator>::node,std::allocator<std::allocator>>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}