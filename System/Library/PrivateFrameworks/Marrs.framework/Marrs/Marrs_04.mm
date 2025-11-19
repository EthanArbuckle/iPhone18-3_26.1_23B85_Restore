uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(a2 + 312) == 1)
  {
    if (*(result + 312) != 1)
    {
      goto LABEL_63;
    }

    v6 = *(a2 + 152);
    v7 = *(result + 152);
    v8 = *(a2 + 175);
    if (v8 >= 0)
    {
      v9 = *(a2 + 175);
    }

    else
    {
      v9 = *(a2 + 160);
    }

    v10 = *(result + 175);
    if (v10 >= 0)
    {
      v11 = *(result + 175);
    }

    else
    {
      v11 = *(result + 160);
    }

    if (v9 == v11)
    {
      if (v8 >= 0)
      {
        v12 = (a2 + 152);
      }

      else
      {
        v12 = *(a2 + 152);
      }

      if (v10 >= 0)
      {
        v13 = (result + 152);
      }

      else
      {
        v13 = *(result + 152);
      }

      result = memcmp(v12, v13, v9);
      if (!result)
      {
        if (*(a2 + 88) <= *(v5 + 88))
        {
          goto LABEL_18;
        }

        goto LABEL_63;
      }
    }

    else
    {
      if (v10 >= 0)
      {
        v13 = (result + 152);
      }

      else
      {
        v13 = *(result + 152);
      }

      if (v8 >= 0)
      {
        v12 = (a2 + 152);
      }

      else
      {
        v12 = *(a2 + 152);
      }
    }

    if (v9 >= v11)
    {
      v27 = v11;
    }

    else
    {
      v27 = v9;
    }

    result = memcmp(v13, v12, v27);
    v28 = v11 < v9;
    if (result)
    {
      v28 = result < 0;
    }

    if (!v28)
    {
LABEL_18:
      if ((*(a3 + 312) & 1) == 0)
      {
        return result;
      }

      v14 = *(a3 + 152);
      v15 = *(a3 + 175);
      if (v15 >= 0)
      {
        v16 = *(a3 + 175);
      }

      else
      {
        v16 = *(a3 + 160);
      }

      if (v16 == v9)
      {
        if (v15 >= 0)
        {
          v17 = (a3 + 152);
        }

        else
        {
          v17 = *(a3 + 152);
        }

        if (v8 >= 0)
        {
          v18 = (a2 + 152);
        }

        else
        {
          v18 = v6;
        }

        result = memcmp(v17, v18, v9);
        if (!result)
        {
          if (*(a3 + 88) <= *(a2 + 88))
          {
            return result;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v8 >= 0)
        {
          v18 = (a2 + 152);
        }

        else
        {
          v18 = v6;
        }

        if (v15 >= 0)
        {
          v17 = (a3 + 152);
        }

        else
        {
          v17 = *(a3 + 152);
        }
      }

      if (v16 >= v9)
      {
        v54 = v9;
      }

      else
      {
        v54 = v16;
      }

      result = memcmp(v18, v17, v54);
      v55 = v9 < v16;
      if (result)
      {
        v55 = result < 0;
      }

      if (!v55)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_63:
    if (*(a3 + 312) != 1)
    {
      goto LABEL_79;
    }

    v29 = *(a3 + 152);
    v30 = *(a2 + 152);
    v31 = *(a3 + 175);
    if (v31 >= 0)
    {
      v32 = *(a3 + 175);
    }

    else
    {
      v32 = *(a3 + 160);
    }

    v33 = *(a2 + 175);
    if (v33 >= 0)
    {
      v34 = *(a2 + 175);
    }

    else
    {
      v34 = *(a2 + 160);
    }

    if (v32 == v34)
    {
      if (v31 >= 0)
      {
        v35 = (a3 + 152);
      }

      else
      {
        v35 = *(a3 + 152);
      }

      if (v33 >= 0)
      {
        v36 = (a2 + 152);
      }

      else
      {
        v36 = *(a2 + 152);
      }

      if (!memcmp(v35, v36, v32))
      {
        if (*(a3 + 88) <= *(a2 + 88))
        {
          goto LABEL_79;
        }

        goto LABEL_109;
      }
    }

    else
    {
      if (v33 >= 0)
      {
        v36 = (a2 + 152);
      }

      else
      {
        v36 = *(a2 + 152);
      }

      if (v31 >= 0)
      {
        v35 = (a3 + 152);
      }

      else
      {
        v35 = *(a3 + 152);
      }
    }

    if (v32 >= v34)
    {
      v45 = v34;
    }

    else
    {
      v45 = v32;
    }

    v46 = memcmp(v36, v35, v45);
    v47 = v34 < v32;
    if (v46)
    {
      v47 = v46 < 0;
    }

    if (!v47)
    {
LABEL_79:
      result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v5, a2);
      if (*(a3 + 312) != 1)
      {
        return result;
      }

      if (*(a2 + 312) == 1)
      {
        v37 = *(a3 + 152);
        v38 = *(a2 + 152);
        v39 = *(a3 + 175);
        if (v39 >= 0)
        {
          v40 = *(a3 + 175);
        }

        else
        {
          v40 = *(a3 + 160);
        }

        v41 = *(a2 + 175);
        if (v41 >= 0)
        {
          v42 = *(a2 + 175);
        }

        else
        {
          v42 = *(a2 + 160);
        }

        if (v40 == v42)
        {
          if (v39 >= 0)
          {
            v43 = (a3 + 152);
          }

          else
          {
            v43 = *(a3 + 152);
          }

          if (v41 >= 0)
          {
            v44 = (a2 + 152);
          }

          else
          {
            v44 = *(a2 + 152);
          }

          result = memcmp(v43, v44, v40);
          if (!result)
          {
            if (*(a3 + 88) <= *(a2 + 88))
            {
              return result;
            }

            goto LABEL_135;
          }
        }

        else
        {
          if (v41 >= 0)
          {
            v44 = (a2 + 152);
          }

          else
          {
            v44 = *(a2 + 152);
          }

          if (v39 >= 0)
          {
            v43 = (a3 + 152);
          }

          else
          {
            v43 = *(a3 + 152);
          }
        }

        if (v40 >= v42)
        {
          v52 = v42;
        }

        else
        {
          v52 = v40;
        }

        result = memcmp(v44, v43, v52);
        v53 = v42 < v40;
        if (result)
        {
          v53 = result < 0;
        }

        if (!v53)
        {
          return result;
        }
      }

LABEL_135:
      v48 = a2;
      goto LABEL_136;
    }

LABEL_109:
    v48 = v5;
LABEL_136:
    v51 = a3;
    goto LABEL_137;
  }

  if ((*(a3 + 312) & 1) == 0)
  {
    return result;
  }

LABEL_33:
  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a2, a3);
  if (*(a2 + 312) != 1)
  {
    return result;
  }

  if (*(v5 + 312) != 1)
  {
    goto LABEL_122;
  }

  v19 = *(a2 + 152);
  v20 = *(v5 + 152);
  v21 = *(a2 + 175);
  v22 = v21 >= 0 ? *(a2 + 175) : *(a2 + 160);
  v23 = *(v5 + 175);
  v24 = v23 >= 0 ? *(v5 + 175) : *(v5 + 160);
  if (v22 == v24)
  {
    if (v21 >= 0)
    {
      v25 = (a2 + 152);
    }

    else
    {
      v25 = *(a2 + 152);
    }

    if (v23 >= 0)
    {
      v26 = (v5 + 152);
    }

    else
    {
      v26 = *(v5 + 152);
    }

    result = memcmp(v25, v26, v22);
    if (!result)
    {
      if (*(a2 + 88) <= *(v5 + 88))
      {
        return result;
      }

      goto LABEL_122;
    }
  }

  else
  {
    v26 = v23 >= 0 ? (v5 + 152) : *(v5 + 152);
    v25 = v21 >= 0 ? (a2 + 152) : *(a2 + 152);
  }

  if (v22 >= v24)
  {
    v49 = v24;
  }

  else
  {
    v49 = v22;
  }

  result = memcmp(v26, v25, v49);
  v50 = v24 < v22;
  if (result)
  {
    v50 = result < 0;
  }

  if (v50)
  {
LABEL_122:
    v48 = v5;
    v51 = a2;
LABEL_137:

    return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(v48, v51);
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a2, a3);
  if (*(a4 + 312) != 1)
  {
    return result;
  }

  if (*(a3 + 312) == 1)
  {
    v9 = *(a4 + 152);
    v10 = *(a3 + 152);
    v11 = *(a4 + 175);
    if (v11 >= 0)
    {
      v12 = *(a4 + 175);
    }

    else
    {
      v12 = *(a4 + 160);
    }

    v13 = *(a3 + 175);
    if (v13 >= 0)
    {
      v14 = *(a3 + 175);
    }

    else
    {
      v14 = *(a3 + 160);
    }

    if (v12 == v14)
    {
      if (v11 >= 0)
      {
        v15 = (a4 + 152);
      }

      else
      {
        v15 = *(a4 + 152);
      }

      if (v13 >= 0)
      {
        v16 = (a3 + 152);
      }

      else
      {
        v16 = *(a3 + 152);
      }

      result = memcmp(v15, v16, v12);
      if (!result)
      {
        if (*(a4 + 88) <= *(a3 + 88))
        {
          return result;
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (v13 >= 0)
      {
        v16 = (a3 + 152);
      }

      else
      {
        v16 = *(a3 + 152);
      }

      if (v11 >= 0)
      {
        v15 = (a4 + 152);
      }

      else
      {
        v15 = *(a4 + 152);
      }
    }

    if (v12 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v12;
    }

    result = memcmp(v16, v15, v17);
    v18 = v14 < v12;
    if (result)
    {
      v18 = result < 0;
    }

    if (!v18)
    {
      return result;
    }
  }

LABEL_31:
  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a3, a4);
  if (*(a3 + 312) != 1)
  {
    return result;
  }

  if (*(a2 + 312) != 1)
  {
    goto LABEL_61;
  }

  v19 = *(a3 + 152);
  v20 = *(a2 + 152);
  v21 = *(a3 + 175);
  if (v21 >= 0)
  {
    v22 = *(a3 + 175);
  }

  else
  {
    v22 = *(a3 + 160);
  }

  v23 = *(a2 + 175);
  if (v23 >= 0)
  {
    v24 = *(a2 + 175);
  }

  else
  {
    v24 = *(a2 + 160);
  }

  if (v22 != v24)
  {
    if (v23 >= 0)
    {
      v26 = (a2 + 152);
    }

    else
    {
      v26 = *(a2 + 152);
    }

    if (v21 >= 0)
    {
      v25 = (a3 + 152);
    }

    else
    {
      v25 = *(a3 + 152);
    }

LABEL_55:
    if (v22 >= v24)
    {
      v27 = v24;
    }

    else
    {
      v27 = v22;
    }

    result = memcmp(v26, v25, v27);
    v28 = v24 < v22;
    if (result)
    {
      v28 = result < 0;
    }

    if (!v28)
    {
      return result;
    }

    goto LABEL_61;
  }

  if (v21 >= 0)
  {
    v25 = (a3 + 152);
  }

  else
  {
    v25 = *(a3 + 152);
  }

  if (v23 >= 0)
  {
    v26 = (a2 + 152);
  }

  else
  {
    v26 = *(a2 + 152);
  }

  result = memcmp(v25, v26, v22);
  if (result)
  {
    goto LABEL_55;
  }

  if (*(a3 + 88) <= *(a2 + 88))
  {
    return result;
  }

LABEL_61:
  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a2, a3);
  if (*(a2 + 312) != 1)
  {
    return result;
  }

  if (*(a1 + 312) != 1)
  {
    goto LABEL_91;
  }

  v29 = *(a2 + 152);
  v30 = *(a1 + 152);
  v31 = *(a2 + 175);
  v32 = v31 >= 0 ? *(a2 + 175) : *(a2 + 160);
  v33 = *(a1 + 175);
  v34 = v33 >= 0 ? *(a1 + 175) : *(a1 + 160);
  if (v32 == v34)
  {
    if (v31 >= 0)
    {
      v35 = (a2 + 152);
    }

    else
    {
      v35 = *(a2 + 152);
    }

    if (v33 >= 0)
    {
      v36 = (a1 + 152);
    }

    else
    {
      v36 = *(a1 + 152);
    }

    result = memcmp(v35, v36, v32);
    if (!result)
    {
      if (*(a2 + 88) <= *(a1 + 88))
      {
        return result;
      }

      goto LABEL_91;
    }
  }

  else
  {
    v36 = v33 >= 0 ? (a1 + 152) : *(a1 + 152);
    v35 = v31 >= 0 ? (a2 + 152) : *(a2 + 152);
  }

  if (v32 >= v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = v32;
  }

  result = memcmp(v36, v35, v37);
  v38 = v34 < v32;
  if (result)
  {
    v38 = result < 0;
  }

  if (v38)
  {
LABEL_91:

    return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a1, a2);
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a2, a3, a4);
  if (*(a5 + 312) != 1)
  {
    return result;
  }

  if (*(a4 + 312) == 1)
  {
    v11 = *(a5 + 152);
    v12 = *(a4 + 152);
    v13 = *(a5 + 175);
    if (v13 >= 0)
    {
      v14 = *(a5 + 175);
    }

    else
    {
      v14 = *(a5 + 160);
    }

    v15 = *(a4 + 175);
    if (v15 >= 0)
    {
      v16 = *(a4 + 175);
    }

    else
    {
      v16 = *(a4 + 160);
    }

    if (v14 == v16)
    {
      if (v13 >= 0)
      {
        v17 = (a5 + 152);
      }

      else
      {
        v17 = *(a5 + 152);
      }

      if (v15 >= 0)
      {
        v18 = (a4 + 152);
      }

      else
      {
        v18 = *(a4 + 152);
      }

      result = memcmp(v17, v18, v14);
      if (!result)
      {
        if (*(a5 + 88) <= *(a4 + 88))
        {
          return result;
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (v15 >= 0)
      {
        v18 = (a4 + 152);
      }

      else
      {
        v18 = *(a4 + 152);
      }

      if (v13 >= 0)
      {
        v17 = (a5 + 152);
      }

      else
      {
        v17 = *(a5 + 152);
      }
    }

    if (v14 >= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = v14;
    }

    result = memcmp(v18, v17, v19);
    v20 = v16 < v14;
    if (result)
    {
      v20 = result < 0;
    }

    if (!v20)
    {
      return result;
    }
  }

LABEL_31:
  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a4, a5);
  if (*(a4 + 312) != 1)
  {
    return result;
  }

  if (*(a3 + 312) == 1)
  {
    v21 = *(a4 + 152);
    v22 = *(a3 + 152);
    v23 = *(a4 + 175);
    if (v23 >= 0)
    {
      v24 = *(a4 + 175);
    }

    else
    {
      v24 = *(a4 + 160);
    }

    v25 = *(a3 + 175);
    if (v25 >= 0)
    {
      v26 = *(a3 + 175);
    }

    else
    {
      v26 = *(a3 + 160);
    }

    if (v24 == v26)
    {
      if (v23 >= 0)
      {
        v27 = (a4 + 152);
      }

      else
      {
        v27 = *(a4 + 152);
      }

      if (v25 >= 0)
      {
        v28 = (a3 + 152);
      }

      else
      {
        v28 = *(a3 + 152);
      }

      result = memcmp(v27, v28, v24);
      if (!result)
      {
        if (*(a4 + 88) <= *(a3 + 88))
        {
          return result;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (v25 >= 0)
      {
        v28 = (a3 + 152);
      }

      else
      {
        v28 = *(a3 + 152);
      }

      if (v23 >= 0)
      {
        v27 = (a4 + 152);
      }

      else
      {
        v27 = *(a4 + 152);
      }
    }

    if (v24 >= v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = v24;
    }

    result = memcmp(v28, v27, v29);
    v30 = v26 < v24;
    if (result)
    {
      v30 = result < 0;
    }

    if (!v30)
    {
      return result;
    }
  }

LABEL_61:
  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a3, a4);
  if (*(a3 + 312) != 1)
  {
    return result;
  }

  if (*(a2 + 312) != 1)
  {
    goto LABEL_91;
  }

  v31 = *(a3 + 152);
  v32 = *(a2 + 152);
  v33 = *(a3 + 175);
  if (v33 >= 0)
  {
    v34 = *(a3 + 175);
  }

  else
  {
    v34 = *(a3 + 160);
  }

  v35 = *(a2 + 175);
  if (v35 >= 0)
  {
    v36 = *(a2 + 175);
  }

  else
  {
    v36 = *(a2 + 160);
  }

  if (v34 != v36)
  {
    if (v35 >= 0)
    {
      v38 = (a2 + 152);
    }

    else
    {
      v38 = *(a2 + 152);
    }

    if (v33 >= 0)
    {
      v37 = (a3 + 152);
    }

    else
    {
      v37 = *(a3 + 152);
    }

LABEL_85:
    if (v34 >= v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = v34;
    }

    result = memcmp(v38, v37, v39);
    v40 = v36 < v34;
    if (result)
    {
      v40 = result < 0;
    }

    if (!v40)
    {
      return result;
    }

    goto LABEL_91;
  }

  if (v33 >= 0)
  {
    v37 = (a3 + 152);
  }

  else
  {
    v37 = *(a3 + 152);
  }

  if (v35 >= 0)
  {
    v38 = (a2 + 152);
  }

  else
  {
    v38 = *(a2 + 152);
  }

  result = memcmp(v37, v38, v34);
  if (result)
  {
    goto LABEL_85;
  }

  if (*(a3 + 88) <= *(a2 + 88))
  {
    return result;
  }

LABEL_91:
  result = std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a2, a3);
  if (*(a2 + 312) != 1)
  {
    return result;
  }

  if (*(a1 + 312) != 1)
  {
    goto LABEL_121;
  }

  v41 = *(a2 + 152);
  v42 = *(a1 + 152);
  v43 = *(a2 + 175);
  v44 = v43 >= 0 ? *(a2 + 175) : *(a2 + 160);
  v45 = *(a1 + 175);
  v46 = v45 >= 0 ? *(a1 + 175) : *(a1 + 160);
  if (v44 == v46)
  {
    if (v43 >= 0)
    {
      v47 = (a2 + 152);
    }

    else
    {
      v47 = *(a2 + 152);
    }

    if (v45 >= 0)
    {
      v48 = (a1 + 152);
    }

    else
    {
      v48 = *(a1 + 152);
    }

    result = memcmp(v47, v48, v44);
    if (!result)
    {
      if (*(a2 + 88) <= *(a1 + 88))
      {
        return result;
      }

      goto LABEL_121;
    }
  }

  else
  {
    v48 = v45 >= 0 ? (a1 + 152) : *(a1 + 152);
    v47 = v43 >= 0 ? (a2 + 152) : *(a2 + 152);
  }

  if (v44 >= v46)
  {
    v49 = v46;
  }

  else
  {
    v49 = v44;
  }

  result = memcmp(v48, v47, v49);
  v50 = v46 < v44;
  if (result)
  {
    v50 = result < 0;
  }

  if (v50)
  {
LABEL_121:

    return std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a1, a2);
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*>(uint64_t a1, uint64_t a2)
{
  v3 = 0x82FA0BE82FA0BE83 * ((a2 - a1) >> 3);
  v56 = a2;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a2 - 344);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a1 + 688, a2 - 344);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a1 + 688, a1 + 1032, a2 - 344);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      if (*(a2 - 32) != 1)
      {
        return 1;
      }

      if (*(a1 + 312) != 1)
      {
        goto LABEL_129;
      }

      v4 = *(a2 - 192);
      v5 = *(a1 + 152);
      v6 = *(a2 - 169);
      if (v6 >= 0)
      {
        v7 = *(a2 - 169);
      }

      else
      {
        v7 = *(a2 - 184);
      }

      v8 = *(a1 + 175);
      if (v8 >= 0)
      {
        v9 = *(a1 + 175);
      }

      else
      {
        v9 = *(a1 + 160);
      }

      if (v7 == v9)
      {
        if (v6 >= 0)
        {
          v10 = (a2 - 192);
        }

        else
        {
          v10 = *(a2 - 192);
        }

        if (v8 >= 0)
        {
          v11 = (a1 + 152);
        }

        else
        {
          v11 = *(a1 + 152);
        }

        if (!memcmp(v10, v11, v7))
        {
          a2 = v56;
          if (*(v56 - 256) <= *(a1 + 88))
          {
            return 1;
          }

          goto LABEL_129;
        }
      }

      else
      {
        if (v8 >= 0)
        {
          v11 = (a1 + 152);
        }

        else
        {
          v11 = *(a1 + 152);
        }

        if (v6 >= 0)
        {
          v10 = (a2 - 192);
        }

        else
        {
          v10 = *(a2 - 192);
        }
      }

      if (v7 >= v9)
      {
        v52 = v9;
      }

      else
      {
        v52 = v7;
      }

      v53 = memcmp(v11, v10, v52);
      v54 = v9 < v7;
      if (v53)
      {
        v54 = v53 < 0;
      }

      a2 = v56;
      if (!v54)
      {
        return 1;
      }

LABEL_129:
      std::swap[abi:ne200100]<marrs::mrr::mr::MRMatchingResult>(a1, a2 - 344);
      return 1;
    }
  }

  v12 = a1 + 688;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByEntityIdAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,0>(a1, a1 + 344, a1 + 688);
  v13 = v56;
  v14 = a1 + 1032;
  result = 1;
  if (a1 + 1032 == v56)
  {
    return result;
  }

  v16 = 0;
  v55 = 0;
  while (2)
  {
    if (*(v14 + 312) != 1)
    {
      goto LABEL_113;
    }

    if (*(v12 + 312) != 1)
    {
      goto LABEL_59;
    }

    v17 = *(v14 + 152);
    v18 = *(v12 + 152);
    v19 = *(v14 + 175);
    if (v19 >= 0)
    {
      v20 = *(v14 + 175);
    }

    else
    {
      v20 = *(v14 + 160);
    }

    v21 = *(v12 + 175);
    if (v21 >= 0)
    {
      v22 = *(v12 + 175);
    }

    else
    {
      v22 = *(v12 + 160);
    }

    if (v20 != v22)
    {
      if (v21 >= 0)
      {
        v24 = (v12 + 152);
      }

      else
      {
        v24 = *(v12 + 152);
      }

      if (v19 >= 0)
      {
        v23 = (v14 + 152);
      }

      else
      {
        v23 = *(v14 + 152);
      }

LABEL_53:
      if (v20 >= v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = v20;
      }

      v26 = memcmp(v24, v23, v25);
      v27 = v22 < v20;
      if (v26)
      {
        v27 = v26 < 0;
      }

      if (!v27)
      {
LABEL_46:
        v13 = v56;
        goto LABEL_113;
      }

      goto LABEL_59;
    }

    if (v19 >= 0)
    {
      v23 = (v14 + 152);
    }

    else
    {
      v23 = *(v14 + 152);
    }

    if (v21 >= 0)
    {
      v24 = (v12 + 152);
    }

    else
    {
      v24 = *(v12 + 152);
    }

    if (memcmp(v23, v24, v20))
    {
      goto LABEL_53;
    }

    if (*(v14 + 88) <= *(v12 + 88))
    {
      goto LABEL_46;
    }

LABEL_59:
    MEMORY[0x223DC1920](v57, v14);
    v58 = *(v14 + 88);
    LOBYTE(v59) = 0;
    v76 = 0;
    if (*(v14 + 312) == 1)
    {
      v59 = *(v14 + 96);
      v60 = *(v14 + 104);
      v61 = *(v14 + 120);
      *(v14 + 104) = 0;
      *(v14 + 112) = 0;
      v62 = *(v14 + 128);
      v63 = *(v14 + 144);
      *(v14 + 120) = 0;
      *(v14 + 128) = 0;
      *(v14 + 136) = 0;
      *(v14 + 144) = 0;
      v28 = *(v14 + 152);
      v65 = *(v14 + 168);
      v64 = v28;
      *(v14 + 152) = 0;
      *(v14 + 160) = 0;
      *(v14 + 168) = 0;
      v29 = *(v14 + 176);
      *(v66 + 12) = *(v14 + 188);
      v66[0] = v29;
      v67 = *(v14 + 208);
      v68 = *(v14 + 224);
      *(v14 + 208) = 0;
      *(v14 + 216) = 0;
      v30 = *(v14 + 232);
      v70 = *(v14 + 248);
      v69 = v30;
      *(v14 + 224) = 0;
      *(v14 + 232) = 0;
      *(v14 + 240) = 0;
      *(v14 + 248) = 0;
      v71 = *(v14 + 256);
      v31 = *(v14 + 264);
      v73 = *(v14 + 280);
      __p = v31;
      *(v14 + 264) = 0;
      *(v14 + 272) = 0;
      v74 = *(v14 + 288);
      v75 = *(v14 + 304);
      *(v14 + 280) = 0;
      *(v14 + 288) = 0;
      *(v14 + 296) = 0;
      *(v14 + 304) = 0;
      v76 = 1;
    }

    *v77 = *(v14 + 320);
    *&v77[16] = *(v14 + 336);
    *(v14 + 328) = 0;
    *(v14 + 336) = 0;
    *(v14 + 320) = 0;
    for (i = v16; ; i -= 344)
    {
      v33 = a1 + i;
      sirinluinternal::MatchingSpan::operator=();
      *(v33 + 1120) = *(v33 + 776);
      std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v33 + 1128, v33 + 784);
      v34 = *(a1 + i + 1352);
      if (v34)
      {
        *(v33 + 1360) = v34;
        operator delete(v34);
        *(v33 + 1368) = 0;
      }

      *(v33 + 1352) = *(v33 + 1008);
      *(v33 + 1368) = *(v33 + 1024);
      *(v33 + 1008) = 0;
      *(v33 + 1016) = 0;
      *(v33 + 1024) = 0;
      if (i == -688)
      {
        v12 = a1;
LABEL_97:
        v48 = a1 + i;
        goto LABEL_99;
      }

      if (v76 != 1)
      {
        break;
      }

      v35 = a1 + i;
      if (*(a1 + i + 656) != 1)
      {
        goto LABEL_95;
      }

      v36 = (v35 + 496);
      if (v65 >= 0)
      {
        v37 = HIBYTE(v65);
      }

      else
      {
        v37 = *(&v64 + 1);
      }

      v38 = *(v35 + 519);
      v41 = v35 + 496;
      v39 = *(v35 + 496);
      v40 = *(v41 + 8);
      if ((v38 & 0x80u) == 0)
      {
        v42 = v38;
      }

      else
      {
        v42 = v40;
      }

      if (v37 == v42)
      {
        if (v65 >= 0)
        {
          v43 = &v64;
        }

        else
        {
          v43 = v64;
        }

        if ((v38 & 0x80u) == 0)
        {
          v44 = v36;
        }

        else
        {
          v44 = v39;
        }

        if (!memcmp(v43, v44, v37))
        {
          if (v58 <= *(a1 + i + 432))
          {
            goto LABEL_97;
          }

          goto LABEL_95;
        }
      }

      else
      {
        if ((v38 & 0x80u) == 0)
        {
          v44 = v36;
        }

        else
        {
          v44 = v39;
        }

        if (v65 >= 0)
        {
          v43 = &v64;
        }

        else
        {
          v43 = v64;
        }
      }

      if (v37 >= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v37;
      }

      v46 = memcmp(v44, v43, v45);
      v47 = v42 < v37;
      if (v46)
      {
        v47 = v46 < 0;
      }

      if (!v47)
      {
        goto LABEL_97;
      }

LABEL_95:
      v12 -= 344;
    }

    v48 = a1 + i;
    v12 = a1 + i + 688;
LABEL_99:
    v49 = v48 + 1008;
    v50 = v48 + 784;
    sirinluinternal::MatchingSpan::operator=();
    *(v12 + 88) = v58;
    std::__optional_storage_base<marrs::mrr::mr::MRREntity,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<marrs::mrr::mr::MRREntity,false>>(v50, &v59);
    v51 = *v49;
    if (*v49)
    {
      *(v12 + 328) = v51;
      operator delete(v51);
      *v49 = 0;
      *(v49 + 8) = 0;
      *(v49 + 16) = 0;
    }

    *v49 = *v77;
    *(v12 + 328) = *&v77[8];
    memset(v77, 0, sizeof(v77));
    if (v76 == 1)
    {
      v78[0] = &v74;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v78);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v70) < 0)
      {
        operator delete(v69);
      }

      v78[0] = &v67;
      std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v78);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }
    }

    MEMORY[0x223DC1950](v57);
    ++v55;
    v13 = v56;
    if (v55 != 8)
    {
LABEL_113:
      v12 = v14;
      v16 += 344;
      v14 += 344;
      if (v14 == v13)
      {
        return 1;
      }

      continue;
    }

    return v14 + 344 == v56;
  }
}

void marrs::mrr::mr::MRMatchingResult::toMatchingSpan(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v85 = *MEMORY[0x277D85DE8];
  v8 = *(MEMORY[0x223DC1930]() + 40);
  if (!v8)
  {
    sirinluinternal::MatchingSpan::makeInternalSpanData(a1);
    v8 = *(a1 + 40);
  }

  MentionResolverSpanData = sirinluinternal::InternalSpanData::makeMentionResolverSpanData(v8);
  v10 = *(*(a1 + 40) + 16);
  v11 = *(a2 + 88);
  *(v10 + 24) |= 2u;
  *(v10 + 16) = v11;
  v12 = *(*(a1 + 40) + 16);
  v13 = *(a2 + 88);
  *(v12 + 24) |= 1u;
  *(v12 + 8) = v13;
  if (*(a2 + 312) == 1 && (v14 = *(a2 + 16), *(a2 + 8) != v14) && *(v14 - 4) == 6)
  {
    if (*(*(*a3 + 8 * *(a2 + 200)) + 40))
    {
      operator new();
    }

    v15 = *(a2 + 96);
  }

  else
  {
    v15 = 30;
  }

  v16 = *(a2 + 320);
  v17 = *(a2 + 328);
  if (v16 != v17)
  {
    while (*v16 != 3)
    {
      if (++v16 == v17)
      {
        goto LABEL_20;
      }
    }
  }

  if (v16 != v17)
  {
    v18 = MEMORY[0x223DC18F0](&__p, *(a1 + 64));
    v19 = siri::ontology::oname::graph::ontology_init::Argument_entity(v18);
    USONodeIndex = marrs::mrr::mr::findUSONodeIndex(v77, v78, -1, *(v19 + 36));
    if (USONodeIndex == -1)
    {
      v22 = MRRLoggerForCategory(2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_2227A9000, v22, OS_LOG_TYPE_DEBUG, "Could not find entity node in csm's uso graph to extract span label", buf, 2u);
      }
    }

    else
    {
      v21 = USONodeIndex;
      marrs::mrr::mr::getEntityDescendants(buf, &__p, USONodeIndex);
      if (v21 >= ((v81 - v80) >> 3))
      {
        std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = marrs::mrr::mr::mapNodeIdToMRREntityType(*(*(v80 + 8 * v21) + 72), &__p, buf);
      std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(buf);
    }

    MentionResolverSpanData = MEMORY[0x223DC1900](&__p);
  }

LABEL_20:
  v23 = *(a1 + 48);
  if (v23)
  {
    if ((*(v23 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v23 + 8))
      {
        goto LABEL_35;
      }
    }

    else if (*(v23 + 23))
    {
      goto LABEL_35;
    }
  }

  v24 = qword_280AC2AF0;
  if (!qword_280AC2AF0)
  {
    goto LABEL_32;
  }

  v25 = &qword_280AC2AF0;
  do
  {
    if (*(v24 + 32) >= v15)
    {
      v25 = v24;
    }

    v24 = *(v24 + 8 * (*(v24 + 32) < v15));
  }

  while (v24);
  if (v25 != &qword_280AC2AF0 && v15 >= *(v25 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v25[5]);
    sirinluinternal::MatchingSpan::label(a1, &__p);
  }

  else
  {
LABEL_32:
    std::string::basic_string[abi:ne200100]<0>(&__p, "undefined");
    sirinluinternal::MatchingSpan::label(a1, &__p);
  }

  if (v76 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

LABEL_35:
  v26 = *(a1 + 64);
  if (v26 && *(v26 + 8) == *(v26 + 16))
  {
    v27 = *(a1 + 76);
    v28 = *(*a4 + 24);
    v29 = (*(*a4 + 32) - v28) >> 3;
    if (v29 > v27)
    {
      v30 = (*(a1 + 72) - 1);
      if (v29 > v30)
      {
        v31 = *(*(v28 + 8 * v27) + 72);
        v32 = *(*(v28 + 8 * v30) + 76);
        sirinluexternal::UtteranceSpan::UtteranceSpan(buf);
        v74 |= 9u;
        HIDWORD(v73) = v31;
        *&buf[8] = v32;
        sirinluexternal::UtteranceAlignment::UtteranceAlignment(&__p);
        LOBYTE(v78) = v78 | 2;
        HIDWORD(v77) = 0;
        operator new();
      }

      std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = *(a1 + 16);
  v33 = *(a1 + 24);
  if (v34 >= v33)
  {
    v36 = *(a1 + 8);
    v37 = v34 - v36;
    v38 = (v34 - v36) >> 2;
    v39 = v38 + 1;
    if ((v38 + 1) >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v40 = v33 - v36;
    if (v40 >> 1 > v39)
    {
      v39 = v40 >> 1;
    }

    if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v41 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v39;
    }

    if (v41)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v41);
    }

    v42 = (v34 - v36) >> 2;
    v43 = (4 * v38);
    v44 = (4 * v38 - 4 * v42);
    *v43 = 7;
    v35 = v43 + 1;
    memcpy(v44, v36, v37);
    MentionResolverSpanData = *(a1 + 8);
    *(a1 + 8) = v44;
    *(a1 + 16) = v35;
    *(a1 + 24) = 0;
    if (MentionResolverSpanData)
    {
      operator delete(MentionResolverSpanData);
    }
  }

  else
  {
    *v34 = 7;
    v35 = v34 + 4;
  }

  *(a1 + 16) = v35;
  v45 = *(a1 + 64);
  if (v45)
  {
    v46 = *(a1 + 76);
    v47 = *(*a4 + 24);
    v48 = (*(*a4 + 32) - v47) >> 3;
    if (v48 <= v46)
    {
      std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
    }

    v49 = (*(a1 + 72) - 1);
    if (v48 <= v49)
    {
      std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
    }

    v50 = *(*(v47 + 8 * v46) + 72);
    v51 = *(*(v47 + 8 * v49) + 76);
    v52 = *(v45 + 104);
    if (v52 == *(v45 + 112))
    {
      v56 = sirinluexternal::UsoEntitySpan::UsoEntitySpan(&__p);
      v57 = *(a1 + 64);
      v58 = siri::ontology::oname::graph::ontology_init::Argument_entity(v56);
      v59 = marrs::mrr::mr::findUSONodeIndex(*(v57 + 32), *(v57 + 40), -1, *(v58 + 36));
      v84 |= 1u;
      v83 = v59;
      sirinluexternal::UsoEntitySpan::makeOriginAppId(&__p);
      v60 = v79;
      std::string::basic_string[abi:ne200100]<0>(buf, "MarrsReferenceResolution");
      siricommon::StringValue::makeValue(v60);
      v61 = *(v60 + 8);
      if (*(v61 + 23) < 0)
      {
        operator delete(*v61);
      }

      v62 = *buf;
      *(v61 + 16) = v73;
      *v61 = v62;
      sirinluexternal::UsoEntitySpan::makeStartIndex(&__p);
      v63 = v82;
      *(v82 + 12) |= 1u;
      *(v63 + 8) = v50;
      sirinluexternal::UsoEntitySpan::makeEndIndex(&__p);
      v64 = v77;
      *(v77 + 12) |= 1u;
      *(v64 + 2) = v51;
      v65 = *(a1 + 64);
      operator new();
    }

    v53 = *v52;
    if (!*(*v52 + 13) && !*(v53 + 4))
    {
      sirinluexternal::UsoEntitySpan::makeStartIndex(*v52);
      v54 = *(v53 + 13);
      *(v54 + 12) |= 1u;
      *(v54 + 8) = v50;
      MentionResolverSpanData = sirinluexternal::UsoEntitySpan::makeEndIndex(v53);
      v55 = *(v53 + 4);
      *(v55 + 12) |= 1u;
      *(v55 + 8) = v51;
    }
  }

  v66 = *(a2 + 320);
  if ((*v66 | 2) == 2 && v66 != *(a2 + 328))
  {
    v67 = *(a1 + 64);
    if (v67)
    {
      v68 = siri::ontology::oname::graph::ontology_init::Argument_entity(MentionResolverSpanData);
      v69 = marrs::mrr::mr::findUSONodeIndex(*(v67 + 32), *(v67 + 40), -1, *(v68 + 36));
      v70 = MRRLoggerForCategory(2);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        __p.n128_u32[0] = 67109120;
        __p.n128_u32[1] = v69;
        _os_log_impl(&dword_2227A9000, v70, OS_LOG_TYPE_DEBUG, "** found node index: %u", &__p, 8u);
      }

      sirinluexternal::UsoEntityIdentifier::UsoEntityIdentifier(&__p);
      sirinluexternal::UsoEntityIdentifier::makeNamespaceA(&__p);
      operator new();
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

void sub_2227F9D0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v30)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x2227F9E54);
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

void sub_2227F9DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(va);
  JUMPOUT(0x2227F9DBCLL);
}

void sub_2227F9DC8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v21 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      a21 = 0;
      _os_log_impl(&dword_2227A9000, v21, OS_LOG_TYPE_DEBUG, "Mention token indices out of bounds in token chain, skipping UsoEntitySpan index update", &a21, 2u);
    }

    __cxa_end_catch();
    JUMPOUT(0x2227F961CLL);
  }

  JUMPOUT(0x2227F9E54);
}

void sub_2227F9E3C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x2227F9E5CLL);
}

uint64_t siricommon::StringValue::makeValue(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

__n128 sirinluinternal::MatchingSpan::label(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    operator new();
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  result = *a2;
  *(v3 + 16) = a2[1].n128_u64[0];
  *v3 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  JUMPOUT(0x223DC2360);
}

__n128 sirinluexternal::UsoEntityIdentifier::value(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    operator new();
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  result = *a2;
  *(v3 + 16) = a2[1].n128_u64[0];
  *v3 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

__n128 sirinluexternal::UsoEntityIdentifier::backingAppBundleId(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    operator new();
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  result = *a2;
  *(v3 + 16) = a2[1].n128_u64[0];
  *v3 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

os_log_t ___ZN5marrs2qr13orchestration14SignpostsUtils20createCcqrAerContextEv_block_invoke()
{
  result = os_log_create("com.apple.siri.marrs.QueryRewrite.CCQRAer", "CCQRAerProfiler");
  marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::ccqrAerLogContext = result;
  return result;
}

os_log_t ___ZN5marrs2qr13orchestration14SignpostsUtils15createRdContextEv_block_invoke()
{
  result = os_log_create("com.apple.siri.marrs.QueryRewrite.RepetitionDetector", "RdProfiler");
  marrs::qr::orchestration::SignpostsUtils::createRdContext(void)::rdLogContext = result;
  return result;
}

void marrs::mrr::mr::GazeBasedFilter::~GazeBasedFilter(void **this)
{
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);

  JUMPOUT(0x223DC2360);
}

void marrs::mrr::mr::GazeBasedFilter::filterEntities(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  marrs::mrr::mr::enumerateAllIndices(&v22, *a1, a1[1]);
  marrs::mrr::mr::pickTopSalientEntity(&__p, a1, v22, v23);
  v18 = a2;
  v4 = __p;
  v5 = v21;
  if (__p == v21)
  {
    v19 = 0u;
  }

  else
  {
    v6 = 0;
    v19 = 0u;
    do
    {
      if (*(*a1 + 216 * *v4 + 4) == 4)
      {
        v7 = v6 - v19;
        v8 = (v6 - v19) >> 3;
        v9 = v8 + 1;
        if ((v8 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        if (-v19 >> 2 > v9)
        {
          v9 = -v19 >> 2;
        }

        if (-v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v10);
        }

        v11 = v8;
        v12 = (8 * v8);
        v13 = &v12[-v11];
        *v12 = *v4;
        v6 = v12 + 1;
        memcpy(v13, v19, v7);
        if (v19)
        {
          operator delete(v19);
        }

        *&v14 = v13;
        *(&v14 + 1) = v6;
        v19 = v14;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v15 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v25 = (v21 - __p) >> 3;
    _os_log_impl(&dword_2227A9000, v15, OS_LOG_TYPE_INFO, "[GazeBasedFilter] selected %lu most salient entities", buf, 0xCu);
  }

  v16 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v25 = (*(&v19 + 1) - v19) >> 3;
    _os_log_impl(&dword_2227A9000, v16, OS_LOG_TYPE_INFO, "[GazeBasedFilter] selected %lu most salient visual entities", buf, 0xCu);
  }

  *v18 = v19;
  *(v18 + 16) = 0;
  *(v18 + 24) = 1;
  if (__p)
  {
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2227FA6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (a11)
  {
    operator delete(a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __QRLoggerForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.siri.marrs.QueryRewrite", "QueryRewrite");
  v1 = QRLoggerForCategory::logObjects[0];
  QRLoggerForCategory::logObjects[0] = v0;

  v2 = os_log_create("com.apple.siri.marrs.QueryRewrite", "RD");
  v3 = qword_27D01B8C0;
  qword_27D01B8C0 = v2;

  qword_27D01B8C8 = os_log_create("com.apple.siri.marrs.QueryRewrite", "CCQR");

  return MEMORY[0x2821F96F8]();
}

uint64_t CcqrOrchestrator::validate(CcqrOrchestrator *this, const QRRequest *a2)
{
  v11 = &unk_2835DF370;
  v12 = 0;
  if (!marrs::qr::orchestration::InputCheckerUtil::utteranceCheckerHelper(a2->var1.var0, a2->var1.var1, 0))
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "Received empty ASR utterance / tokens in QRRequest.interactions");
    std::string::basic_string[abi:ne200100]<0>(v10, "QueryRewrite");
    IOContentError::IOContentError(exception, &v11, v10, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/orchestration/CcqrOrchestrator.cpp", 165);
  }

  v11 = &unk_2835DF3D0;
  v12 = 0;
  v3 = marrs::qr::orchestration::PreviousNLUtteranceChecker::verify(&v11, a2);
  if ((v3 & 1) == 0)
  {
    v7 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "Received empty inputs in QRRequest.prevQRUtterances");
    std::string::basic_string[abi:ne200100]<0>(v10, "QueryRewrite");
    IOContentError::IOContentError(v7, &v11, v10, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/orchestration/CcqrOrchestrator.cpp", 168);
  }

  var1 = a2->var1.var1;
  if (a2->var1.var0 != var1 && var1[-1].var1.var1 != var1[-1].var1.var2)
  {
    v9 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "Received non-empty SiriResponse for current turn in QRRequest.interactions");
    std::string::basic_string[abi:ne200100]<0>(v10, "QueryRewrite");
    IOContentError::IOContentError(v9, &v11, v10, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/orchestration/CcqrOrchestrator.cpp", 172);
  }

  v11 = &unk_2835DF3A0;
  v12 = 0;
  if ((marrs::qr::orchestration::AsrConfidenceChecker::verify(v3, a2) & 1) == 0)
  {
    v8 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&v11, "Invalid ASR confidence score in turn inputs");
    std::string::basic_string[abi:ne200100]<0>(v10, "QueryRewrite");
    IOContentError::IOContentError(v8, &v11, v10, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/orchestration/CcqrOrchestrator.cpp", 175);
  }

  return 1;
}

void sub_2227FAA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

void CcqrOrchestrator::~CcqrOrchestrator(CcqrOrchestrator *this)
{
  CcqrOrchestrator::~CcqrOrchestrator(this);

  JUMPOUT(0x223DC2360);
}

{
  *this = &unk_2835DF238;
  std::unique_ptr<JointCCQRModule>::reset[abi:ne200100](this + 34, 0);
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  v2 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(this + 80);
  v2 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(this + 8);
}

marrs::inference_engine::EspressoModule *std::unique_ptr<JointCCQRModule>::reset[abi:ne200100](marrs::inference_engine::EspressoModule **a1, marrs::inference_engine::EspressoModule *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    marrs::inference_engine::EspressoModule::~EspressoModule(result);

    JUMPOUT(0x223DC2360);
  }

  return result;
}

void CcqrOrchestrator::predict(CcqrOrchestrator *this@<X0>, const QRRequest *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = *MEMORY[0x277D85DE8];
  (*(*this + 24))(this);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  v32 = a3;
  *(a3 + 56) = 4;
  var0 = a2->var1.var0;
  var1 = a2->var1.var1;
  v34 = a2;
  v7 = QRLoggerForCategory(2);
  v8 = 0x6DB6DB6DB6DB6DB7 * ((var1 - var0) >> 4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "predict";
    *&buf[12] = 2048;
    *&buf[14] = v8;
    _os_log_debug_impl(&dword_2227A9000, v7, OS_LOG_TYPE_DEBUG, "%s Number of input turns: %zu", buf, 0x16u);
  }

  if (v8 > 1)
  {
    v10 = QRLoggerForCategory(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "predict";
      *&buf[12] = 2048;
      *&buf[14] = v8;
      _os_log_debug_impl(&dword_2227A9000, v10, OS_LOG_TYPE_DEBUG, "%s Processing request with %zu turns", buf, 0x16u);
    }

    v11 = QRLoggerForCategory(2);
    spid = os_signpost_id_generate(v11);
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PreProcessDuration", "CCQR PreProcessing duration", buf, 2u);
    }

    v54 = 0;
    v55 = 0;
    v56 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    memset(v50, 0, sizeof(v50));
    v47 = 0;
    v48 = 0;
    v49 = 0;
    std::unordered_map<std::string,unsigned long>::unordered_map(v38, this + 80);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v42, *(this + 15), *(this + 16), 0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - *(this + 15)) >> 3));
    v45 = *(this + 144);
    v46 = 1;
    v12 = *(this + 39);
    v36 = *(this + 152);
    v13 = *(this + 22);
    v35 = *(this + 21);
    memset(&v72, 0, sizeof(v72));
    v70 = 0;
    __src = 0;
    v71 = 0;
    v61[1] = 0;
    v61[0] = 0;
    v62 = 0;
    v14 = v34->var1.var0;
    v15 = v34->var1.var1 - v14;
    if (v15)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * (v15 >> 4);
      v17 = v12 + v12 * *(this + 155) + 1;
      if (v17 <= v13)
      {
        v18 = v13 / v17 - 1;
      }

      else
      {
        v18 = 0;
      }

      marrs::qr::processing::filterTokens(&v59, (*(&v14[-1] + 14 * v16 - 2) + 40), v18);
      std::vector<marrs::qr::orchestration::QRToken>::__insert_with_size[abi:ne200100]<std::__wrap_iter<marrs::qr::orchestration::QRToken*>,std::__wrap_iter<marrs::qr::orchestration::QRToken*>>(&v72, v72.__r_.__value_.__l.__size_, v59, v60, 0xCCCCCCCCCCCCCCCDLL * ((v60 - v59) >> 5));
      std::string::basic_string[abi:ne200100]<0>(v37, "[EOS]");
      std::string::basic_string[abi:ne200100]<0>(v58, "[EOS]");
      std::string::basic_string[abi:ne200100]<0>(v57, "[EOS]");
      memset(&v57[3], 0, 24);
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>();
    }

    *v67 = 0u;
    *v68 = 0u;
    v65 = 0u;
    *v66 = 0u;
    *__str = 0u;
    *__sz = 0u;
    *buf = v61;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (__src)
    {
      v70 = __src;
      operator delete(__src);
    }

    *buf = &v72;
    std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](buf);
    std::vector<marrs::qr::orchestration::QRToken>::__assign_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v54, __str[0], __str[1], 0xCCCCCCCCCCCCCCCDLL * ((__str[1] - __str[0]) >> 5));
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v51, __sz[1], v65, (v65 - __sz[1]) >> 3);
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v50, v66[0], v66[1], 0xAAAAAAAAAAAAAAABLL * ((v66[1] - v66[0]) >> 3));
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(&v47, v67[1], *v68, 0xAAAAAAAAAAAAAAABLL * ((*v68 - v67[1]) >> 3));
    *buf = &v67[1];
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v66;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (__sz[1])
    {
      *&v65 = __sz[1];
      operator delete(__sz[1]);
    }

    *buf = __str;
    std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v46 == 1)
    {
      *buf = &v42;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
      std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(v39);
      v19 = v38[0];
      v38[0] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    v20 = QRLoggerForCategory(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "predict";
      *&buf[12] = 2048;
      *&buf[14] = 0xCCCCCCCCCCCCCCCDLL * ((v55 - v54) >> 5);
      *&buf[22] = 2048;
      *&buf[24] = (v52 - v51) >> 3;
      _os_log_debug_impl(&dword_2227A9000, v20, OS_LOG_TYPE_DEBUG, "%s Finished preprocessing. inputToken size: %lu, tokenIndices size: %lu", buf, 0x20u);
    }

    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, v11, OS_SIGNPOST_INTERVAL_END, spid, "PreProcessDuration", " enableTelemetry=YES ", buf, 2u);
    }

    v21 = os_signpost_id_generate(v11);
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v21, "ForwardDuration", "CCQR Inference duration", buf, 2u);
    }

    v38[0] = 0;
    v38[1] = 0;
    v39 = 0;
    v22 = (v52 - v51) >> 3;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v38, v51, v52, v22);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    std::vector<std::vector<unsigned long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(&v40, v47, v48, 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3));
    v43 = *(this + 27);
    v44 = vrev64_s32(*(this + 224));
    v23 = QRLoggerForCategory(2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(this + 27);
      v28 = *(this + 57);
      v29 = *(this + 56);
      *buf = 136316418;
      *&buf[4] = "predict";
      *&buf[12] = 2048;
      *&buf[14] = v22;
      *&buf[22] = 2048;
      *&buf[24] = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3);
      *v74 = 2048;
      *&v74[2] = v27;
      v75 = 2048;
      v76 = v28;
      v77 = 2048;
      v78 = v29;
      _os_log_debug_impl(&dword_2227A9000, v23, OS_LOG_TYPE_DEBUG, "%s Model inference input metadata: tokenIndices size: %lu, charIndices size: %lu, numDecoderSteps: %zu, aerDecisionThreshold: %.2f, cbrDecisionThreshold: %.2f", buf, 0x3Eu);
    }

    v24 = *(this + 34);
    *buf = xmmword_2784B4FE8;
    *&buf[16] = *off_2784B4FF8;
    *v74 = "cbr_threshold";
    if (-1431655765 * ((v41 - v40) >> 3))
    {
      v25 = (v40[1] - *v40) >> 3;
      LODWORD(v72.__r_.__value_.__l.__data_) = -1431655765 * ((v41 - v40) >> 3);
      HIDWORD(v72.__r_.__value_.__r.__words[0]) = v25;
      v72.__r_.__value_.__l.__size_ = 0x100000001;
      LODWORD(v72.__r_.__value_.__r.__words[2]) = 1;
      __sz[0] = 0;
      __str[0] = 0;
      __str[1] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>();
    }

    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(__str, "Expect column size to be greater than zero for paddedTokenCharIndices");
    std::string::basic_string[abi:ne200100]<0>(&v72, "QueryRewrite");
    InferenceError::InferenceError(exception, __str, &v72, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/inference_engine/espresso_joint_ccqr_module.cpp", 73);
    *exception = &unk_2835DF6C0;
  }

  v9 = QRLoggerForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "predict";
    _os_log_debug_impl(&dword_2227A9000, v9, OS_LOG_TYPE_DEBUG, "%s Rule-based classifier returned", buf, 0xCu);
  }

  *(v32 + 56) = 3;
  v26 = *MEMORY[0x277D85DE8];
}

void sub_2227FD6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, char a51)
{
  std::__split_buffer<marrs::qr::orchestration::QRHypothesis>::~__split_buffer(&STACK[0x2E0]);
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  STACK[0x220] = &STACK[0x2B0];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&a25);
  JointCCQRModuleInput::~JointCCQRModuleInput(&a32);
  a32 = &a42;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a32);
  a32 = &a45;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a32);
  if (a48)
  {
    operator delete(a48);
  }

  a32 = &a51;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a32);
  a32 = a17;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

uint64_t std::tuple<std::vector<marrs::qr::orchestration::QRToken>,std::vector<unsigned long>,std::vector<std::vector<unsigned long>>,std::vector<std::vector<unsigned long>>>::~tuple(uint64_t a1)
{
  v4 = (a1 + 72);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 48);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

uint64_t std::vector<std::vector<unsigned long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227FE03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void JointCCQRModuleInput::~JointCCQRModuleInput(JointCCQRModuleInput *this)
{
  v3 = (this + 24);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
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
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2227FE324(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x223DC2270](v1);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x223DC20E0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x223DC20F0](v20);
  return a1;
}

void sub_2227FE5F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223DC20F0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2227FE5C8);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x223DC2220](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2227FE708(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void RepetitionDetectionUtil::getIndices(void *a1, uint64_t *a2, int *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = *v9;
      if (!*v9)
      {
        v11 = v6;
        v12 = v6 >> 2;
        if ((v12 + 1) >> 62)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        if (v12 != -1)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v12 + 1);
        }

        MEMORY[0xFFFFFFFFFFFFFFFC] = v8 + 1;
        v6 = 0;
        memcpy(0, 0, v11);
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        v9 = a3;
        a1[1] = 0;
        v3 = *a2;
        v10 = *a3;
      }

      v8 += (*(v3 + v5 + 8) - *(v3 + v5)) >> 2;
      if (v10 == 1)
      {
        v13 = v6;
        v14 = v6 >> 2;
        if (((v6 >> 2) + 1) >> 62)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        if (v6 >> 2 != -1)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>((v6 >> 2) + 1);
        }

        *(4 * v14) = v8;
        v6 = 4 * v14 + 4;
        memcpy(0, 0, v13);
        *a1 = 0;
        a1[1] = v6;
        a1[2] = 0;
        v9 = a3;
        a1[1] = v6;
        v3 = *a2;
      }

      ++v7;
      v5 += 24;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v3) >> 3));
  }

  v15 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v20 = "getIndices";
    _os_log_debug_impl(&dword_2227A9000, v15, OS_LOG_TYPE_DEBUG, "%s Indices fetching complete", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2227FEA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
    *(a9 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *(v4 - 3);
        v4 -= 24;
        v6 = v7;
        if (v7)
        {
          operator delete(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void RepetitionDetectionUtil::constructUtterance(std::string *this, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v3 + v5;
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = *(v7 + 8);
      }

      std::string::append(this, v9, v10);
      v3 = *a2;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      if (v6 < v11 - 1)
      {
        std::string::append(this, " ");
        v3 = *a2;
        v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      }

      ++v6;
      v5 += 24;
    }

    while (v6 < v11);
  }

  v12 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "constructUtterance";
    _os_log_debug_impl(&dword_2227A9000, v12, OS_LOG_TYPE_DEBUG, "%s Utterance construction completed", &v14, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2227FEC0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2227FFD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_2227FFFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_222800DA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::exception_ptr a18, uint64_t a19, uint64_t a20, __int16 buf)
{
  v24 = a20;
  a20 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  MEMORY[0x223DC1A50](&buf);
  v25 = *(v22 - 88);
  *(v22 - 88) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  __cxa_begin_catch(a1);
  v26 = MRRLoggerForCategory(1);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    buf = 0;
    _os_log_impl(&dword_2227A9000, v26, OS_LOG_TYPE_ERROR, "Exception encountered when running detectMentionsInUtteranceImpl", &buf, 2u);
  }

  std::current_exception();
  [PredictorUtils handlePredictException:&a18];
  std::exception_ptr::~exception_ptr(&a18);
  __cxa_end_catch();
  JUMPOUT(0x222800C24);
}

void sub_222800FC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::exception_ptr a18)
{
  std::exception_ptr::~exception_ptr(&a18);
  __cxa_end_catch();
  JUMPOUT(0x222800FE4);
}

void sub_222802684(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, marrs::inference_engine::EspressoModule **a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::exception_ptr a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t buf, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::destroy(*a11);
    MDConfig::~MDConfig(a15);
    marrs::mrr::md::inference_engine::EspressoMentionDetectorModel::~EspressoMentionDetectorModel(a14);
    *a16 = a9;
    if (*(a16 + 31) < 0)
    {
      operator delete(*a10);
    }

    if (a40 < 0)
    {
      operator delete(__p);
    }

    MEMORY[0x223DC2360](a16, 0x10B3C409358F699);
    __cxa_begin_catch(a1);
    std::current_exception();
    std::exception_ptr::exception_ptr(&a31, &a71);
    [PredictorUtils handleInitException:&a31];
    std::exception_ptr::~exception_ptr(&a31);
    std::exception_ptr::~exception_ptr(&a71);
    __cxa_end_catch();
    JUMPOUT(0x222802400);
  }

  _Unwind_Resume(a1);
}

void sub_2228032A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  _Block_object_dispose((v15 - 152), 8);

  _Unwind_Resume(a1);
}

void sub_222803710(_Unwind_Exception *a1)
{
  _Block_object_dispose((v6 - 144), 8);

  _Unwind_Resume(a1);
}

void sub_222803BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  _Block_object_dispose((v14 - 152), 8);

  _Unwind_Resume(a1);
}

void sub_22280400C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_22280447C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

void sub_2228047D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_222804B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

void sub_222804EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_2228073B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, marrs::mrr::mr::MRFilterInterface *a9, marrs::mrr::mr::MRFilterInterface *a10, uint64_t a11, uint64_t a12, marrs::mrr::mr::ModelBasedMR *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id obj, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::exception_ptr a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, __int128 buf, uint64_t a57, uint64_t a58, void **a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a2)
  {
    if (a45 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(a1);
    v65 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      std::__fs::filesystem::operator/[abi:ne200100](&a59, &a37, &marrs::mrr::mr::keywordFilename);
      if (a64 >= 0)
      {
        v66 = &a59;
      }

      else
      {
        v66 = a59;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v66;
      _os_log_impl(&dword_2227A9000, v65, OS_LOG_TYPE_DEBUG, "[UtteranceKeywordFilter] Error parsing keyword asset at %s, This filter will be skipped.", &buf, 0xCu);
      if (a64 < 0)
      {
        operator delete(a59);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x222806F68);
  }

  _Unwind_Resume(a1);
}

void std::basic_string<char16_t>::reserve(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __requested_capacity)
{
  if (__requested_capacity >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  LODWORD(v3) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v3 & 0x80000000) != 0)
  {
    v5 = this->__r_.__value_.__r.__words[2];
    v4 = (v5 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v3 = HIBYTE(v5);
  }

  else
  {
    v4 = 10;
  }

  if (v4 < __requested_capacity)
  {
    v6 = __requested_capacity | 3;
    if ((__requested_capacity | 3) == 0xB)
    {
      v6 = 12;
    }

    if (__requested_capacity <= 0xA)
    {
      v7 = 10;
    }

    else
    {
      v7 = v6;
    }

    if ((v3 & 0x80) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v10 = this->__r_.__value_.__r.__words[2];
      v9 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v3 = HIBYTE(v10);
    }

    else
    {
      LOBYTE(size) = v3;
      v9 = 10;
    }

    v11 = v7 < 0xB;
    if (v7 >= 0xB)
    {
      if (v9 < v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v7 + 1);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v7 + 1);
    }

    v12 = this->__r_.__value_.__r.__words[0];
    if ((v3 & 0x80) != 0)
    {
      v3 = this->__r_.__value_.__l.__size_;
      v11 = 1;
    }

    else
    {
      v3 = v3;
    }

    v13 = __CFADD__(v3, 1);
    v14 = v3 + 1;
    if (!v13)
    {
      memmove(this, v12, 2 * v14);
    }

    if (v11)
    {
      operator delete(v12);
    }

    *(&this->__r_.__value_.__s + 23) = size & 0x7F;
  }
}

void sub_222807AEC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n)
{
  v5 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v5 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v9 = this->__r_.__value_.__r.__words[2];
    v7 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v6 = v9 >> 63;
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 10;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v7 - size < __n)
  {
    if (0x7FFFFFFFFFFFFFF6 - v7 >= __n - v7 + size)
    {
      if (v6)
      {
        v10 = this->__r_.__value_.__r.__words[0];
      }

      if (v7 > 0x3FFFFFFFFFFFFFF2)
      {
        v13 = 0x7FFFFFFFFFFFFFF7;
      }

      else
      {
        v11 = size + __n;
        if (size + __n <= 2 * v7)
        {
          v11 = 2 * v7;
        }

        if ((v11 | 3) == 0xB)
        {
          v12 = 13;
        }

        else
        {
          v12 = (v11 | 3) + 1;
        }

        if (v11 >= 0xB)
        {
          v13 = v12;
        }

        else
        {
          v13 = 11;
        }
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v13);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__n)
  {
    v14 = this;
    if ((v5 & 0x80000000) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    memmove(v14 + 2 * size, __s, 2 * __n);
    v15 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }

    v14->__r_.__value_.__s.__data_[v15] = 0;
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ICUStringOperations::toU16String(std::basic_string<char16_t> *a1, uint64_t *a2)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  std::basic_string<char16_t>::reserve(a1, v5);
  LODWORD(v6) = 0;
  v20 = 0;
  *__s = 0;
  while (v6 < v5)
  {
    v7 = v6;
    v8 = v6 + 1;
    v9 = *(v4 + v6);
    v10 = *(v4 + v6);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    if (v8 == v5)
    {
      goto LABEL_12;
    }

    if (v10 < 0xE0)
    {
      if (v10 < 0xC2)
      {
        goto LABEL_29;
      }

      v15 = v10 & 0x1F;
    }

    else
    {
      if (v10 > 0xEF)
      {
        if (v10 > 0xF4 || (v17 = v10 - 240, v18 = *(v4 + v8), ((byte_222832CC7[v18 >> 4] >> v17) & 1) == 0))
        {
LABEL_29:
          v12 = -1;
          LOWORD(v10) = -1;
          LODWORD(v6) = v8;
          goto LABEL_30;
        }

        v6 = v6 + 2;
        if (v7 + 2 == v5)
        {
LABEL_12:
          v12 = -1;
          LOWORD(v10) = -1;
          LODWORD(v6) = v5;
          goto LABEL_30;
        }

        v14 = *(v4 + v6) ^ 0x80;
        if (v14 > 0x3F)
        {
          v12 = -1;
          LOWORD(v10) = -1;
          goto LABEL_30;
        }

        LODWORD(v13) = v18 & 0x3F | (v17 << 6);
        LODWORD(v8) = v6;
      }

      else
      {
        v13 = v9 & 0xF;
        if (((a00000000000000[v13] >> (*(v4 + v8) >> 5)) & 1) == 0)
        {
          goto LABEL_29;
        }

        v14 = *(v4 + v8) & 0x3F;
      }

      LODWORD(v8) = v8 + 1;
      if (v8 == v5)
      {
        goto LABEL_12;
      }

      v15 = v14 | (v13 << 6);
    }

    v16 = *(v4 + v8) ^ 0x80;
    if (v16 >= 0x40)
    {
      goto LABEL_29;
    }

    v10 = v16 | (v15 << 6);
    LODWORD(v8) = v8 + 1;
    LODWORD(v6) = v8;
    v12 = v10;
    if (v15 <= 0x3FF)
    {
LABEL_10:
      __s[0] = v10;
      LODWORD(v6) = v8;
      v11 = 1;
      goto LABEL_31;
    }

LABEL_30:
    __s[0] = (v12 >> 10) - 10304;
    __s[1] = v10 & 0x3FF | 0xDC00;
    v11 = 2;
LABEL_31:
    std::basic_string<char16_t>::append(a1, __s, v11);
  }
}

void sub_222807EB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ICUStringOperations::toString(std::string *this, uint64_t **a2)
{
  v2 = a2;
  v3 = this;
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    LODWORD(v5) = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5 >= 23)
  {
    std::string::reserve(this, v5 & 0x7FFFFFFF);
    v6 = *(v2 + 23);
    v16 = 0;
    *__s = 0;
    if (v6 < 0)
    {
      v2 = *v2;
    }

LABEL_11:
    v7 = 0;
    while (1)
    {
      v8 = v7 + 1;
      v9 = *(v2 + v7);
      if ((v9 & 0xFC00) == 0xD800 && v8 != v5)
      {
        break;
      }

      if (v9 > 0x7F)
      {
        if (v9 <= 0x7FF)
        {
          __s[0] = (v9 >> 6) | 0xC0;
          v14 = 1;
LABEL_25:
          v11 = v14 + 1;
          __s[v14] = v9 & 0x3F | 0x80;
          v7 = v8;
          goto LABEL_26;
        }

LABEL_23:
        __s[0] = (v9 >> 12) | 0xE0;
        v13 = 1;
LABEL_24:
        v14 = v13 + 1;
        *(__s | v13) = (v9 >> 6) & 0x3F | 0x80;
        goto LABEL_25;
      }

      __s[0] = *(v2 + v7++);
      v11 = 1;
LABEL_26:
      this = std::string::append(v3, __s, v11);
      if (v7 >= v5)
      {
        return this;
      }
    }

    v12 = *(v2 + v8);
    if ((v12 & 0xFC00) != 0xDC00)
    {
      goto LABEL_23;
    }

    LODWORD(v8) = v7 + 2;
    v9 = v12 + (v9 << 10) - 56613888;
    __s[0] = (v9 >> 18) | 0xF0;
    __s[1] = (v9 >> 12) & 0x3F | 0x80;
    v13 = 2;
    goto LABEL_24;
  }

  v16 = 0;
  *__s = 0;
  if (v4 < 0)
  {
    v2 = *a2;
  }

  if (v5 >= 1)
  {
    goto LABEL_11;
  }

  return this;
}

void sub_222808074(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2228084F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a36 < 0)
  {
    operator delete(a31);
    if ((v51 & 1) == 0)
    {
LABEL_14:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      (*(*v49 + 8))(v49);
      _Unwind_Resume(a1);
    }
  }

  else if (!v51)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v50);
  goto LABEL_14;
}

uint64_t marrs::inference_engine::EspressoModule::buildPlan(marrs::inference_engine::EspressoModule *this)
{
  result = espresso_plan_build();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x223DC1F10](exception, "Failed to build espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t marrs::inference_engine::EspressoModule::executePlan(marrs::inference_engine::EspressoModule *this)
{
  result = espresso_plan_execute_sync();
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v6, v2);
    v4 = std::string::insert(&v6, 0, "Failed to execute espresso plan with error code");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v8 = v4->__r_.__value_.__r.__words[2];
    v7 = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x223DC1F20](exception, &v7);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_22280874C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t marrs::inference_engine::EspressoModule::cleanPlan(marrs::inference_engine::EspressoModule *this)
{
  result = espresso_plan_build_clean();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x223DC1F10](exception, "Failed to clean up espresso plan.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t marrs::inference_engine::EspressoModule::setInput(uint64_t a1, uint64_t *a2, void *a3)
{
  v23 = a3[3];
  v5 = a3[1] - *a3;
  espresso_buffer_pack_tensor_shape();
  v24 = *(a1 + 32);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (*(a2 + 23) < 0)
  {
    v8 = *a2;
  }

  result = espresso_network_bind_buffer();
  if (result)
  {
    v10 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v13 = *&v12->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v18, v10);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v18;
    }

    else
    {
      v14 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v20, v14, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v22 = v16->__r_.__value_.__r.__words[2];
    v21 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x223DC1F20](exception, &v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_22280896C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v33 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v34);
  goto LABEL_12;
}

void marrs::inference_engine::EspressoModule::getOutput(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = *(a2 + 32);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*(a3 + 23) < 0)
  {
    v6 = *a3;
  }

  v7 = espresso_network_bind_buffer();
  if (v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v18 = *&v17->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v23, v7);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v23;
    }

    else
    {
      v19 = v23.__r_.__value_.__r.__words[0];
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v25, v19, size);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v29 = v21->__r_.__value_.__r.__words[2];
    v28 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x223DC1F20](exception, &v28);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v24.__r_.__value_.__r.__words[0] = 0;
  espresso_buffer_unpack_tensor_shape();
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  memset(&v25, 0, sizeof(v25));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v25, &v28, &v28 + 8 * v24.__r_.__value_.__r.__words[0], v24.__r_.__value_.__r.__words[0]);
  v8 = v25.__r_.__value_.__r.__words[0];
  v9 = v26;
  *a1 = v25.__r_.__value_.__r.__words[0];
  v10 = v25.__r_.__value_.__l.__size_;
  *(a1 + 8) = *&v25.__r_.__value_.__r.__words[1];
  if (v10 == v8)
  {
    v12 = 1;
  }

  else
  {
    v11 = (v10 - v8) >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = 1;
    do
    {
      v13 = *v8++;
      v12 *= v13;
      --v11;
    }

    while (v11);
  }

  memset(&v25, 0, sizeof(v25));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v25, v9, v9 + 4 * v12, v12);
  v14 = v25.__r_.__value_.__r.__words[0];
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 24), v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_, (v25.__r_.__value_.__l.__size_ - v25.__r_.__value_.__r.__words[0]) >> 2);
  free(v26);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_222808C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v27 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v26);
  goto LABEL_12;
}

void marrs::mrr::mr::UtteranceKeywordFilter::~UtteranceKeywordFilter(marrs::mrr::mr::UtteranceKeywordFilter *this)
{
  *this = &unk_2835DF620;
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*(this + 21));
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);

  JUMPOUT(0x223DC2360);
}

{
  *this = &unk_2835DF620;
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*(this + 21));

  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);
}

{
  *this = &unk_2835DF620;
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(*(this + 21));

  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);
}

void marrs::mrr::mr::UtteranceKeywordFilter::filterEntities(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  if (a1[22])
  {
    v56[0] = 0;
    v56[1] = 0;
    v54[1] = 0;
    v55 = v56;
    v54[0] = 0;
    v6 = *(a3 + 24);
    v7 = *(a3 + 32);
    while (v6 != v7)
    {
      MEMORY[0x223DC19C0](&v60, *v6);
      if ((v62 & 1) == 0)
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v55, v61);
      }

      MEMORY[0x223DC19D0](&v60);
      ++v6;
    }

    v50 = a4;
    v8 = a1[20];
    v52 = a1 + 21;
    if (v8 == a1 + 21)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v57 = 0uLL;
      v58 = 0;
      std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::back_insert_iterator<std::vector<std::string>>>(&v60, v55, v56, v8[7], v8 + 8, &v57);
      v9 = v57;
      v60.__r_.__value_.__r.__words[0] = &v57;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
      if (*(&v9 + 1) == v9)
      {
        goto LABEL_81;
      }

      if (*(v8 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v60, v8[4], v8[5]);
      }

      else
      {
        v60 = *(v8 + 4);
      }

      v58 = 0;
      v59 = 0;
      v10 = 0uLL;
      v57 = 0u;
      v12 = *a2;
      v11 = a2[1];
      if (v11 != *a2)
      {
        v13 = 0;
        v14 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        size = v60.__r_.__value_.__l.__size_;
        __s1 = v60.__r_.__value_.__r.__words[0];
        while (1)
        {
          v16 = qword_280AC2C58;
          if (!qword_280AC2C58)
          {
            goto LABEL_28;
          }

          v17 = *(v12 + 216 * v13);
          v18 = &qword_280AC2C58;
          do
          {
            if (*(v16 + 32) >= v17)
            {
              v18 = v16;
            }

            v16 = *(v16 + 8 * (*(v16 + 32) < v17));
          }

          while (v16);
          if (v18 == &qword_280AC2C58 || v17 < *(v18 + 8))
          {
            goto LABEL_28;
          }

          v19 = v18[5];
          v20 = strlen(v19);
          v21 = v20;
          if ((v14 & 0x80) != 0)
          {
            if (v20 == size)
            {
              v22 = __s1;
              if (size == -1)
              {
                std::string::__throw_out_of_range[abi:ne200100]();
              }

              goto LABEL_26;
            }
          }

          else if (v20 == v14)
          {
            v22 = &v60;
LABEL_26:
            if (!memcmp(v22, v19, v21))
            {
              std::vector<unsigned long>::push_back[abi:ne200100](&v57, &v59);
              v12 = *a2;
              v11 = a2[1];
            }
          }

LABEL_28:
          v59 = ++v13;
          if (v13 >= 0x84BDA12F684BDA13 * ((v11 - v12) >> 3))
          {
            v10 = v57;
            break;
          }
        }
      }

      v23 = v10;
      if (v10 == *(&v10 + 1))
      {
        goto LABEL_77;
      }

      v24 = v54;
      do
      {
        if (v54 == v24 || (v25 = *v23, v26 = v24[4], *v23 < v26))
        {
          v27 = *v24;
          v28 = v24;
          if (v54 == v24)
          {
            goto LABEL_40;
          }

          v29 = *v24;
          v30 = v24;
          if (v27)
          {
            do
            {
              v28 = v29;
              v29 = v29[1];
            }

            while (v29);
          }

          else
          {
            do
            {
              v28 = v30[2];
              v31 = *v28 == v30;
              v30 = v28;
            }

            while (v31);
          }

          v32 = *v23;
          if (v28[4] < *v23)
          {
LABEL_40:
            if (v27)
            {
              v33 = v28 + 1;
            }

            else
            {
              v33 = v24;
            }
          }

          else
          {
            v37 = v54[0];
            if (!v54[0])
            {
              goto LABEL_69;
            }

            v33 = v54;
            while (1)
            {
              while (1)
              {
                v38 = v37;
                v39 = v37[4];
                if (v32 >= v39)
                {
                  break;
                }

                v37 = *v38;
                v33 = v38;
                if (!*v38)
                {
                  goto LABEL_69;
                }
              }

              if (v39 >= v32)
              {
                break;
              }

              v33 = v38 + 1;
              v37 = v38[1];
              if (!v37)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else
        {
          if (v26 >= v25)
          {
            v34 = v24;
            goto LABEL_70;
          }

          v33 = v24 + 1;
          v35 = v24[1];
          if (v35)
          {
            do
            {
              v33 = v35;
              v35 = *v35;
              v36 = v33;
            }

            while (v35);
          }

          else
          {
            v36 = v24;
            do
            {
              v40 = v36;
              v36 = v36[2];
            }

            while (*v36 != v40);
          }

          if (v36 != v54 && v25 >= v36[4])
          {
            v41 = v54[0];
            if (!v54[0])
            {
LABEL_69:
              operator new();
            }

            v33 = v54;
            while (1)
            {
              while (1)
              {
                v42 = v41;
                v43 = v41[4];
                if (v25 >= v43)
                {
                  break;
                }

                v41 = *v42;
                v33 = v42;
                if (!*v42)
                {
                  goto LABEL_69;
                }
              }

              if (v43 >= v25)
              {
                break;
              }

              v33 = v42 + 1;
              v41 = v42[1];
              if (!v41)
              {
                goto LABEL_69;
              }
            }
          }
        }

        v34 = *v33;
        if (!*v33)
        {
          goto LABEL_69;
        }

LABEL_70:
        v44 = v34[1];
        if (v44)
        {
          do
          {
            v24 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v24 = v34[2];
            v31 = *v24 == v34;
            v34 = v24;
          }

          while (!v31);
        }

        ++v23;
      }

      while (v23 != *(&v10 + 1));
      v23 = v57;
LABEL_77:
      if (v23)
      {
        *(&v57 + 1) = v23;
        operator delete(v23);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

LABEL_81:
      v45 = v8[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v8[2];
          v31 = *v46 == v8;
          v8 = v46;
        }

        while (!v31);
      }

      v8 = v46;
      if (v46 == v52)
      {
LABEL_91:
        v48 = MRRLoggerForCategory(2);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          LOWORD(v60.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_2227A9000, v48, OS_LOG_TYPE_INFO, "[Utterance Keyword Filter] failed to match any keywords, returning null", &v60, 2u);
        }

        *v50 = 0;
        v50[24] = 0;
        std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::destroy(v54[0]);
        std::__tree<std::string>::destroy(v56[0]);
        goto LABEL_94;
      }
    }
  }

  v47 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v60.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_2227A9000, v47, OS_LOG_TYPE_ERROR, "[Utterance Keyword Filter] Failed to load asset. The utteranceKeywordMap is empty, skipping", &v60, 2u);
  }

  *a4 = 0;
  a4[24] = 0;
LABEL_94:
  v49 = *MEMORY[0x277D85DE8];
}

void sub_2228094C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  std::__tree<std::__value_type<marrs::mrr::mr::EntityType,float>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,float>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,float>>>::destroy(a16);
  std::__tree<std::string>::destroy(a19);
  _Unwind_Resume(a1);
}

std::string *marrs::qr::processing::filterTokensForAER(std::string *result, marrs::qr::orchestration::QRToken *a2, marrs::qr::orchestration::QRToken *a3, __int16 a4, int a5)
{
  result->__r_.__value_.__r.__words[0] = 0;
  result->__r_.__value_.__l.__size_ = 0;
  result->__r_.__value_.__r.__words[2] = 0;
  if (a5)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v10 = v5 | a4;
  if (a2 != a3)
  {
    v7 = a2;
    v8 = result;
    v9 = 0;
    do
    {
      if ((*(v7 + 72) & 1) != 0 || *(&v10 | *(v7 + 73)) == 1)
      {
        if (v9 >= v8[2])
        {
          result = std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken const&>(v8, v7);
          v9 = result;
        }

        else
        {
          result = marrs::qr::orchestration::QRToken::QRToken(v9, v7);
          v9 = (v9 + 160);
        }

        v8[1] = v9;
      }

      v7 = (v7 + 160);
    }

    while (v7 != a3);
  }

  return result;
}

void sub_22280961C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void marrs::qr::processing::getFlattenedNormalizedValuesIndices(void *a1, uint64_t *a2, void *a3)
{
  v13[7] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = *a2;
  v3 = a2[1];
  if (v3 != *a2)
  {
    v5 = 0;
    do
    {
      v6 = v4 + 160 * v5;
      v7 = *(v6 + 48);
      if (*(v6 + 56) != v7)
      {
        marrs::qr::processing::Vocab::toIndex(a3, v7);
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(1uLL);
      }

      ++v5;
    }

    while (v5 < 0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 5));
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::vector<unsigned long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>((a1 + 3), v10, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3));
  v13[0] = &v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v13);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_222809988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  v19 = *v17;
  if (*v17)
  {
    *(a9 + 8) = v19;
    operator delete(v19);
  }

  a13 = &a16;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_222809AE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

std::string *std::vector<marrs::qr::orchestration::QRToken>::__insert_with_size[abi:ne200100]<std::__wrap_iter<marrs::qr::orchestration::QRToken*>,std::__wrap_iter<marrs::qr::orchestration::QRToken*>>(std::string *result, std::string *a2, std::string *a3, marrs::qr::orchestration::QRToken *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    size = result->__r_.__value_.__l.__size_;
    v9 = result->__r_.__value_.__r.__words[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - size) >> 5)) >= a5)
    {
      v15 = size - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((size - a2) >> 5)) >= a5)
      {
        v17 = 5 * a5;
        std::vector<marrs::qr::orchestration::QRToken>::__move_range(result, a2, result->__r_.__value_.__l.__size_, a2 + 160 * a5);
        v16 = (v6 + 32 * v17);
      }

      else
      {
        result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(result, (a3 + v15), a4, result->__r_.__value_.__l.__size_);
        v8->__r_.__value_.__l.__size_ = result;
        if (v15 < 1)
        {
          return result;
        }

        std::vector<marrs::qr::orchestration::QRToken>::__move_range(v8, a2, size, a2 + 160 * a5);
        v16 = (v6 + v15);
      }

      return std::__copy_impl::operator()[abi:ne200100]<marrs::qr::orchestration::QRToken *,marrs::qr::orchestration::QRToken *,marrs::qr::orchestration::QRToken *>(v6, v16, a2);
    }

    else
    {
      v11 = result->__r_.__value_.__r.__words[0];
      v12 = a5 - 0x3333333333333333 * ((size - result->__r_.__value_.__r.__words[0]) >> 5);
      if (v12 > 0x199999999999999)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 5);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0xCCCCCCCCCCCCCCLL)
      {
        v14 = 0x199999999999999;
      }

      else
      {
        v14 = v12;
      }

      v29 = v8;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>>(v14);
      }

      v18 = (32 * ((a2 - v11) >> 5));
      v26 = 0;
      v27 = v18;
      v28 = v18;
      v19 = v18 + 160 * a5;
      v20 = 160 * a5;
      do
      {
        marrs::qr::orchestration::QRToken::QRToken(v18, v6);
        v18 = (v18 + 160);
        v6 = (v6 + 160);
        v20 -= 160;
      }

      while (v20);
      *&v28 = v19;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*>(v8, a2, v8->__r_.__value_.__l.__size_, v19);
      v21 = v8->__r_.__value_.__r.__words[0];
      v22 = v27;
      *&v28 = v19 + v8->__r_.__value_.__l.__size_ - a2;
      v8->__r_.__value_.__l.__size_ = a2;
      v23 = v22 + v21 - a2;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*>(v8, v21, a2, v23);
      v24 = v8->__r_.__value_.__r.__words[0];
      v8->__r_.__value_.__r.__words[0] = v23;
      v25 = v8->__r_.__value_.__r.__words[2];
      *&v8->__r_.__value_.__r.__words[1] = v28;
      *&v28 = v24;
      *(&v28 + 1) = v25;
      v26 = v24;
      v27 = v24;
      return std::__split_buffer<marrs::qr::orchestration::QRToken>::~__split_buffer(&v26);
    }
  }

  return result;
}

void std::__memberwise_copy_assign[abi:ne200100]<std::tuple<std::vector<unsigned long> &,std::vector<std::vector<unsigned long>> &>,std::tuple<std::vector<unsigned long>,std::vector<std::vector<unsigned long>>>,0ul,1ul>(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 != a2)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v5 = a1[1];
  if (v5 != (a2 + 24))
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);

    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v5, v6, v7, 0xAAAAAAAAAAAAAAABLL * (v7 - v6));
  }
}

__n128 std::vector<marrs::qr::orchestration::QRToken>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = (a2 + v4 - a4);
    v7 = *(a1 + 8);
    do
    {
      v8 = *v6;
      *(v7 + 16) = *(v6 + 2);
      *v7 = v8;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v9 = *(v6 + 24);
      *(v7 + 40) = *(v6 + 5);
      *(v7 + 24) = v9;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = v6[3];
      *(v7 + 64) = *(v6 + 8);
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      v10 = *(v6 + 72);
      *(v7 + 88) = *(v6 + 88);
      *(v7 + 72) = v10;
      v11 = *(v6 + 104);
      *(v7 + 120) = *(v6 + 15);
      *(v7 + 104) = v11;
      *(v6 + 14) = 0;
      *(v6 + 15) = 0;
      *(v6 + 13) = 0;
      *(v7 + 128) = *(v6 + 128);
      result = *(v6 + 136);
      *(v7 + 152) = *(v6 + 19);
      *(v7 + 136) = result;
      *(v6 + 18) = 0;
      *(v6 + 19) = 0;
      *(v6 + 17) = 0;
      v6 += 10;
      v7 += 160;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v13 = 0;
    v14 = a4 - v4;
    do
    {
      v15 = v4 + v13;
      v16 = (v4 + v13 - 160);
      if (*(v4 + v13 - 137) < 0)
      {
        operator delete(*v16);
      }

      v17 = v5 + v13;
      v18 = (v5 + v13 - 160);
      v19 = *v18;
      *(v4 + v13 - 144) = *(v5 + v13 - 144);
      *v16 = v19;
      *(v5 + v13 - 137) = 0;
      *v18 = 0;
      v20 = v15 - 136;
      if (*(v15 - 113) < 0)
      {
        operator delete(*v20);
      }

      v21 = v5 + v13;
      v22 = *(v17 - 136);
      *(v20 + 16) = *(v17 - 120);
      *v20 = v22;
      *(v5 + v13 - 113) = 0;
      *(v17 - 136) = 0;
      v23 = v4 + v13;
      std::vector<std::string>::__vdeallocate((v4 + v13 - 112));
      *(v23 - 112) = *(v5 + v13 - 112);
      *(v23 - 96) = *(v5 + v13 - 96);
      *(v21 - 104) = 0;
      *(v21 - 96) = 0;
      *(v21 - 112) = 0;
      v24 = *(v5 + v13 - 88);
      *(v23 - 72) = *(v5 + v13 - 72);
      *(v23 - 88) = v24;
      v25 = (v4 + v13 - 56);
      if (*(v4 + v13 - 33) < 0)
      {
        operator delete(*v25);
      }

      v26 = *(v21 - 56);
      *(v23 - 40) = *(v21 - 40);
      *v25 = v26;
      *(v21 - 33) = 0;
      *(v21 - 56) = 0;
      *(v23 - 32) = *(v21 - 32);
      v27 = (v23 - 24);
      if (*(v23 - 1) < 0)
      {
        operator delete(*v27);
      }

      v28 = v5 + v13;
      result = *(v5 + v13 - 24);
      *(v23 - 8) = *(v5 + v13 - 8);
      *v27 = result;
      *(v28 - 1) = 0;
      *(v28 - 24) = 0;
      v13 -= 160;
    }

    while (v14 != v13);
  }

  return result;
}

char **std::__find[abi:ne200100]<std::string_view const*,std::string_view const*,std::string,std::__identity>(const void **a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = a1[1];
  }

  if (v1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = &marrs::qr::processing::Vocab::reservedTokens;
  v5 = 112;
  while (v4[1] != v2 || memcmp(*v4, v3, v2))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      return &_swift_FORCE_LOAD___swiftFoundation___Marrs;
    }
  }

  return v4;
}

void marrs::qr::processing::filterTokens(uint64_t *a1, unint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v7 = *a2;
  v6 = a2[1];
  while (v7 < v6 && (*(v7 + 72) & 1) == 0)
  {
    v7 += 160;
  }

  if (v7 < v6)
  {
    v8 = 0;
    do
    {
      if (v8 - 0x5555555555555555 * ((*(v7 + 56) - *(v7 + 48)) >> 3) > a3)
      {
        break;
      }

      std::string::basic_string[abi:ne200100]<0>(&__str, "");
      for (i = v7 + 160; i < a2[1]; i += 160)
      {
        if (*(i + 72))
        {
          break;
        }

        v10 = *(i + 23);
        v11 = v10 >= 0 ? i : *i;
        v12 = v10 >= 0 ? *(i + 23) : *(i + 8);
        std::string::append(&__str, v11, v12);
      }

      v13 = a1[1];
      if (v13 >= a1[2])
      {
        v14 = std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken const&>(a1, v7);
      }

      else
      {
        marrs::qr::orchestration::QRToken::QRToken(a1[1], v7);
        v14 = v13 + 160;
      }

      a1[1] = v14;
      std::string::operator=((v14 - 24), &__str);
      v17 = v7 + 48;
      v15 = *(v7 + 48);
      v16 = *(v17 + 8);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v8 -= 0x5555555555555555 * ((v16 - v15) >> 3);
      v7 = i;
    }

    while (i < a2[1]);
    v18 = a1[1];
    if (*a1 != v18)
    {
      MEMORY[0x223DC1FB0](v18 - 24, " ");
    }
  }
}

void marrs::mrr::mr::RuleBasedMR::resolveMentionsInUtterance(uint64_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v4 = *(a2 + 96);
  for (i = *(a2 + 104); v4 != i; ++v4)
  {
    marrs::mrr::mr::SpanTypeFilter::filterEntities(a1, *v4, &__p);
    v6 = v16;
    if (v16 >= v17)
    {
      v8 = (v16 - v15) >> 5;
      if ((v8 + 1) >> 59)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v9 = (v17 - v15) >> 4;
      if (v9 <= v8 + 1)
      {
        v9 = v8 + 1;
      }

      if (v17 - v15 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      v24 = &v15;
      if (v10)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<std::vector<unsigned long>>>>(v10);
      }

      *buf = 0;
      v21 = (32 * v8);
      v22 = 32 * v8;
      v23 = 0;
      std::__optional_copy_base<std::vector<unsigned long>,false>::__optional_copy_base[abi:ne200100](32 * v8, &__p);
      v7 = v22 + 32;
      v11 = v21 - (v16 - v15);
      memcpy(v11, v15, v16 - v15);
      v12 = v15;
      v13 = v17;
      v15 = v11;
      v16 = v7;
      v17 = v23;
      v22 = v12;
      v23 = v13;
      v21 = v12;
      *buf = v12;
      std::__split_buffer<std::optional<std::vector<unsigned long>>>::~__split_buffer(buf);
    }

    else
    {
      std::__optional_copy_base<std::vector<unsigned long>,false>::__optional_copy_base[abi:ne200100](v16, &__p);
      v7 = v6 + 32;
    }

    v16 = v7;
    if (v19 == 1)
    {
      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  *buf = 1;
  memset(v14, 0, sizeof(v14));
  std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType const*,marrs::mrr::mr::MRResultType const*>(v14, buf, &buf[4], 1uLL);
}

void sub_22280B2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, char a53)
{
  __p = &a53;
  std::vector<std::optional<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_copy_base<std::vector<unsigned long>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_22280B5FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<std::vector<unsigned long>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned long>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      v4 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v4;
        operator delete(v4);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
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

void std::vector<std::optional<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4;
        v4 -= 4;
        if (*(v6 - 8) == 1)
        {
          v7 = *v4;
          if (*v4)
          {
            *(v6 - 3) = v7;
            operator delete(v7);
          }
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<marrs::mrr::mr::MRMatchingResult>::construct[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,sirinluinternal::MatchingSpan const&,double &,marrs::mrr::mr::MRREntity &,std::vector<marrs::mrr::mr::MRResultType> &>(uint64_t a1, uint64_t a2, marrs::mrr::mr::MRREntity *a3, uint64_t *a4, double a5)
{
  v8 = a5;
  marrs::mrr::mr::MRREntity::MRREntity(&v9, a3);
  marrs::mrr::mr::MRMatchingResult::MRMatchingResult(a1, v8, a2, &v9, a4);
  v22 = &v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  v22 = &v16;
  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

uint64_t std::vector<marrs::mrr::mr::MRMatchingResult>::__emplace_back_slow_path<sirinluinternal::MatchingSpan const&,int,std::vector<marrs::mrr::mr::MRResultType>>(uint64_t *a1, uint64_t a2, int *a3, uint64_t *a4)
{
  v4 = 0x82FA0BE82FA0BE83 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0xBE82FA0BE82FA0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F417D05F417D06 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x5F417D05F417D06 * ((a1[2] - *a1) >> 3);
  }

  if (0x82FA0BE82FA0BE83 * ((a1[2] - *a1) >> 3) >= 0x5F417D05F417D0)
  {
    v7 = 0xBE82FA0BE82FA0;
  }

  else
  {
    v7 = v5;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(v7);
  }

  v14 = 0;
  v15 = 344 * v4;
  v16 = 344 * v4;
  marrs::mrr::mr::MRMatchingResult::MRMatchingResult(344 * v4, *a3, a2, a4);
  *&v16 = 344 * v4 + 344;
  v8 = a1[1];
  v9 = 344 * v4 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>,marrs::mrr::mr::MRMatchingResult*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(&v14);
  return v13;
}

void sub_22280B9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

unint64_t *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity const,std::__less<void,void>>(unint64_t *a1, unint64_t *a2, unint64_t a3)
{
  if (a2 != a1)
  {
    if (*a1 >= a3)
    {
      return a1;
    }

    v3 = a2 - a1;
    if (v3 >= 1)
    {
      v3 = 1;
    }

    v4 = &a1[v3];
    if (v4 == a2)
    {
LABEL_17:
      v6 = a2;
    }

    else
    {
      v5 = 1;
      while (1)
      {
        v6 = v4;
        if (*v4 >= a3)
        {
          break;
        }

        v3 = a2 - v4;
        v7 = v3 <= 2 * v5;
        v5 *= 2;
        if (v7)
        {
          v8 = v5;
        }

        else
        {
          v8 = a2 - v4;
        }

        if (!v7)
        {
          v3 = v5;
        }

        if (v5 < 0)
        {
          v3 = v8;
        }

        v4 = &v6[v3];
        a1 = v6;
        if (v4 == a2)
        {
          a1 = v6;
          goto LABEL_17;
        }
      }
    }

    if (v3)
    {
      if (v3 == 1)
      {
        return v6;
      }

      do
      {
        v9 = v3 >> 1;
        v10 = &a1[v3 >> 1];
        v12 = *v10;
        v11 = v10 + 1;
        v3 += ~(v3 >> 1);
        if (v12 < a3)
        {
          a1 = v11;
        }

        else
        {
          v3 = v9;
        }
      }

      while (v3);
    }

    return a1;
  }

  return a2;
}

void std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,std::back_insert_iterator<std::vector<unsigned long>>>(int a1, void **a2, void *a3, uint64_t a4, char *a5)
{
  if (a1)
  {
    if (*a5 == 1)
    {
      v9 = *a2;
      v11 = *(a4 + 8);
      v10 = *(a4 + 16);
      if (v11 >= v10)
      {
        v14 = *a4;
        v15 = v11 - *a4;
        v16 = (v15 >> 3) + 1;
        if (v16 >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v17 = v10 - v14;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v18);
        }

        v19 = (8 * (v15 >> 3));
        *v19 = *v9;
        v12 = v19 + 1;
        memcpy(0, v14, v15);
        v20 = *a4;
        *a4 = 0;
        *(a4 + 8) = v12;
        *(a4 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v11 = *v9;
        v12 = v11 + 1;
      }

      v13 = 0;
      *(a4 + 8) = v12;
      ++*a2;
      *a3 += 8;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  *a5 = v13;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<std::vector<unsigned long>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::optional<std::vector<unsigned long>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 8) == 1)
      {
        v5 = *v4;
        if (*v4)
        {
          *(v2 - 3) = v5;
          operator delete(v5);
          v4 = *(a1 + 16);
        }
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void marrs::TensorConvertor<float>::convert(void *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = 1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(a1, &v1, &v2, 1uLL);
}

void sub_22280BDDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer marrs::qr::processing::Vocab::addWord(int8x8_t *a1, __int128 *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(a1, a2);
  if (!result)
  {
    v5 = a1[3];
    v6 = std::__string_hash<char>::operator()[abi:ne200100](a2);
    v7 = v6;
    v8 = a1[1];
    if (!*&v8)
    {
      goto LABEL_19;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v8)
      {
        v11 = v6 % *&v8;
      }
    }

    else
    {
      v11 = (*&v8 - 1) & v6;
    }

    v12 = *(*a1 + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v7)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, a2))
        {
          v13[5] = v5;
          result = std::vector<std::string>::push_back[abi:ne200100](&a1[5], a2);
          a1[8].i8[0] = 1;
          return result;
        }
      }

      else
      {
        if (v10 > 1)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_19;
        }
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

marrs::qr::processing::Vocab *marrs::qr::processing::Vocab::Vocab(marrs::qr::processing::Vocab *this, char a2, unsigned int a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 5) = 0;
  v6 = (this + 40);
  *(this + 8) = 1065353216;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__rehash<true>(this, a3);
  std::vector<std::string>::reserve(v6, a3);
  if ((a2 & 1) == 0)
  {
    v7 = 112;
    v8 = &qword_2784B4EC8;
    do
    {
      v9 = *v8;
      if (*v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = *(v8 - 1);
      if (v9 >= 0x17)
      {
        operator new();
      }

      v13 = *v8;
      if (v9)
      {
        memmove(&__dst, v10, v9);
      }

      *(&__dst + v9) = 0;
      marrs::qr::processing::Vocab::addWord(this, &__dst);
      if (v13 < 0)
      {
        operator delete(__dst);
      }

      v8 += 2;
      v7 -= 16;
    }

    while (v7);
  }

  *(this + 64) = 0;
  return this;
}

void sub_22280C1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __p = a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

uint64_t marrs::qr::processing::Vocab::toIndex(void *a1, void *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(a1, a2);
  if (v3)
  {
    return v3[5];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "[OOV]");
  v6 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(a1, __p);
  v7 = v6;
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

LABEL_6:
  std::string::basic_string[abi:ne200100]<0>(__p, "[OOV]");
  v8 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(a1, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v4 = v8[5];
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_22280C2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marrs::qr::orchestration::AsrConfidenceChecker::verify(marrs::qr::orchestration::AsrConfidenceChecker *this, const QRRequest *a2)
{
  var0 = a2->var1.var0;
  for (i = a2->var1.var1; var0 != i; var0 = (var0 + 112))
  {
    for (j = var0->var0.var0; j != var0->var0.var1; j = (j + 96))
    {
      for (k = j[1].var1.var0.var1.var1; k != *(&j[1].var1.var0.var1 + 2); k += 160)
      {
        result = 0;
        v7 = *(k + 96);
        if (v7 < 0.0 || v7 > 1000.0)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

uint64_t marrs::qr::orchestration::PreviousNLUtteranceChecker::verify(marrs::qr::orchestration::PreviousNLUtteranceChecker *this, const QRRequest *a2)
{
  var0 = a2->var1.var0;
  var1 = a2->var1.var1;
  if (var0 != var1)
  {
    while (2)
    {
      v4 = var0->var1.var0;
      v5 = var0->var1.var1;
      while (v4 != v5)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v8, v4[1].var0.var0, v4[1].var0.var1, 0xCCCCCCCCCCCCCCCDLL * ((v4[1].var0.var1 - v4[1].var0.var0) >> 5));
        if (v8 == v9)
        {
          v11 = &v8;
          std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v11);
          return 0;
        }

        v6 = *(&v4->var1.var0.var1 + 23);
        if ((v6 & 0x8000000000000000) != 0)
        {
          v6 = v4->var1.var0.var1.var1;
        }

        v11 = &v8;
        std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v11);
        if (!v6)
        {
          return 0;
        }

        v4 = (v4 + 96);
      }

      var0 = (var0 + 112);
      if (var0 != var1)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

void RepetitionPredictorResult::RepetitionPredictorResult(RepetitionPredictorResult *this, const RepetitionPredictorResult *a2)
{
  *(this + 2) = 0;
  v4 = (this + 16);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  v5 = (this + 48);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  v6 = *(a2 + 2);
  if (*(a2 + 3) != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(this + 4);
      if (v7 >= v9)
      {
        v10 = *v4;
        v11 = v7 - *v4;
        v12 = (v11 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - v10;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v14);
        }

        v15 = (4 * (v11 >> 2));
        *v15 = *(v6 + 4 * v8);
        v7 = (v15 + 1);
        memcpy(0, v10, v11);
        v16 = *(this + 2);
        *(this + 2) = 0;
        *(this + 3) = v7;
        *(this + 4) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v7 = *(v6 + 4 * v8);
        v7 += 4;
      }

      *(this + 3) = v7;
      ++v8;
      v6 = *(a2 + 2);
    }

    while (v8 < (*(a2 + 3) - v6) >> 2);
  }

  *(this + 10) = *(a2 + 10);
  std::string::operator=(v5, a2 + 2);
  *(this + 72) = *(a2 + 72);
}

void sub_22280C610(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void RepetitionPredictorResult::AugmentationToWords(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  std::vector<std::string>::clear[abi:ne200100](a4);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v9 != v8)
  {
    v10 = -1431655765 * ((a2[1] - *a2) >> 3);
    do
    {
      v11 = *v9 - 1;
      if (v11 >= v10)
      {
        v12 = (*a3 + 24 * (v11 - v10));
      }

      else
      {
        v12 = (*a2 + 24 * v11);
      }

      v13 = *(a4 + 8);
      if (v13 >= *(a4 + 16))
      {
        v14 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4, v12);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a4, v12);
        v14 = v13 + 1;
      }

      *(a4 + 8) = v14;
      ++v9;
    }

    while (v9 != v8);
  }
}

void RepetitionPredictorResult::get_model_output_string(RepetitionPredictorResult *this, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  std::to_string(&v43, *a2);
  v4 = std::string::insert(&v43, 0, "No:");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v44, ", ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v45, "Partial:");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v42, *(a2 + 4));
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v42;
  }

  else
  {
    v10 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v46, v10, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v47, ", ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v50, "Full:");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v41, *(a2 + 8));
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v41;
  }

  else
  {
    v18 = v41.__r_.__value_.__r.__words[0];
  }

  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v41.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v48, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v49, ", ");
  v23 = *&v22->__r_.__value_.__l.__data_;
  *(this + 2) = *(&v22->__r_.__value_.__l + 2);
  *this = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v24 = *(this + 1);
  v25 = *(this + 23);
  if (v25 >= 0)
  {
    v26 = *(this + 23);
  }

  else
  {
    v26 = *(this + 1);
  }

  v27 = &v49;
  std::string::basic_string[abi:ne200100](&v49, v26 + 16);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v49.__r_.__value_.__r.__words[0];
  }

  if (v26)
  {
    v28 = *this;
    if (v25 >= 0)
    {
      v29 = this;
    }

    else
    {
      v29 = *this;
    }

    memmove(v27, v29, v26);
  }

  strcpy(v27 + v26, "AugmentationIdx:");
  if (v25 < 0)
  {
    operator delete(*this);
  }

  *this = v49;
  v30 = *(a2 + 16);
  if (*(a2 + 24) != v30)
  {
    v31 = 0;
    do
    {
      std::to_string(&v48, *(v30 + 4 * v31));
      v32 = *(this + 23);
      if (v32 >= 0)
      {
        v33 = this;
      }

      else
      {
        v33 = *this;
      }

      if (v32 >= 0)
      {
        v34 = *(this + 23);
      }

      else
      {
        v34 = *(this + 1);
      }

      v35 = std::string::insert(&v48, 0, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v49, " ");
      v38 = v37->__r_.__value_.__r.__words[0];
      v50.__r_.__value_.__r.__words[0] = v37->__r_.__value_.__l.__size_;
      *(v50.__r_.__value_.__r.__words + 7) = *(&v37->__r_.__value_.__r.__words[1] + 7);
      v39 = HIBYTE(v37->__r_.__value_.__r.__words[2]);
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if (*(this + 23) < 0)
      {
        operator delete(*this);
      }

      *this = v38;
      *(this + 1) = v50.__r_.__value_.__r.__words[0];
      *(this + 15) = *(v50.__r_.__value_.__r.__words + 7);
      *(this + 23) = v39;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      ++v31;
      v30 = *(a2 + 16);
    }

    while (v31 < (*(a2 + 24) - v30) >> 2);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_22280CB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (v55 < 0)
  {
    operator delete(*v54);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marrs::qr::orchestration::InputCheckerUtil::getUtteranceTokens(void *a1, uint64_t a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = 64;
  if (!a3)
  {
    v3 = 40;
  }

  v4 = 72;
  if (!a3)
  {
    v4 = 48;
  }

  return std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(a1, *(a2 + v3), *(a2 + v4), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + v4) - *(a2 + v3)) >> 5));
}

BOOL marrs::qr::orchestration::InputCheckerUtil::utteranceCheckerHelper(uint64_t *a1, uint64_t *a2, int a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v14[9] = v3;
  v14[10] = v4;
  v7 = a1;
  while (2)
  {
    v8 = *v7;
    v9 = v7[1];
    v10 = *v7;
    result = *v7 != v9;
    if (*v7 != v9)
    {
      do
      {
        marrs::qr::orchestration::InputCheckerUtil::getUtteranceTokens(v13, v10, a3);
        if (v13[0] == v13[1])
        {
          v14[0] = v13;
          std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v14);
          return 0;
        }

        v12 = *(v10 + 39);
        if (v12 < 0)
        {
          v12 = *(v10 + 24);
        }

        v14[0] = v13;
        std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](v14);
        if (!v12)
        {
          return 0;
        }

        v10 += 96;
      }

      while (v10 != v9);
      v7 += 14;
      result = 1;
      if (v7 != a2)
      {
        continue;
      }
    }

    break;
  }

  return result;
}

marrs::inference_engine::EspressoModule *std::unique_ptr<marrs::qr::inference_engine::EmbeddingModule>::reset[abi:ne200100](marrs::inference_engine::EspressoModule **a1, marrs::inference_engine::EspressoModule *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    marrs::inference_engine::EspressoModule::~EspressoModule(result);

    JUMPOUT(0x223DC2360);
  }

  return result;
}

marrs::inference_engine::EspressoModule *std::unique_ptr<marrs::qr::inference_engine::LSTMEncoderModule>::reset[abi:ne200100](marrs::inference_engine::EspressoModule **a1, marrs::inference_engine::EspressoModule *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    marrs::inference_engine::EspressoModule::~EspressoModule(result);

    JUMPOUT(0x223DC2360);
  }

  return result;
}

marrs::inference_engine::EspressoModule *std::unique_ptr<marrs::qr::inference_engine::LSTMDecoderwithAttentionModule>::reset[abi:ne200100](marrs::inference_engine::EspressoModule **a1, marrs::inference_engine::EspressoModule *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    marrs::inference_engine::EspressoModule::~EspressoModule(result);

    JUMPOUT(0x223DC2360);
  }

  return result;
}

void *std::vector<std::chrono::duration<long long,std::ratio<1l,1000000l>>>::__assign_with_size[abi:ne200100]<std::chrono::duration<long long,std::ratio<1l,1000000l>>*,std::chrono::duration<long long,std::ratio<1l,1000000l>>*>(void *result, char *__src, char *a3, unint64_t a4)
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

      if (!(v10 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v10);
      }
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::allocator<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::destroy[abi:ne200100](i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void marrs::qr::inference_engine::LSTMDecoderInputType::~LSTMDecoderInputType(marrs::qr::inference_engine::LSTMDecoderInputType *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

marrs::qr::inference_engine::LSTMDecoderInputType *marrs::qr::inference_engine::LSTMDecoderInputType::LSTMDecoderInputType(marrs::qr::inference_engine::LSTMDecoderInputType *this, const marrs::qr::inference_engine::LSTMDecoderInputType *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 3);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 120, *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 2);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 144, *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 3);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  return this;
}

void sub_22280D44C(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 19) = v6;
    operator delete(v6);
  }

  marrs::inference_engine::InferenceTensor::~InferenceTensor(v3);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(v2);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(v1);
  _Unwind_Resume(a1);
}

void sub_22280D4C8()
{
  v1 = *v0;
  if (*v0)
  {
    *(v0 + 8) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x22280D4C0);
}

void marrs::qr::inference_engine::EspressoQueryRewriteModel::forward_decoder(uint64_t a1, std::chrono::steady_clock::time_point *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  a2[32].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v6 = *(a4 + 96);
  if (*(a4 + 104) - v6 == 24)
  {
    rep = a2[2].__d_.__rep_;
    v22 = "encoder_outputs";
    LODWORD(v18) = v6[2];
    LODWORD(v17[0]) = *v6;
    LODWORD(v21) = -1;
    v8 = *(rep + 16);
    v9 = *(rep + 24);
    if (!espresso_network_change_input_blob_shapes_seq_rank())
    {
      a2[33].__d_.__rep_ = (std::chrono::steady_clock::now().__d_.__rep_ - a2[32].__d_.__rep_) / 1000;
      a2[34].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      marrs::inference_engine::EspressoModule::buildPlan(*(a2[2].__d_.__rep_ + 8));
      a2[35].__d_.__rep_ = (std::chrono::steady_clock::now().__d_.__rep_ - a2[34].__d_.__rep_) / 1000;
      a2[50].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      a2[51].__d_.__rep_ = (std::chrono::steady_clock::now().__d_.__rep_ - a2[50].__d_.__rep_) / 1000;
      a2[52].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      a2[53].__d_.__rep_ = (std::chrono::steady_clock::now().__d_.__rep_ - a2[52].__d_.__rep_) / 1000;
      a2[54].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      v10 = *(a4 + 96);
      v11 = *v10;
      v12 = v10[2];
      *&buf = v11;
      *(&buf + 1) = v12;
      memset(v17, 0, sizeof(v17));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v17, &buf, &v20, 2uLL);
    }

    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Failed to reshape the decoder.");
    std::string::basic_string[abi:ne200100]<0>(&v23, "QueryRewrite");
    InferenceError::InferenceError(exception, &buf, &v23, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/inference_engine/espresso_lstm_decoder_module.cpp", 70);
  }

  v13 = __cxa_allocate_exception(0x30uLL);
  std::to_string(&v23, (*(a4 + 104) - *(a4 + 96)) >> 3);
  v14 = std::string::insert(&v23, 0, "encodingsShape rank mismatch, should be 3, found");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v20 = v14->__r_.__value_.__r.__words[2];
  buf = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v22, "QueryRewrite");
  InferenceError::InferenceError(v13, &buf, &v22, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/inference_engine/espresso_lstm_decoder_module.cpp", 58);
}

void sub_22280E5A4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
    if ((v2 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v1);
  goto LABEL_10;
}

void sub_22280E658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28)
{
  v31 = *v28;
  if (*v28)
  {
    *(a13 + 32) = v31;
    operator delete(v31);
  }

  v32 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v32;
    operator delete(v32);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v29)
  {
    operator delete(v29);
  }

  marrs::qr::inference_engine::LSTMDecoderInputType::~LSTMDecoderInputType(&a28);
  _Unwind_Resume(a1);
}

void sub_22280E694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a25)
  {
    operator delete(a25);
  }

  if (v28)
  {
    operator delete(v28);
  }

  marrs::qr::inference_engine::LSTMDecoderInputType::~LSTMDecoderInputType(&a28);
  JUMPOUT(0x22280EFFCLL);
}

void sub_22280EFC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::exception_ptr a24)
{
  std::exception_ptr::~exception_ptr(&a24);
  __cxa_end_catch();
  JUMPOUT(0x22280EFD0);
}

void *std::tuple<unsigned long,std::vector<float>,marrs::qr::inference_engine::LSTMDecoderInputType>::~tuple(void *a1)
{
  marrs::qr::inference_engine::LSTMDecoderInputType::~LSTMDecoderInputType((a1 + 4));
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void marrs::qr::inference_engine::EspressoQueryRewriteModel::logMetrics(marrs::qr::inference_engine::EspressoQueryRewriteModel *this, int a2)
{
  v265 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v263, "[ ");
  v4 = *(this + 36);
  v5 = *(this + 37);
  for (i = 0.0; v4 != v5; ++v4)
  {
    v7 = *v4 / 1000.0;
    std::to_string(&v261, v7);
    v8 = std::string::append(&v261, " ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v262.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v262.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if ((v262.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v262;
    }

    else
    {
      v10 = v262.__r_.__value_.__r.__words[0];
    }

    if ((v262.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v262.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v262.__r_.__value_.__l.__size_;
    }

    std::string::append(&v263, v10, size);
    if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v262.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v261.__r_.__value_.__l.__data_);
    }

    i = v7 + i;
  }

  std::string::append(&v263, "]");
  v12 = a2;
  if (a2 >= 1)
  {
    std::to_string(&v264, i / v12);
    v13 = std::string::insert(&v264, 0, " Avg: ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v261.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v261.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v261, " ms");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v262.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v262.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if ((v262.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v262;
    }

    else
    {
      v17 = v262.__r_.__value_.__r.__words[0];
    }

    if ((v262.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v262.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v262.__r_.__value_.__l.__size_;
    }

    std::string::append(&v263, v17, v18);
    if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v262.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v261.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v264.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v262, "[ ");
  v19 = *(this + 39);
  v20 = *(this + 40);
  for (j = 0.0; v19 != v20; ++v19)
  {
    v22 = *v19 / 1000.0;
    std::to_string(&v264, v22);
    v23 = std::string::append(&v264, " ");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v261.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v261.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if ((v261.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v261;
    }

    else
    {
      v25 = v261.__r_.__value_.__r.__words[0];
    }

    if ((v261.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v261.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v261.__r_.__value_.__l.__size_;
    }

    std::string::append(&v262, v25, v26);
    if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v261.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v264.__r_.__value_.__l.__data_);
    }

    j = v22 + j;
  }

  std::string::append(&v262, "]");
  if (a2 >= 1)
  {
    std::to_string(&v260, j / v12);
    v27 = std::string::insert(&v260, 0, " Avg: ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v264.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v264.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v264, " ms");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v261.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v261.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if ((v261.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v261;
    }

    else
    {
      v31 = v261.__r_.__value_.__r.__words[0];
    }

    if ((v261.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v261.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v261.__r_.__value_.__l.__size_;
    }

    std::string::append(&v262, v31, v32);
    if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v261.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v264.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v260.__r_.__value_.__l.__data_);
    }
  }

  os_log_create("com.apple.siri", "QR");
  std::to_string(&v204, *(this + 5) / 1000.0);
  v33 = std::string::insert(&v204, 0, "\nQueryRewrite:\n      Initialize Embedder Input: ");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v205.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v205.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v205, " ms\n");
  v36 = *&v35->__r_.__value_.__l.__data_;
  v206.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&v206.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = std::string::append(&v206, "      Embedder Inference\n");
  v38 = *&v37->__r_.__value_.__l.__data_;
  v207.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v207.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v39 = std::string::append(&v207, "          Preprocessing-Reshape: ");
  v40 = *&v39->__r_.__value_.__l.__data_;
  v208.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v208.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v203, *(this + 7) / 1000.0);
  if ((v203.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v203;
  }

  else
  {
    v41 = v203.__r_.__value_.__r.__words[0];
  }

  if ((v203.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v203.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v203.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v208, v41, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  v209.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&v209.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = std::string::append(&v209, " ms\n");
  v46 = *&v45->__r_.__value_.__l.__data_;
  v210.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v210.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  v47 = std::string::append(&v210, "          Preprocessing-BuildPlan: ");
  v48 = *&v47->__r_.__value_.__l.__data_;
  v211.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
  *&v211.__r_.__value_.__l.__data_ = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v202, *(this + 9) / 1000.0);
  if ((v202.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &v202;
  }

  else
  {
    v49 = v202.__r_.__value_.__r.__words[0];
  }

  if ((v202.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(v202.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v202.__r_.__value_.__l.__size_;
  }

  v51 = std::string::append(&v211, v49, v50);
  v52 = *&v51->__r_.__value_.__l.__data_;
  v212.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
  *&v212.__r_.__value_.__l.__data_ = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  v53 = std::string::append(&v212, " ms\n");
  v54 = *&v53->__r_.__value_.__l.__data_;
  v213.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
  *&v213.__r_.__value_.__l.__data_ = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  v55 = std::string::append(&v213, "          Forward Call: ");
  v56 = *&v55->__r_.__value_.__l.__data_;
  v214.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
  *&v214.__r_.__value_.__l.__data_ = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v201, *(this + 11) / 1000.0);
  if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = &v201;
  }

  else
  {
    v57 = v201.__r_.__value_.__r.__words[0];
  }

  if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = HIBYTE(v201.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v58 = v201.__r_.__value_.__l.__size_;
  }

  v59 = std::string::append(&v214, v57, v58);
  v60 = *&v59->__r_.__value_.__l.__data_;
  v215.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
  *&v215.__r_.__value_.__l.__data_ = v60;
  v59->__r_.__value_.__l.__size_ = 0;
  v59->__r_.__value_.__r.__words[2] = 0;
  v59->__r_.__value_.__r.__words[0] = 0;
  v61 = std::string::append(&v215, " ms\n");
  v62 = *&v61->__r_.__value_.__l.__data_;
  v216.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
  *&v216.__r_.__value_.__l.__data_ = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  v63 = std::string::append(&v216, "          Postprocessing: ");
  v64 = *&v63->__r_.__value_.__l.__data_;
  v217.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
  *&v217.__r_.__value_.__l.__data_ = v64;
  v63->__r_.__value_.__l.__size_ = 0;
  v63->__r_.__value_.__r.__words[2] = 0;
  v63->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v200, *(this + 13) / 1000.0);
  if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = &v200;
  }

  else
  {
    v65 = v200.__r_.__value_.__r.__words[0];
  }

  if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = HIBYTE(v200.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v66 = v200.__r_.__value_.__l.__size_;
  }

  v67 = std::string::append(&v217, v65, v66);
  v68 = *&v67->__r_.__value_.__l.__data_;
  v218.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
  *&v218.__r_.__value_.__l.__data_ = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  v69 = std::string::append(&v218, " ms\n");
  v70 = *&v69->__r_.__value_.__l.__data_;
  v219.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
  *&v219.__r_.__value_.__l.__data_ = v70;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  v71 = std::string::append(&v219, "      Encoder Inference\n");
  v72 = *&v71->__r_.__value_.__l.__data_;
  v220.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
  *&v220.__r_.__value_.__l.__data_ = v72;
  v71->__r_.__value_.__l.__size_ = 0;
  v71->__r_.__value_.__r.__words[2] = 0;
  v71->__r_.__value_.__r.__words[0] = 0;
  v73 = std::string::append(&v220, "          Preprocessing-Reshape: ");
  v74 = *&v73->__r_.__value_.__l.__data_;
  v221.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
  *&v221.__r_.__value_.__l.__data_ = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v199, *(this + 25) / 1000.0);
  if ((v199.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v75 = &v199;
  }

  else
  {
    v75 = v199.__r_.__value_.__r.__words[0];
  }

  if ((v199.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v76 = HIBYTE(v199.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v76 = v199.__r_.__value_.__l.__size_;
  }

  v77 = std::string::append(&v221, v75, v76);
  v78 = *&v77->__r_.__value_.__l.__data_;
  v222.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
  *&v222.__r_.__value_.__l.__data_ = v78;
  v77->__r_.__value_.__l.__size_ = 0;
  v77->__r_.__value_.__r.__words[2] = 0;
  v77->__r_.__value_.__r.__words[0] = 0;
  v79 = std::string::append(&v222, " ms\n");
  v80 = *&v79->__r_.__value_.__l.__data_;
  v223.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
  *&v223.__r_.__value_.__l.__data_ = v80;
  v79->__r_.__value_.__l.__size_ = 0;
  v79->__r_.__value_.__r.__words[2] = 0;
  v79->__r_.__value_.__r.__words[0] = 0;
  v81 = std::string::append(&v223, "          Preprocessing-BuildPlan: ");
  v82 = *&v81->__r_.__value_.__l.__data_;
  v224.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
  *&v224.__r_.__value_.__l.__data_ = v82;
  v81->__r_.__value_.__l.__size_ = 0;
  v81->__r_.__value_.__r.__words[2] = 0;
  v81->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v198, *(this + 27) / 1000.0);
  if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v83 = &v198;
  }

  else
  {
    v83 = v198.__r_.__value_.__r.__words[0];
  }

  if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v84 = v198.__r_.__value_.__l.__size_;
  }

  v85 = std::string::append(&v224, v83, v84);
  v86 = *&v85->__r_.__value_.__l.__data_;
  v225.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
  *&v225.__r_.__value_.__l.__data_ = v86;
  v85->__r_.__value_.__l.__size_ = 0;
  v85->__r_.__value_.__r.__words[2] = 0;
  v85->__r_.__value_.__r.__words[0] = 0;
  v87 = std::string::append(&v225, " ms\n");
  v88 = *&v87->__r_.__value_.__l.__data_;
  v226.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
  *&v226.__r_.__value_.__l.__data_ = v88;
  v87->__r_.__value_.__l.__size_ = 0;
  v87->__r_.__value_.__r.__words[2] = 0;
  v87->__r_.__value_.__r.__words[0] = 0;
  v89 = std::string::append(&v226, "          Forward Call: ");
  v90 = *&v89->__r_.__value_.__l.__data_;
  v227.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
  *&v227.__r_.__value_.__l.__data_ = v90;
  v89->__r_.__value_.__l.__size_ = 0;
  v89->__r_.__value_.__r.__words[2] = 0;
  v89->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v197, *(this + 29) / 1000.0);
  if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = &v197;
  }

  else
  {
    v91 = v197.__r_.__value_.__r.__words[0];
  }

  if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v92 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v92 = v197.__r_.__value_.__l.__size_;
  }

  v93 = std::string::append(&v227, v91, v92);
  v94 = *&v93->__r_.__value_.__l.__data_;
  v228.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
  *&v228.__r_.__value_.__l.__data_ = v94;
  v93->__r_.__value_.__l.__size_ = 0;
  v93->__r_.__value_.__r.__words[2] = 0;
  v93->__r_.__value_.__r.__words[0] = 0;
  v95 = std::string::append(&v228, " ms\n");
  v96 = *&v95->__r_.__value_.__l.__data_;
  v229.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
  *&v229.__r_.__value_.__l.__data_ = v96;
  v95->__r_.__value_.__l.__size_ = 0;
  v95->__r_.__value_.__r.__words[2] = 0;
  v95->__r_.__value_.__r.__words[0] = 0;
  v97 = std::string::append(&v229, "          Postprocessing: ");
  v98 = *&v97->__r_.__value_.__l.__data_;
  v230.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
  *&v230.__r_.__value_.__l.__data_ = v98;
  v97->__r_.__value_.__l.__size_ = 0;
  v97->__r_.__value_.__r.__words[2] = 0;
  v97->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v196, *(this + 31) / 1000.0);
  if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v99 = &v196;
  }

  else
  {
    v99 = v196.__r_.__value_.__r.__words[0];
  }

  if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v100 = HIBYTE(v196.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v100 = v196.__r_.__value_.__l.__size_;
  }

  v101 = std::string::append(&v230, v99, v100);
  v102 = *&v101->__r_.__value_.__l.__data_;
  v231.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
  *&v231.__r_.__value_.__l.__data_ = v102;
  v101->__r_.__value_.__l.__size_ = 0;
  v101->__r_.__value_.__r.__words[2] = 0;
  v101->__r_.__value_.__r.__words[0] = 0;
  v103 = std::string::append(&v231, " ms\n");
  v104 = *&v103->__r_.__value_.__l.__data_;
  v232.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
  *&v232.__r_.__value_.__l.__data_ = v104;
  v103->__r_.__value_.__l.__size_ = 0;
  v103->__r_.__value_.__r.__words[2] = 0;
  v103->__r_.__value_.__r.__words[0] = 0;
  v105 = std::string::append(&v232, "      Decoder Preprocessing-Reshape: ");
  v106 = *&v105->__r_.__value_.__l.__data_;
  v233.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
  *&v233.__r_.__value_.__l.__data_ = v106;
  v105->__r_.__value_.__l.__size_ = 0;
  v105->__r_.__value_.__r.__words[2] = 0;
  v105->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v195, *(this + 33) / 1000.0);
  if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v107 = &v195;
  }

  else
  {
    v107 = v195.__r_.__value_.__r.__words[0];
  }

  if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v108 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v108 = v195.__r_.__value_.__l.__size_;
  }

  v109 = std::string::append(&v233, v107, v108);
  v110 = *&v109->__r_.__value_.__l.__data_;
  v234.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
  *&v234.__r_.__value_.__l.__data_ = v110;
  v109->__r_.__value_.__l.__size_ = 0;
  v109->__r_.__value_.__r.__words[2] = 0;
  v109->__r_.__value_.__r.__words[0] = 0;
  v111 = std::string::append(&v234, " ms\n");
  v112 = *&v111->__r_.__value_.__l.__data_;
  v235.__r_.__value_.__r.__words[2] = v111->__r_.__value_.__r.__words[2];
  *&v235.__r_.__value_.__l.__data_ = v112;
  v111->__r_.__value_.__l.__size_ = 0;
  v111->__r_.__value_.__r.__words[2] = 0;
  v111->__r_.__value_.__r.__words[0] = 0;
  v113 = std::string::append(&v235, "      Decoder Preprocessing-BuildPlan: ");
  v114 = *&v113->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v114;
  v113->__r_.__value_.__l.__size_ = 0;
  v113->__r_.__value_.__r.__words[2] = 0;
  v113->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v194, *(this + 35) / 1000.0);
  if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v115 = &v194;
  }

  else
  {
    v115 = v194.__r_.__value_.__r.__words[0];
  }

  if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v116 = HIBYTE(v194.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v116 = v194.__r_.__value_.__l.__size_;
  }

  v117 = std::string::append(&v236, v115, v116);
  v118 = *&v117->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v118;
  v117->__r_.__value_.__l.__size_ = 0;
  v117->__r_.__value_.__r.__words[2] = 0;
  v117->__r_.__value_.__r.__words[0] = 0;
  v119 = std::string::append(&v237, " ms\n");
  v120 = *&v119->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v120;
  v119->__r_.__value_.__l.__size_ = 0;
  v119->__r_.__value_.__r.__words[2] = 0;
  v119->__r_.__value_.__r.__words[0] = 0;
  v121 = std::string::append(&v238, "      Embedder Preprocessing-Reshape: ");
  v122 = *&v121->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v122;
  v121->__r_.__value_.__l.__size_ = 0;
  v121->__r_.__value_.__r.__words[2] = 0;
  v121->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v193, *(this + 51) / 1000.0);
  if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v123 = &v193;
  }

  else
  {
    v123 = v193.__r_.__value_.__r.__words[0];
  }

  if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v124 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v124 = v193.__r_.__value_.__l.__size_;
  }

  v125 = std::string::append(&v239, v123, v124);
  v126 = *&v125->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v126;
  v125->__r_.__value_.__l.__size_ = 0;
  v125->__r_.__value_.__r.__words[2] = 0;
  v125->__r_.__value_.__r.__words[0] = 0;
  v127 = std::string::append(&v240, " ms\n");
  v128 = *&v127->__r_.__value_.__l.__data_;
  v241.__r_.__value_.__r.__words[2] = v127->__r_.__value_.__r.__words[2];
  *&v241.__r_.__value_.__l.__data_ = v128;
  v127->__r_.__value_.__l.__size_ = 0;
  v127->__r_.__value_.__r.__words[2] = 0;
  v127->__r_.__value_.__r.__words[0] = 0;
  v129 = std::string::append(&v241, "      Embedder Preprocessing-BuildPlan: ");
  v130 = *&v129->__r_.__value_.__l.__data_;
  v242.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
  *&v242.__r_.__value_.__l.__data_ = v130;
  v129->__r_.__value_.__l.__size_ = 0;
  v129->__r_.__value_.__r.__words[2] = 0;
  v129->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v192, *(this + 53) / 1000.0);
  if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v131 = &v192;
  }

  else
  {
    v131 = v192.__r_.__value_.__r.__words[0];
  }

  if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v132 = HIBYTE(v192.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v132 = v192.__r_.__value_.__l.__size_;
  }

  v133 = std::string::append(&v242, v131, v132);
  v134 = *&v133->__r_.__value_.__l.__data_;
  v243.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
  *&v243.__r_.__value_.__l.__data_ = v134;
  v133->__r_.__value_.__l.__size_ = 0;
  v133->__r_.__value_.__r.__words[2] = 0;
  v133->__r_.__value_.__r.__words[0] = 0;
  v135 = std::string::append(&v243, " ms\n");
  v136 = *&v135->__r_.__value_.__l.__data_;
  v244.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
  *&v244.__r_.__value_.__l.__data_ = v136;
  v135->__r_.__value_.__l.__size_ = 0;
  v135->__r_.__value_.__r.__words[2] = 0;
  v135->__r_.__value_.__r.__words[0] = 0;
  v137 = std::string::append(&v244, "      Reshape outputs: ");
  v138 = *&v137->__r_.__value_.__l.__data_;
  v245.__r_.__value_.__r.__words[2] = v137->__r_.__value_.__r.__words[2];
  *&v245.__r_.__value_.__l.__data_ = v138;
  v137->__r_.__value_.__l.__size_ = 0;
  v137->__r_.__value_.__r.__words[2] = 0;
  v137->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v191, *(this + 55) / 1000.0);
  if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v139 = &v191;
  }

  else
  {
    v139 = v191.__r_.__value_.__r.__words[0];
  }

  if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v140 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v140 = v191.__r_.__value_.__l.__size_;
  }

  v141 = std::string::append(&v245, v139, v140);
  v142 = *&v141->__r_.__value_.__l.__data_;
  v246.__r_.__value_.__r.__words[2] = v141->__r_.__value_.__r.__words[2];
  *&v246.__r_.__value_.__l.__data_ = v142;
  v141->__r_.__value_.__l.__size_ = 0;
  v141->__r_.__value_.__r.__words[2] = 0;
  v141->__r_.__value_.__r.__words[0] = 0;
  v143 = std::string::append(&v246, " ms\n");
  v144 = *&v143->__r_.__value_.__l.__data_;
  v247.__r_.__value_.__r.__words[2] = v143->__r_.__value_.__r.__words[2];
  *&v247.__r_.__value_.__l.__data_ = v144;
  v143->__r_.__value_.__l.__size_ = 0;
  v143->__r_.__value_.__r.__words[2] = 0;
  v143->__r_.__value_.__r.__words[0] = 0;
  v145 = std::string::append(&v247, "      Decoder Inference Multi-Steps: ");
  v146 = *&v145->__r_.__value_.__l.__data_;
  v248.__r_.__value_.__r.__words[2] = v145->__r_.__value_.__r.__words[2];
  *&v248.__r_.__value_.__l.__data_ = v146;
  v145->__r_.__value_.__l.__size_ = 0;
  v145->__r_.__value_.__r.__words[2] = 0;
  v145->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v190, *(this + 43) / 1000.0);
  if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v147 = &v190;
  }

  else
  {
    v147 = v190.__r_.__value_.__r.__words[0];
  }

  if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v148 = HIBYTE(v190.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v148 = v190.__r_.__value_.__l.__size_;
  }

  v149 = std::string::append(&v248, v147, v148);
  v150 = *&v149->__r_.__value_.__l.__data_;
  v249.__r_.__value_.__r.__words[2] = v149->__r_.__value_.__r.__words[2];
  *&v249.__r_.__value_.__l.__data_ = v150;
  v149->__r_.__value_.__l.__size_ = 0;
  v149->__r_.__value_.__r.__words[2] = 0;
  v149->__r_.__value_.__r.__words[0] = 0;
  v151 = std::string::append(&v249, " ms\n");
  v152 = *&v151->__r_.__value_.__l.__data_;
  v250.__r_.__value_.__r.__words[2] = v151->__r_.__value_.__r.__words[2];
  *&v250.__r_.__value_.__l.__data_ = v152;
  v151->__r_.__value_.__l.__size_ = 0;
  v151->__r_.__value_.__r.__words[2] = 0;
  v151->__r_.__value_.__r.__words[0] = 0;
  v153 = std::string::append(&v250, "          Embedder Forward Calls: ");
  v154 = *&v153->__r_.__value_.__l.__data_;
  v251.__r_.__value_.__r.__words[2] = v153->__r_.__value_.__r.__words[2];
  *&v251.__r_.__value_.__l.__data_ = v154;
  v153->__r_.__value_.__l.__size_ = 0;
  v153->__r_.__value_.__r.__words[2] = 0;
  v153->__r_.__value_.__r.__words[0] = 0;
  if ((v263.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v155 = &v263;
  }

  else
  {
    v155 = v263.__r_.__value_.__r.__words[0];
  }

  if ((v263.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v156 = HIBYTE(v263.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v156 = v263.__r_.__value_.__l.__size_;
  }

  v157 = std::string::append(&v251, v155, v156);
  v158 = *&v157->__r_.__value_.__l.__data_;
  v252.__r_.__value_.__r.__words[2] = v157->__r_.__value_.__r.__words[2];
  *&v252.__r_.__value_.__l.__data_ = v158;
  v157->__r_.__value_.__l.__size_ = 0;
  v157->__r_.__value_.__r.__words[2] = 0;
  v157->__r_.__value_.__r.__words[0] = 0;
  v159 = std::string::append(&v252, "\n");
  v160 = *&v159->__r_.__value_.__l.__data_;
  v253.__r_.__value_.__r.__words[2] = v159->__r_.__value_.__r.__words[2];
  *&v253.__r_.__value_.__l.__data_ = v160;
  v159->__r_.__value_.__l.__size_ = 0;
  v159->__r_.__value_.__r.__words[2] = 0;
  v159->__r_.__value_.__r.__words[0] = 0;
  v161 = std::string::append(&v253, "          Decoder Forward Calls: ");
  v162 = *&v161->__r_.__value_.__l.__data_;
  v254.__r_.__value_.__r.__words[2] = v161->__r_.__value_.__r.__words[2];
  *&v254.__r_.__value_.__l.__data_ = v162;
  v161->__r_.__value_.__l.__size_ = 0;
  v161->__r_.__value_.__r.__words[2] = 0;
  v161->__r_.__value_.__r.__words[0] = 0;
  if ((v262.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v163 = &v262;
  }

  else
  {
    v163 = v262.__r_.__value_.__r.__words[0];
  }

  if ((v262.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v164 = HIBYTE(v262.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v164 = v262.__r_.__value_.__l.__size_;
  }

  v165 = std::string::append(&v254, v163, v164);
  v166 = *&v165->__r_.__value_.__l.__data_;
  v255.__r_.__value_.__r.__words[2] = v165->__r_.__value_.__r.__words[2];
  *&v255.__r_.__value_.__l.__data_ = v166;
  v165->__r_.__value_.__l.__size_ = 0;
  v165->__r_.__value_.__r.__words[2] = 0;
  v165->__r_.__value_.__r.__words[0] = 0;
  v167 = std::string::append(&v255, "\n");
  v168 = *&v167->__r_.__value_.__l.__data_;
  v256.__r_.__value_.__r.__words[2] = v167->__r_.__value_.__r.__words[2];
  *&v256.__r_.__value_.__l.__data_ = v168;
  v167->__r_.__value_.__l.__size_ = 0;
  v167->__r_.__value_.__r.__words[2] = 0;
  v167->__r_.__value_.__r.__words[0] = 0;
  v169 = std::string::append(&v256, "      Number of decoder steps: ");
  v170 = *&v169->__r_.__value_.__l.__data_;
  v257.__r_.__value_.__r.__words[2] = v169->__r_.__value_.__r.__words[2];
  *&v257.__r_.__value_.__l.__data_ = v170;
  v169->__r_.__value_.__l.__size_ = 0;
  v169->__r_.__value_.__r.__words[2] = 0;
  v169->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v189, a2);
  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v171 = &v189;
  }

  else
  {
    v171 = v189.__r_.__value_.__r.__words[0];
  }

  if ((v189.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v172 = HIBYTE(v189.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v172 = v189.__r_.__value_.__l.__size_;
  }

  v173 = std::string::append(&v257, v171, v172);
  v174 = *&v173->__r_.__value_.__l.__data_;
  v258.__r_.__value_.__r.__words[2] = v173->__r_.__value_.__r.__words[2];
  *&v258.__r_.__value_.__l.__data_ = v174;
  v173->__r_.__value_.__l.__size_ = 0;
  v173->__r_.__value_.__r.__words[2] = 0;
  v173->__r_.__value_.__r.__words[0] = 0;
  v175 = std::string::append(&v258, "\n");
  v176 = *&v175->__r_.__value_.__l.__data_;
  v259.__r_.__value_.__r.__words[2] = v175->__r_.__value_.__r.__words[2];
  *&v259.__r_.__value_.__l.__data_ = v176;
  v175->__r_.__value_.__l.__size_ = 0;
  v175->__r_.__value_.__r.__words[2] = 0;
  v175->__r_.__value_.__r.__words[0] = 0;
  v177 = std::string::append(&v259, "      Decoder Postprocessing: ");
  v178 = *&v177->__r_.__value_.__l.__data_;
  v260.__r_.__value_.__r.__words[2] = v177->__r_.__value_.__r.__words[2];
  *&v260.__r_.__value_.__l.__data_ = v178;
  v177->__r_.__value_.__l.__size_ = 0;
  v177->__r_.__value_.__r.__words[2] = 0;
  v177->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v188, *(this + 49) / 1000.0);
  if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v179 = &v188;
  }

  else
  {
    v179 = v188.__r_.__value_.__r.__words[0];
  }

  if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v180 = HIBYTE(v188.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v180 = v188.__r_.__value_.__l.__size_;
  }

  v181 = std::string::append(&v260, v179, v180);
  v182 = *&v181->__r_.__value_.__l.__data_;
  v264.__r_.__value_.__r.__words[2] = v181->__r_.__value_.__r.__words[2];
  *&v264.__r_.__value_.__l.__data_ = v182;
  v181->__r_.__value_.__l.__size_ = 0;
  v181->__r_.__value_.__r.__words[2] = 0;
  v181->__r_.__value_.__r.__words[0] = 0;
  v183 = std::string::append(&v264, " ms\n");
  v184 = *&v183->__r_.__value_.__l.__data_;
  v261.__r_.__value_.__r.__words[2] = v183->__r_.__value_.__r.__words[2];
  *&v261.__r_.__value_.__l.__data_ = v184;
  v183->__r_.__value_.__l.__size_ = 0;
  v183->__r_.__value_.__r.__words[2] = 0;
  v183->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v260.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v259.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v258.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v189.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v256.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v255.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v254.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v251.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v250.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v249.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v248.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v247.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v191.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v245.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v244.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v243.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v192.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v193.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v234.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v195.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v233.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v232.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v231.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v229.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v197.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v227.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v224.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v223.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v222.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v199.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v221.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v219.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v218.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v217.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v215.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v201.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v214.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v213.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v210.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v209.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v203.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v207.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v205.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  v185 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v185, OS_LOG_TYPE_DEBUG))
  {
    v187 = &v261;
    if ((v261.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v187 = v261.__r_.__value_.__r.__words[0];
    }

    LODWORD(v264.__r_.__value_.__l.__data_) = 136315394;
    *(v264.__r_.__value_.__r.__words + 4) = "logMetrics";
    WORD2(v264.__r_.__value_.__r.__words[1]) = 2080;
    *(&v264.__r_.__value_.__r.__words[1] + 6) = v187;
    _os_log_debug_impl(&dword_2227A9000, v185, OS_LOG_TYPE_DEBUG, "%s %s", &v264, 0x16u);
  }

  if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v261.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v262.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  v186 = *MEMORY[0x277D85DE8];
}

void sub_222810528(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 233) < 0)
  {
    operator delete(*(v1 - 256));
  }

  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  _Unwind_Resume(a1);
}

void marrs::qr::inference_engine::EspressoQueryRewriteModel::forward(marrs::qr::inference_engine::EspressoQueryRewriteModel *this, std::chrono::steady_clock::time_point *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::once != -1)
  {
    dispatch_once(&marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::once, &__block_literal_global_5);
  }

  v4 = marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::ccqrAerLogContext;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  spid = os_signpost_id_generate(marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::ccqrAerLogContext);
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v4, OS_SIGNPOST_INTERVAL_BEGIN, spid, "RunTokenEmbedding", "CCQRAer Run token embedding", buf, 2u);
  }

  a2[4].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v5 = (a3[1] - *a3) >> 2;
  *buf = 1;
  *&buf[8] = v5;
  v8[1] = 0;
  v9 = 0;
  v8[0] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v8, buf, v14, 2uLL);
}

void sub_222812AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
    if ((v57 & 1) == 0)
    {
LABEL_8:
      a48 = &a29;
      std::vector<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::__destroy_vector::operator()[abi:ne200100](&a48);
      marrs::inference_engine::InferenceTensor::~InferenceTensor(&a33);
      marrs::inference_engine::InferenceTensor::~InferenceTensor(&a39);
      if (a45)
      {
        operator delete(a45);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v57)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v56);
  goto LABEL_8;
}

void sub_222812B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
    if ((v63 & 1) == 0)
    {
LABEL_8:
      marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x310]);
      marrs::inference_engine::InferenceTensor::~InferenceTensor(&a51);
      if (a33)
      {
        operator delete(a33);
      }

      if (a45)
      {
        operator delete(a45);
      }

      JUMPOUT(0x222813CB0);
    }
  }

  else if (!v63)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v62);
  goto LABEL_8;
}

void sub_222813908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void **a51)
{
  v52 = *v51;
  if (*v51)
  {
    *(v51 + 8) = v52;
    operator delete(v52);
  }

  std::__split_buffer<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::~__split_buffer(&STACK[0x350]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x290]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x2C8]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x310]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&a51);
  a51 = &STACK[0x270];
  std::vector<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::__destroy_vector::operator()[abi:ne200100](&a51);
  JUMPOUT(0x222813B78);
}

void sub_222813948()
{
  v1 = *v0;
  if (*v0)
  {
    *(v0 + 8) = v1;
    operator delete(v1);
  }

  STACK[0x278] = v0;
  JUMPOUT(0x222813B10);
}

void sub_2228139B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t *a48)
{
  a48 = &a29;
  std::vector<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::__destroy_vector::operator()[abi:ne200100](&a48);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&a33);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&a39);
  if (a45)
  {
    operator delete(a45);
  }

  JUMPOUT(0x222813CB0);
}

void sub_2228139C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  if (v51)
  {
    operator delete(v51);
  }

  if (STACK[0x350])
  {
    operator delete(STACK[0x350]);
  }

  a51 = &STACK[0x270];
  std::vector<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::__destroy_vector::operator()[abi:ne200100](&a51);
  JUMPOUT(0x222813B78);
}

void sub_222813A00()
{
  if (STACK[0x310])
  {
    operator delete(STACK[0x310]);
  }

  JUMPOUT(0x222813B48);
}

void sub_222813A24()
{
  if (STACK[0x2C8])
  {
    operator delete(STACK[0x2C8]);
  }

  JUMPOUT(0x222813B40);
}

void sub_222813A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v51 = STACK[0x350];
  if (STACK[0x350])
  {
    STACK[0x358] = v51;
    operator delete(v51);
  }

  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x2C8]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x310]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&a51);
  JUMPOUT(0x222813B68);
}

void sub_222813A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x350]);
  JUMPOUT(0x222813B38);
}

void sub_222813A78()
{
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x290]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x350]);
  JUMPOUT(0x222813B38);
}

void sub_222813AAC()
{
  v2 = *v0;
  if (*v0)
  {
    v0[1] = v2;
    operator delete(v2);
  }

  while (v0 != v1)
  {
    v0 -= 6;
    std::allocator<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::destroy[abi:ne200100](v0);
  }

  JUMPOUT(0x222813AECLL);
}

void sub_222813B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x2C8]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&STACK[0x310]);
  marrs::inference_engine::InferenceTensor::~InferenceTensor(&a51);
  JUMPOUT(0x222813B68);
}

void sub_222813C14()
{
  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v1)
  {
LABEL_8:
    MEMORY[0x223DC1F40](&STACK[0x290]);
    __cxa_end_catch();
    JUMPOUT(0x222813C78);
  }

  __cxa_free_exception(v0);
  goto LABEL_8;
}

void sub_222813CA8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x222813CB0);
  }

  __clang_call_terminate(a1);
}

uint64_t std::tuple<std::vector<float>,std::vector<unsigned long>,marrs::qr::inference_engine::LSTMDecoderInputType>::~tuple(uint64_t a1)
{
  marrs::qr::inference_engine::LSTMDecoderInputType::~LSTMDecoderInputType((a1 + 48));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::qr::inference_engine::EspressoQueryRewriteModelOutputType>,marrs::qr::inference_engine::EspressoQueryRewriteModelOutputType*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 32);
        v4 -= 32;
        v5 = v6;
        if (v6)
        {
          *(v2 - 24) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,5ul>>>(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t marrs::mrr::mr::logFeatureVectorArray<5ul>(uint64_t *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "feature ", 8);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v5, v6);
  std::ios_base::getloc((&v24 + *(v24 - 24)));
  v7 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v8 = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    v10 = 0;
    v11 = MEMORY[0x277D82680];
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "(", 1);
      v12 = MEMORY[0x223DC2130](&v24, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") - ", 4);
      v13 = 0;
      v14 = v8 + 20;
      do
      {
        v15 = *(v8 + v13);
        v16 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", ", 2);
        v13 += 4;
      }

      while (v13 != 20);
      std::ios_base::getloc((&v24 + *(v24 - 24)));
      v17 = std::locale::use_facet(__p, v11);
      (v17->__vftable[2].~facet_0)(v17, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
      v10 = (v10 + 1);
      v8 += 20;
    }

    while (v14 != v9);
  }

  v18 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    std::stringbuf::str();
    v19 = v23 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v30 = v19;
    _os_log_impl(&dword_2227A9000, v18, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v24 = *MEMORY[0x277D82828];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x277D82828] + 24);
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  result = MEMORY[0x223DC2270](&v28);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22281417C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_222814300(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x223DC2270](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x223DC2270](a1 + 112);
  return a1;
}

void marrs::mrr::mr::fetchNeighboringEntities(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1;
  v54 = 0;
  v55 = 0uLL;
  v7 = *a4;
  v6 = a4[1];
  v8 = 0x6DB6DB6DB6DB6DB7;
  if (v6 == *a4)
  {
    v11 = 0;
    v38 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 80) + (*(a2 + 88) * 0.5);
    v14 = *(a2 + 84) + (*(a2 + 92) * 0.5);
    do
    {
      if (v12 != a3)
      {
        v15 = (v7 + 216 * v12);
        v16 = ((v15[20] + (v15[22] * 0.5)) - v13);
        v17 = ((v15[21] + (v15[23] * 0.5)) - v14);
        v18 = v16 * v16 + v17 * v17;
        if (v11 >= *(&v55 + 1))
        {
          v19 = ((v11 - v54) >> 5) * v8;
          v20 = v19 + 1;
          if ((v19 + 1) > 0x124924924924924)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v21 = v8;
          v22 = ((*(&v55 + 1) - v54) >> 5) * v8;
          if (2 * v22 > v20)
          {
            v20 = 2 * v22;
          }

          if (v22 >= 0x92492492492492)
          {
            v23 = 0x124924924924924;
          }

          else
          {
            v23 = v20;
          }

          v59 = &v54;
          if (v23)
          {
            if (v23 <= 0x124924924924924)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v56 = 0;
          v57 = 224 * v19;
          v58 = (224 * v19);
          *(marrs::mrr::mr::MRREntity::MRREntity((224 * v19), v15) + 54) = v18;
          *&v58 = v58 + 224;
          v24 = v54;
          v25 = v55;
          v26 = (v54 + v57 - v55);
          v8 = v21;
          if (v54 != v55)
          {
            v27 = v54;
            v28 = v54 + v57 - v55;
            do
            {
              *v28 = *v27;
              v29 = *(v27 + 1);
              *(v28 + 3) = v27[3];
              *(v28 + 8) = v29;
              v27[2] = 0;
              v27[3] = 0;
              v27[1] = 0;
              v30 = *(v27 + 2);
              *(v28 + 6) = v27[6];
              *(v28 + 2) = v30;
              v27[5] = 0;
              v27[6] = 0;
              v27[4] = 0;
              v31 = *(v27 + 7);
              *(v28 + 9) = v27[9];
              *(v28 + 56) = v31;
              v27[8] = 0;
              v27[9] = 0;
              v27[7] = 0;
              v32 = *(v27 + 5);
              *(v28 + 92) = *(v27 + 92);
              *(v28 + 5) = v32;
              *(v28 + 15) = 0;
              *(v28 + 16) = 0;
              *(v28 + 14) = 0;
              *(v28 + 7) = *(v27 + 7);
              *(v28 + 16) = v27[16];
              v27[14] = 0;
              v27[15] = 0;
              v27[16] = 0;
              v33 = *(v27 + 17);
              *(v28 + 19) = v27[19];
              *(v28 + 136) = v33;
              v27[18] = 0;
              v27[19] = 0;
              v27[17] = 0;
              *(v28 + 40) = *(v27 + 40);
              v34 = *(v27 + 21);
              *(v28 + 23) = v27[23];
              *(v28 + 168) = v34;
              v27[22] = 0;
              v27[23] = 0;
              v27[21] = 0;
              *(v28 + 24) = 0;
              *(v28 + 25) = 0;
              *(v28 + 26) = 0;
              *(v28 + 12) = *(v27 + 12);
              *(v28 + 26) = v27[26];
              v27[24] = 0;
              v27[25] = 0;
              v27[26] = 0;
              *(v28 + 54) = *(v27 + 54);
              v27 += 28;
              v28 += 224;
            }

            while (v27 != v25);
            do
            {
              marrs::mrr::mr::MRREntity::~MRREntity(v24);
              v24 = (v35 + 224);
            }

            while (v24 != v25);
          }

          v36 = v54;
          v37 = *(&v55 + 1);
          v54 = v26;
          v50 = v58;
          v55 = v58;
          *&v58 = v36;
          *(&v58 + 1) = v37;
          v56 = v36;
          v57 = v36;
          std::__split_buffer<marrs::mrr::mr::EntityWithDistance>::~__split_buffer(&v56);
          v11 = v50;
        }

        else
        {
          marrs::mrr::mr::MRREntity::MRREntity(v11, (v7 + 216 * v12));
          v11[54] = v18;
          v11 += 56;
        }

        *&v55 = v11;
        v7 = *a4;
        v6 = a4[1];
      }

      ++v12;
    }

    while (v12 < 0x84BDA12F684BDA13 * ((v6 - v7) >> 3));
    v38 = v54;
    v5 = a1;
  }

  v39 = 126 - 2 * __clz(((v11 - v38) >> 5) * v8);
  if (v11 == v38)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *,false>(v38, v11, v40, 1);
  v56 = 0;
  v57 = 0;
  *&v58 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v42 = v54;
  v41 = v55;
  if (v54 == v55)
  {
    v48 = 0;
    v47 = 0;
  }

  else
  {
    do
    {
      if (*v42 == *a2)
      {
        v43 = v57;
        if (v57 >= v58)
        {
          v44 = std::vector<marrs::mrr::mr::MRREntity>::__emplace_back_slow_path<marrs::mrr::mr::MRREntity&>(&v56, v42);
        }

        else
        {
          marrs::mrr::mr::MRREntity::MRREntity(v57, v42);
          v44 = (v43 + 216);
        }

        v57 = v44;
      }

      else
      {
        v45 = v52;
        if (v52 >= v53)
        {
          v46 = std::vector<marrs::mrr::mr::MRREntity>::__emplace_back_slow_path<marrs::mrr::mr::MRREntity&>(&v51, v42);
        }

        else
        {
          marrs::mrr::mr::MRREntity::MRREntity(v52, v42);
          v46 = (v45 + 216);
        }

        v52 = v46;
      }

      v42 = (v42 + 224);
    }

    while (v42 != v41);
    v47 = v51;
    v48 = v52;
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  std::vector<marrs::mrr::mr::MRREntity>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRREntity*,marrs::mrr::mr::MRREntity*>(v5, v47, v48, 0x84BDA12F684BDA13 * ((v48 - v47) >> 3));
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  std::vector<marrs::mrr::mr::MRREntity>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRREntity*,marrs::mrr::mr::MRREntity*>((v5 + 3), v56, v57, 0x84BDA12F684BDA13 * ((v57 - v56) >> 3));
  v60 = &v51;
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](&v60);
  v51 = &v56;
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](&v51);
  v56 = &v54;
  std::vector<marrs::mrr::mr::EntityWithDistance>::__destroy_vector::operator()[abi:ne200100](&v56);
}

void sub_222814914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void ***a25)
{
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](&a25);
  a25 = &a14;
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](&a25);
  a14 = &a20;
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = &a17;
  std::vector<marrs::mrr::mr::EntityWithDistance>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *,false>(uint64_t a1, float *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v149 = a2 - 114;
    v150 = (a2 - 56);
    v8 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v8;
        v9 = a2 - v8;
        v10 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v8) >> 5);
        v11 = v10 - 2;
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              v76 = *(a1 + 440);
              v77 = *(a2 - 2);
              if (v76 >= *(a1 + 216))
              {
                if (v77 >= v76)
                {
                  return;
                }

                v74 = a1 + 224;
                v75 = (a2 - 56);
                goto LABEL_225;
              }

              if (v77 < v76)
              {
                goto LABEL_131;
              }

              std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1, a1 + 224);
              if (*(a2 - 2) >= *(a1 + 440))
              {
                return;
              }

              v78 = a1 + 224;
LABEL_132:
              v79 = (a2 - 56);
LABEL_133:

              std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v78, v79);
              return;
            case 4:

              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *,0>(a1, a1 + 224, a1 + 448, v150);
              return;
            case 5:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *,0>(a1, a1 + 224, a1 + 448, a1 + 672);
              if (*(a2 - 2) >= *(a1 + 888))
              {
                return;
              }

              std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1 + 672, v150);
              if (*(a1 + 888) >= *(a1 + 664))
              {
                return;
              }

              std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1 + 448, a1 + 672);
              if (*(a1 + 664) >= *(a1 + 440))
              {
                return;
              }

              v74 = a1 + 224;
              v75 = a1 + 448;
LABEL_225:
              std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v74, v75);
              if (*(a1 + 440) >= *(a1 + 216))
              {
                return;
              }

              v79 = a1 + 224;
              v78 = a1;
              goto LABEL_133;
          }
        }

        else
        {
          if (v10 < 2)
          {
            return;
          }

          if (v10 == 2)
          {
            if (*(a2 - 2) >= *(a1 + 216))
            {
              return;
            }

LABEL_131:
            v78 = a1;
            goto LABEL_132;
          }
        }

        if (v9 <= 5375)
        {
          if (a4)
          {
            if (a1 != a2)
            {
              v80 = (a1 + 224);
              if ((a1 + 224) != a2)
              {
                v81 = 0;
                v82 = a1;
                do
                {
                  v83 = v80;
                  v84 = *(v82 + 440);
                  if (v84 < *(v82 + 216))
                  {
                    v85 = *v80;
                    v171 = *(v82 + 232);
                    v172 = *(v82 + 248);
                    *(v82 + 232) = 0;
                    *(v82 + 240) = 0;
                    v173 = *(v82 + 256);
                    v174 = *(v82 + 272);
                    *(v82 + 248) = 0;
                    *(v82 + 256) = 0;
                    *(v82 + 264) = 0;
                    *(v82 + 272) = 0;
                    v86 = *(v82 + 280);
                    v176 = *(v82 + 296);
                    v175 = v86;
                    *(v82 + 280) = 0;
                    *(v82 + 288) = 0;
                    *(v82 + 296) = 0;
                    v87 = *(v82 + 304);
                    *(v177 + 12) = *(v82 + 316);
                    v177[0] = v87;
                    v178 = *(v82 + 336);
                    v88 = *(v82 + 352);
                    v170 = v85;
                    v179 = v88;
                    *(v82 + 336) = 0;
                    *(v82 + 344) = 0;
                    v89 = *(v82 + 360);
                    v181 = *(v82 + 376);
                    v180 = v89;
                    *(v82 + 352) = 0;
                    *(v82 + 360) = 0;
                    *(v82 + 368) = 0;
                    *(v82 + 376) = 0;
                    v182 = *(v82 + 384);
                    v90 = *(v82 + 392);
                    v184 = *(v82 + 408);
                    __p = v90;
                    *(v82 + 392) = 0;
                    *(v82 + 400) = 0;
                    v185 = *(v82 + 416);
                    v186 = *(v82 + 432);
                    *(v82 + 408) = 0;
                    *(v82 + 416) = 0;
                    *(v82 + 424) = 0;
                    *(v82 + 432) = 0;
                    v91 = v81;
                    v187 = v84;
                    while (1)
                    {
                      v92 = a1 + v91;
                      marrs::mrr::mr::MRREntity::operator=(a1 + v91 + 224, a1 + v91);
                      *(a1 + v91 + 440) = *(a1 + v91 + 216);
                      if (!v91)
                      {
                        break;
                      }

                      v91 -= 224;
                      if (v187 >= *(v92 - 8))
                      {
                        v93 = a1 + v91 + 224;
                        goto LABEL_149;
                      }
                    }

                    v93 = a1;
LABEL_149:
                    v94 = marrs::mrr::mr::MRREntity::operator=(v93, &v170);
                    *(v94 + 216) = v187;
                    v151 = &v185;
                    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v151);
                    if (SHIBYTE(v184) < 0)
                    {
                      operator delete(__p);
                    }

                    if (SHIBYTE(v181) < 0)
                    {
                      operator delete(v180);
                    }

                    v151 = &v178;
                    std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v151);
                    if (SHIBYTE(v176) < 0)
                    {
                      operator delete(v175);
                    }

                    if (SHIBYTE(v174) < 0)
                    {
                      operator delete(v173);
                    }

                    if (SHIBYTE(v172) < 0)
                    {
                      operator delete(v171);
                    }
                  }

                  v80 = v83 + 28;
                  v81 += 224;
                  v82 = v83;
                }

                while (v83 + 28 != a2);
              }
            }
          }

          else if (a1 != a2)
          {
            v139 = (a1 + 224);
            if ((a1 + 224) != a2)
            {
              do
              {
                v140 = v139;
                v141 = *(a1 + 440);
                if (v141 < *(a1 + 216))
                {
                  v142 = *v139;
                  v171 = *(a1 + 232);
                  v172 = *(a1 + 248);
                  *(a1 + 232) = 0;
                  *(a1 + 240) = 0;
                  v173 = *(a1 + 256);
                  v174 = *(a1 + 272);
                  *(a1 + 248) = 0;
                  *(a1 + 256) = 0;
                  *(a1 + 264) = 0;
                  *(a1 + 272) = 0;
                  v143 = *(a1 + 280);
                  v176 = *(a1 + 296);
                  v175 = v143;
                  *(a1 + 280) = 0;
                  *(a1 + 288) = 0;
                  *(a1 + 296) = 0;
                  v144 = *(a1 + 304);
                  *(v177 + 12) = *(a1 + 316);
                  v177[0] = v144;
                  v178 = *(a1 + 336);
                  v145 = *(a1 + 352);
                  v170 = v142;
                  v179 = v145;
                  *(a1 + 336) = 0;
                  *(a1 + 344) = 0;
                  v146 = *(a1 + 360);
                  v181 = *(a1 + 376);
                  v180 = v146;
                  *(a1 + 352) = 0;
                  *(a1 + 360) = 0;
                  *(a1 + 368) = 0;
                  *(a1 + 376) = 0;
                  v182 = *(a1 + 384);
                  v147 = *(a1 + 392);
                  v184 = *(a1 + 408);
                  __p = v147;
                  *(a1 + 392) = 0;
                  *(a1 + 400) = 0;
                  v185 = *(a1 + 416);
                  v186 = *(a1 + 432);
                  *(a1 + 408) = 0;
                  *(a1 + 416) = 0;
                  *(a1 + 424) = 0;
                  *(a1 + 432) = 0;
                  v187 = v141;
                  do
                  {
                    v148 = a1;
                    marrs::mrr::mr::MRREntity::operator=(a1 + 224, a1);
                    *(a1 + 440) = *(a1 + 216);
                    a1 -= 224;
                  }

                  while (v187 < *(v148 - 8));
                  marrs::mrr::mr::MRREntity::operator=(v148, &v170);
                  *(v148 + 216) = v187;
                  v151 = &v185;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v151);
                  if (SHIBYTE(v184) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v181) < 0)
                  {
                    operator delete(v180);
                  }

                  v151 = &v178;
                  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v151);
                  if (SHIBYTE(v176) < 0)
                  {
                    operator delete(v175);
                  }

                  if (SHIBYTE(v174) < 0)
                  {
                    operator delete(v173);
                  }

                  if (SHIBYTE(v172) < 0)
                  {
                    operator delete(v171);
                  }
                }

                v139 = v140 + 28;
                a1 = v140;
              }

              while (v140 + 28 != a2);
            }
          }

          return;
        }

        if (!a3)
        {
          if (a1 != a2)
          {
            v95 = v11 >> 1;
            v96 = v11 >> 1;
            do
            {
              v97 = v96;
              if (v95 >= v96)
              {
                v98 = (2 * v96) | 1;
                v99 = a1 + 224 * v98;
                if (2 * v97 + 2 < v10 && *(v99 + 216) < *(v99 + 440))
                {
                  v99 += 224;
                  v98 = 2 * v97 + 2;
                }

                v100 = a1 + 224 * v97;
                v101 = *(v100 + 216);
                if (*(v99 + 216) >= v101)
                {
                  v170 = *v100;
                  v102 = *(v100 + 8);
                  v172 = *(v100 + 24);
                  v171 = v102;
                  *(v100 + 16) = 0;
                  *(v100 + 24) = 0;
                  *(v100 + 8) = 0;
                  v103 = *(v100 + 32);
                  v174 = *(v100 + 48);
                  v173 = v103;
                  *(v100 + 40) = 0;
                  *(v100 + 48) = 0;
                  *(v100 + 32) = 0;
                  v104 = *(v100 + 56);
                  v176 = *(v100 + 72);
                  v175 = v104;
                  *(v100 + 64) = 0;
                  *(v100 + 72) = 0;
                  *(v100 + 56) = 0;
                  v105 = *(v100 + 80);
                  *(v177 + 12) = *(v100 + 92);
                  v177[0] = v105;
                  v178 = *(v100 + 112);
                  v179 = *(v100 + 128);
                  *(v100 + 112) = 0;
                  *(v100 + 120) = 0;
                  *(v100 + 128) = 0;
                  v106 = *(v100 + 136);
                  v181 = *(v100 + 152);
                  v180 = v106;
                  *(v100 + 144) = 0;
                  *(v100 + 152) = 0;
                  *(v100 + 136) = 0;
                  v182 = *(v100 + 160);
                  v107 = *(v100 + 168);
                  v184 = *(v100 + 184);
                  __p = v107;
                  *(v100 + 176) = 0;
                  *(v100 + 184) = 0;
                  *(v100 + 168) = 0;
                  v185 = *(v100 + 192);
                  v186 = *(v100 + 208);
                  *(v100 + 192) = 0;
                  *(v100 + 200) = 0;
                  *(v100 + 208) = 0;
                  v187 = v101;
                  do
                  {
                    v108 = v99;
                    *(marrs::mrr::mr::MRREntity::operator=(v100, v99) + 216) = *(v99 + 216);
                    if (v95 < v98)
                    {
                      break;
                    }

                    v109 = 2 * v98;
                    v98 = (2 * v98) | 1;
                    v99 = a1 + 224 * v98;
                    v110 = v109 + 2;
                    if (v110 < v10 && *(v99 + 216) < *(v99 + 440))
                    {
                      v99 += 224;
                      v98 = v110;
                    }

                    v100 = v108;
                  }

                  while (*(v99 + 216) >= v187);
                  marrs::mrr::mr::MRREntity::operator=(v108, &v170);
                  *(v108 + 216) = v187;
                  v151 = &v185;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v151);
                  if (SHIBYTE(v184) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v181) < 0)
                  {
                    operator delete(v180);
                  }

                  v151 = &v178;
                  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v151);
                  if (SHIBYTE(v176) < 0)
                  {
                    operator delete(v175);
                  }

                  if (SHIBYTE(v174) < 0)
                  {
                    operator delete(v173);
                  }

                  if (SHIBYTE(v172) < 0)
                  {
                    operator delete(v171);
                  }
                }
              }

              v96 = v97 - 1;
            }

            while (v97);
            v111 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 5);
            do
            {
              if (v111 >= 2)
              {
                v112 = 0;
                v151 = *a1;
                v113 = *(a1 + 24);
                v152 = *(a1 + 8);
                v153 = v113;
                *(a1 + 16) = 0;
                *(a1 + 24) = 0;
                *(a1 + 8) = 0;
                v114 = *(a1 + 32);
                v155 = *(a1 + 48);
                v154 = v114;
                *(a1 + 40) = 0;
                *(a1 + 48) = 0;
                *(a1 + 32) = 0;
                v115 = *(a1 + 56);
                v157 = *(a1 + 72);
                v156 = v115;
                *(a1 + 56) = 0;
                *(a1 + 64) = 0;
                *(a1 + 72) = 0;
                v116 = *(a1 + 80);
                *(v158 + 12) = *(a1 + 92);
                v158[0] = v116;
                v159 = *(a1 + 112);
                v160 = *(a1 + 128);
                *(a1 + 112) = 0;
                *(a1 + 120) = 0;
                *(a1 + 128) = 0;
                v117 = *(a1 + 136);
                v162 = *(a1 + 152);
                v161 = v117;
                *(a1 + 136) = 0;
                *(a1 + 144) = 0;
                *(a1 + 152) = 0;
                v163 = *(a1 + 160);
                v118 = *(a1 + 168);
                v165 = *(a1 + 184);
                v164 = v118;
                *(a1 + 168) = 0;
                *(a1 + 176) = 0;
                *(a1 + 184) = 0;
                v166 = *(a1 + 192);
                v167 = *(a1 + 208);
                *(a1 + 192) = 0;
                *(a1 + 200) = 0;
                *(a1 + 208) = 0;
                v119 = a1;
                v168 = *(a1 + 216);
                do
                {
                  v120 = v119 + 224 * v112;
                  v121 = v120 + 224;
                  if (2 * v112 + 2 >= v111)
                  {
                    v112 = (2 * v112) | 1;
                  }

                  else
                  {
                    v122 = *(v120 + 440);
                    v123 = *(v120 + 664);
                    v124 = v120 + 448;
                    if (v122 >= v123)
                    {
                      v112 = (2 * v112) | 1;
                    }

                    else
                    {
                      v121 = v124;
                      v112 = 2 * v112 + 2;
                    }
                  }

                  *(marrs::mrr::mr::MRREntity::operator=(v119, v121) + 216) = *(v121 + 216);
                  v119 = v121;
                }

                while (v112 <= ((v111 - 2) >> 1));
                if (v121 == a2 - 56)
                {
                  marrs::mrr::mr::MRREntity::operator=(v121, &v151);
                  *(v121 + 216) = v168;
                }

                else
                {
                  marrs::mrr::mr::MRREntity::operator=(v121, (a2 - 56));
                  *(v121 + 216) = *(a2 - 2);
                  marrs::mrr::mr::MRREntity::operator=((a2 - 56), &v151);
                  *(a2 - 2) = v168;
                  v125 = v121 - a1 + 224;
                  if (v125 >= 225)
                  {
                    v126 = (0x6DB6DB6DB6DB6DB7 * (v125 >> 5) - 2) >> 1;
                    v127 = a1 + 224 * v126;
                    v128 = *(v121 + 216);
                    if (*(v127 + 216) < v128)
                    {
                      v129 = *v121;
                      v130 = *(v121 + 24);
                      v171 = *(v121 + 8);
                      v172 = v130;
                      *(v121 + 16) = 0;
                      *(v121 + 24) = 0;
                      *(v121 + 8) = 0;
                      v131 = *(v121 + 32);
                      v174 = *(v121 + 48);
                      v173 = v131;
                      *(v121 + 40) = 0;
                      *(v121 + 48) = 0;
                      *(v121 + 32) = 0;
                      v132 = *(v121 + 56);
                      v176 = *(v121 + 72);
                      v175 = v132;
                      *(v121 + 56) = 0;
                      *(v121 + 64) = 0;
                      *(v121 + 72) = 0;
                      v133 = *(v121 + 80);
                      *(v177 + 12) = *(v121 + 92);
                      v177[0] = v133;
                      v178 = *(v121 + 112);
                      v134 = *(v121 + 128);
                      v170 = v129;
                      v179 = v134;
                      *(v121 + 112) = 0;
                      *(v121 + 120) = 0;
                      *(v121 + 128) = 0;
                      v135 = *(v121 + 136);
                      v181 = *(v121 + 152);
                      v180 = v135;
                      *(v121 + 136) = 0;
                      *(v121 + 144) = 0;
                      *(v121 + 152) = 0;
                      v182 = *(v121 + 160);
                      v136 = *(v121 + 168);
                      v184 = *(v121 + 184);
                      __p = v136;
                      *(v121 + 168) = 0;
                      *(v121 + 176) = 0;
                      *(v121 + 184) = 0;
                      v185 = *(v121 + 192);
                      v186 = *(v121 + 208);
                      *(v121 + 192) = 0;
                      *(v121 + 200) = 0;
                      *(v121 + 208) = 0;
                      v187 = v128;
                      do
                      {
                        v137 = v127;
                        marrs::mrr::mr::MRREntity::operator=(v121, v127);
                        *(v121 + 216) = *(v137 + 216);
                        if (!v126)
                        {
                          break;
                        }

                        v126 = (v126 - 1) >> 1;
                        v127 = a1 + 224 * v126;
                        v121 = v137;
                      }

                      while (*(v127 + 216) < v187);
                      marrs::mrr::mr::MRREntity::operator=(v137, &v170);
                      *(v137 + 216) = v187;
                      v169 = &v185;
                      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v169);
                      if (SHIBYTE(v184) < 0)
                      {
                        operator delete(__p);
                      }

                      if (SHIBYTE(v181) < 0)
                      {
                        operator delete(v180);
                      }

                      v169 = &v178;
                      std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v169);
                      if (SHIBYTE(v176) < 0)
                      {
                        operator delete(v175);
                      }

                      if (SHIBYTE(v174) < 0)
                      {
                        operator delete(v173);
                      }

                      if (SHIBYTE(v172) < 0)
                      {
                        operator delete(v171);
                      }
                    }
                  }
                }

                v170 = &v166;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v170);
                if (SHIBYTE(v165) < 0)
                {
                  operator delete(v164);
                }

                if (SHIBYTE(v162) < 0)
                {
                  operator delete(v161);
                }

                v170 = &v159;
                std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v170);
                if (SHIBYTE(v157) < 0)
                {
                  operator delete(v156);
                }

                if (SHIBYTE(v155) < 0)
                {
                  operator delete(v154);
                }

                if (SHIBYTE(v153) < 0)
                {
                  operator delete(v152);
                }
              }

              a2 -= 56;
            }

            while (v111-- > 2);
          }

          return;
        }

        v12 = v10 >> 1;
        v13 = a1 + 224 * (v10 >> 1);
        v14 = *(a2 - 2);
        if (v9 > 0x7000)
        {
          v15 = *(v13 + 216);
          if (v15 >= *(a1 + 216))
          {
            if (v14 >= v15 || (std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v13, v150), *(v13 + 216) >= *(a1 + 216)))
            {
LABEL_26:
              v21 = a1 + 224 * v12;
              v22 = v21 - 224;
              v23 = *(v21 - 8);
              v24 = *(a2 - 58);
              if (v23 >= *(a1 + 440))
              {
                if (v24 >= v23 || (std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v21 - 224, (a2 - 112)), *(v22 + 216) >= *(a1 + 440)))
                {
LABEL_38:
                  v27 = a1 + 224 * v12;
                  v28 = v27 + 224;
                  v29 = *(v27 + 440);
                  v30 = *v149;
                  if (v29 >= *(a1 + 664))
                  {
                    if (v30 >= v29 || (std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v28, (a2 - 168)), *(v28 + 216) >= *(a1 + 664)))
                    {
LABEL_47:
                      v33 = *(v13 + 216);
                      v34 = *(v28 + 216);
                      if (v33 >= *(v22 + 216))
                      {
                        if (v34 >= v33)
                        {
                          goto LABEL_56;
                        }

                        std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v13, v28);
                        if (*(v13 + 216) >= *(v22 + 216))
                        {
                          goto LABEL_56;
                        }

                        v35 = v22;
                        v36 = v13;
                      }

                      else
                      {
                        v35 = v22;
                        if (v34 >= v33)
                        {
                          std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v22, v13);
                          if (*(v28 + 216) >= *(v13 + 216))
                          {
LABEL_56:
                            v19 = a1;
                            v20 = v13;
                            goto LABEL_57;
                          }

                          v35 = v13;
                        }

                        v36 = v28;
                      }

                      std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v35, v36);
                      goto LABEL_56;
                    }

                    v31 = a1 + 448;
                    v32 = v28;
                  }

                  else
                  {
                    v31 = a1 + 448;
                    if (v30 >= v29)
                    {
                      std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v31, v28);
                      if (*v149 >= *(v28 + 216))
                      {
                        goto LABEL_47;
                      }

                      v31 = v28;
                    }

                    v32 = (a2 - 168);
                  }

                  std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v31, v32);
                  goto LABEL_47;
                }

                v25 = a1 + 224;
                v26 = v22;
              }

              else
              {
                v25 = a1 + 224;
                if (v24 >= v23)
                {
                  std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v25, v21 - 224);
                  if (*(a2 - 58) >= *(v22 + 216))
                  {
                    goto LABEL_38;
                  }

                  v25 = v22;
                }

                v26 = (a2 - 112);
              }

              std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v25, v26);
              goto LABEL_38;
            }

            v16 = a1;
            v17 = v13;
          }

          else
          {
            v16 = a1;
            if (v14 >= v15)
            {
              std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1, v13);
              if (*(a2 - 2) >= *(v13 + 216))
              {
                goto LABEL_26;
              }

              v16 = v13;
            }

            v17 = (a2 - 56);
          }

          std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v16, v17);
          goto LABEL_26;
        }

        v18 = *(a1 + 216);
        if (v18 < *(v13 + 216))
        {
          v19 = v13;
          if (v14 >= v18)
          {
            std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v13, a1);
            if (*(a2 - 2) >= *(a1 + 216))
            {
              goto LABEL_58;
            }

            v19 = a1;
          }

          v20 = (a2 - 56);
          goto LABEL_57;
        }

        if (v14 < v18)
        {
          std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1, v150);
          if (*(a1 + 216) < *(v13 + 216))
          {
            v19 = v13;
            v20 = a1;
LABEL_57:
            std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v19, v20);
          }
        }

LABEL_58:
        --a3;
        if (a4)
        {
          break;
        }

        v37 = *(a1 + 216);
        if (*(a1 - 8) < v37)
        {
          goto LABEL_61;
        }

        v57 = *a1;
        v58 = *(a1 + 24);
        v171 = *(a1 + 8);
        v172 = v58;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        v59 = *(a1 + 32);
        v174 = *(a1 + 48);
        v173 = v59;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 32) = 0;
        v60 = *(a1 + 56);
        v176 = *(a1 + 72);
        v175 = v60;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        v61 = *(a1 + 80);
        *(v177 + 12) = *(a1 + 92);
        v177[0] = v61;
        v178 = *(a1 + 112);
        v62 = *(a1 + 128);
        v170 = v57;
        v179 = v62;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        v63 = *(a1 + 136);
        v181 = *(a1 + 152);
        v180 = v63;
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        v182 = *(a1 + 160);
        v64 = *(a1 + 168);
        v184 = *(a1 + 184);
        __p = v64;
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        v185 = *(a1 + 192);
        v186 = *(a1 + 208);
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        *(a1 + 208) = 0;
        v187 = v37;
        if (v37 >= *(a2 - 2))
        {
          v67 = (a1 + 224);
          do
          {
            v8 = v67;
            if (v67 >= a2)
            {
              break;
            }

            v68 = v67[54];
            v67 += 56;
          }

          while (v37 >= v68);
        }

        else
        {
          v65 = a1;
          do
          {
            v8 = (v65 + 224);
            v66 = *(v65 + 440);
            v65 += 224;
          }

          while (v37 >= v66);
        }

        v69 = a2;
        if (v8 < a2)
        {
          v70 = a2;
          do
          {
            v69 = (v70 - 56);
            v71 = *(v70 - 2);
            v70 -= 56;
          }

          while (v37 < v71);
        }

        while (v8 < v69)
        {
          std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v8, v69);
          do
          {
            v72 = v8[110];
            v8 += 56;
          }

          while (v37 >= v72);
          do
          {
            v73 = *(v69 - 8);
            v69 -= 224;
          }

          while (v37 < v73);
        }

        if (v8 - 56 != a1)
        {
          marrs::mrr::mr::MRREntity::operator=(a1, (v8 - 56));
          *(a1 + 216) = *(v8 - 2);
        }

        marrs::mrr::mr::MRREntity::operator=((v8 - 56), &v170);
        *(v8 - 2) = v187;
        v151 = &v185;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v151);
        if (SHIBYTE(v184) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v181) < 0)
        {
          operator delete(v180);
        }

        v151 = &v178;
        std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v151);
        if (SHIBYTE(v176) < 0)
        {
          operator delete(v175);
        }

        if (SHIBYTE(v174) < 0)
        {
          operator delete(v173);
        }

        if (SHIBYTE(v172) < 0)
        {
          operator delete(v171);
        }

LABEL_93:
        a4 = 0;
      }

      v37 = *(a1 + 216);
LABEL_61:
      v38 = *a1;
      v39 = *(a1 + 24);
      v171 = *(a1 + 8);
      v172 = v39;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      v40 = *(a1 + 32);
      v174 = *(a1 + 48);
      v173 = v40;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v41 = *(a1 + 56);
      v176 = *(a1 + 72);
      v175 = v41;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      v42 = *(a1 + 80);
      *(v177 + 12) = *(a1 + 92);
      v177[0] = v42;
      v178 = *(a1 + 112);
      v43 = *(a1 + 128);
      v170 = v38;
      v179 = v43;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      v44 = *(a1 + 136);
      v181 = *(a1 + 152);
      v180 = v44;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      v182 = *(a1 + 160);
      v45 = *(a1 + 168);
      v184 = *(a1 + 184);
      __p = v45;
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
      *(a1 + 184) = 0;
      v185 = *(a1 + 192);
      v186 = *(a1 + 208);
      *(a1 + 192) = 0;
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      v46 = a1;
      v187 = v37;
      do
      {
        v47 = v46;
        v46 += 56;
      }

      while (v47[110] < v37);
      v48 = a2;
      if (v47 == a1)
      {
        v51 = a2;
        while (v46 < v51)
        {
          v49 = (v51 - 56);
          v52 = *(v51 - 2);
          v51 -= 56;
          if (v52 < v37)
          {
            goto LABEL_71;
          }
        }

        v49 = v51;
      }

      else
      {
        do
        {
          v49 = (v48 - 56);
          v50 = *(v48 - 2);
          v48 -= 56;
        }

        while (v50 >= v37);
      }

LABEL_71:
      v8 = v46;
      if (v46 < v49)
      {
        v53 = v49;
        do
        {
          std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v8, v53);
          do
          {
            v54 = v8[110];
            v8 += 56;
          }

          while (v54 < v37);
          do
          {
            v55 = *(v53 - 8);
            v53 -= 224;
          }

          while (v55 >= v37);
        }

        while (v8 < v53);
      }

      if (v8 - 56 != a1)
      {
        marrs::mrr::mr::MRREntity::operator=(a1, (v8 - 56));
        *(a1 + 216) = *(v8 - 2);
      }

      marrs::mrr::mr::MRREntity::operator=((v8 - 56), &v170);
      *(v8 - 2) = v187;
      v151 = &v185;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v151);
      if (SHIBYTE(v184) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v181) < 0)
      {
        operator delete(v180);
      }

      v151 = &v178;
      std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v151);
      if (SHIBYTE(v176) < 0)
      {
        operator delete(v175);
      }

      if (SHIBYTE(v174) < 0)
      {
        operator delete(v173);
      }

      if (SHIBYTE(v172) < 0)
      {
        operator delete(v171);
      }

      if (v46 < v49)
      {
LABEL_92:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *,false>(a1, v8 - 56, a3, a4 & 1);
        goto LABEL_93;
      }

      v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *>(a1, v8 - 56);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *>(v8, a2))
      {
        break;
      }

      if (!v56)
      {
        goto LABEL_92;
      }
    }

    a2 = v8 - 56;
    if (!v56)
    {
      continue;
    }

    break;
  }
}