void boost::wrapexcept<boost::math::evaluation_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<boost::math::evaluation_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_1F4D39E90;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D388B630);
}

void non-virtual thunk toboost::wrapexcept<boost::math::evaluation_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F4D39E90;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_1F4D39E90;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1D388B630);
}

uint64_t boost::wrapexcept<boost::math::evaluation_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4D39E60;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F4D3A070;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4D39E90;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4D3A0F8;
  *(a1 + 8) = &unk_1F4D3A128;
  *(a1 + 24) = &unk_1F4D3A150;
  return a1;
}

double boost::math::detail::regularised_gamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(uint64_t a1, uint64_t a2, double a3, long double a4)
{
  v62 = a3;
  result = 0.0;
  if (a4 >= 1.79769313e308)
  {
    return result;
  }

  if (a3 >= 1.0)
  {
    v20 = a3 + 6.02468004 + -0.5;
    if (a3 > 150.0)
    {
      v21 = (a4 - a3 + -6.02468004 + 0.5) / v20;
      if (fabs(v21 * v21 * a3) <= 100.0)
      {
        v63 = (a4 - a3 + -6.02468004 + 0.5) / v20;
        if (v21 < -1.0)
        {
          boost::math::policies::detail::raise_error<std::domain_error,long double>(boost::math::log1pmx<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "log1pmx(x) requires x > -1, but got x = %1%.", &v63);
        }

        if (v21 == -1.0)
        {
          boost::math::policies::detail::raise_error<std::overflow_error,long double>(boost::math::log1pmx<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "Overflow Error");
        }

        v56 = fabs(v21);
        if (v56 <= 0.949999988)
        {
          v58 = -v21;
          if (v56 >= 2.22044605e-16)
          {
            v57 = 0.0;
            v59 = 2;
            v60 = 1000000;
            do
            {
              v21 = v21 * v58;
              v61 = v21 / v59;
              v57 = v57 + v61;
              if (fabs(v57 * 2.22044605e-16) >= fabs(v61))
              {
                break;
              }

              ++v59;
              --v60;
            }

            while (v60);
            if ((1000000 - v60) >= 0xF4240)
            {
              v64 = (1000000 - v60);
              boost::math::policies::detail::raise_error<boost::math::evaluation_error,long double>(boost::math::log1pmx<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "Series evaluation exceeded %1% iterations, giving up now.", &v64);
            }
          }

          else
          {
            v57 = v21 * v58 * 0.5;
          }
        }

        else
        {
          v57 = log(v21 + 1.0) - v21;
        }

        v52 = a4 * -5.52468004 / v20 + a3 * v57;
        goto LABEL_38;
      }
    }

    v22 = a4 / v20;
    v23 = log(a4 / v20);
    v24 = v23 * a3;
    v25 = a3 - a4;
    if (a3 - a4 >= v23 * a3)
    {
      v26 = v23 * a3;
    }

    else
    {
      v26 = a3 - a4;
    }

    if (v26 <= -708.0 || (v24 >= v25 ? (v27 = v24) : (v27 = a3 - a4), v27 >= 709.0))
    {
      if (v26 * 0.5 <= -708.0 || (v24 >= v25 ? (v46 = v24) : (v46 = a3 - a4), v46 * 0.5 >= 709.0))
      {
        if (v26 * 0.25 <= -708.0 || (v24 >= v25 ? (v49 = v24) : (v49 = a3 - a4), a3 >= a4 || v49 * 0.25 >= 709.0))
        {
          v54 = v25 / a3;
          if (v25 / a3 > -708.0 && v54 < 709.0)
          {
            v55 = exp(v54);
            v53 = pow(v55 * a4 / v20, a3);
            goto LABEL_39;
          }

          v52 = v25 + v24;
LABEL_38:
          v53 = exp(v52);
LABEL_39:
          v36 = v53;
          return v36 * (sqrt(v20 / 2.71828183) / boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v62, v20 / 2.71828183, v29, v30, v31, v32, v33, v34, v35));
        }

        v50 = pow(v22, a3 * 0.25);
        v51 = exp(v25 * 0.25);
        v48 = v50 * v51 * (v50 * v51);
      }

      else
      {
        v47 = pow(v22, a3 * 0.5);
        v48 = v47 * exp(v25 * 0.5);
      }

      v36 = v48 * v48;
    }

    else
    {
      v28 = pow(a4 / v20, a3);
      v36 = exp(v25) * v28;
    }

    return v36 * (sqrt(v20 / 2.71828183) / boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v62, v20 / 2.71828183, v29, v30, v31, v32, v33, v34, v35));
  }

  v9 = -a4;
  if (a4 <= -708.0)
  {
    v37 = a3 * log(a4) - a4;
    v45 = v37 - boost::math::detail::lgamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a1, a2, 0, a3, v38, v39, v40, v41, v42, v43, v44);

    return exp(v45);
  }

  else
  {
    v10 = pow(a4, a3);
    v11 = v10 * exp(v9);
    boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a3, v12, v13, v14, v15, v16, v17, v18);
    return v11 / v19;
  }
}

void boost::math::detail::full_igamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double a1, long double a2)
{
  if (a2 <= 1.79769313e308)
  {
    v4 = log(a2) * a1;
    if (a2 >= 1.0)
    {
      if (a2 < 708.0 && v4 < 709.0)
      {
        v7 = -a2;
        v8 = pow(a2, a1);
        v6 = v8 * exp(v7);
        goto LABEL_13;
      }

      if (a1 >= 1.0)
      {
        v9 = a2 / a1;
LABEL_11:
        v10 = exp(v9);
        v6 = pow(a2 / v10, a1);
        goto LABEL_13;
      }
    }

    else
    {
      if (v4 > -708.0)
      {
        v5 = pow(a2, a1);
        v6 = v5 * exp(-a2);
        goto LABEL_13;
      }

      v9 = a2 / a1;
      if (a2 / a1 < 709.0)
      {
        goto LABEL_11;
      }
    }

    v6 = exp(v4 - a2);
LABEL_13:
    if (fabs(v6) == INFINITY)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::detail::full_igamma_prefix<%1%>(%1%, %1%)", "Result of incomplete gamma function is too large to represent.");
    }
  }
}

double boost::math::detail::lgamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(uint64_t a1, uint64_t a2, int *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v35 = a4;
  if (a4 <= -0.0000000149011612)
  {
    if (floor(a4) == a4)
    {
      v15 = boost::math::detail::lgamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,boost::math::lanczos::lanczos13m53 const&,int *)::function;
      v16 = "Evaluation of lgamma at a negative integer %1%.";
LABEL_7:
      boost::math::policies::detail::raise_error<std::domain_error,long double>(v15, v16, &v35);
    }

    v18 = boost::math::detail::sinpx<long double>(a4);
    v19 = -a4;
    if (v18 < 0.0)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (v18 >= 0.0)
    {
      v21 = v18;
    }

    else
    {
      v21 = -v18;
    }

    v22 = 1.14472989 - boost::math::detail::lgamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a1, a2, 0, v19);
    v23 = v22 - log(v21);
    if (a3)
    {
      goto LABEL_29;
    }

    return v23;
  }

  if (a4 >= 0.0000000149011612)
  {
    if (a4 >= 15.0)
    {
      if (a4 < 3.0 || a4 >= 100.0)
      {
        v23 = (a4 + -0.5) * (log(a4 + 6.02468004 + -0.5) + -1.0);
        if (v23 * 2.22044605e-16 < 20.0)
        {
          v31 = boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v35, v23 * 2.22044605e-16, 20.0, v25, v26, v27, v28, v29, v30);
          v23 = v23 + log(v31);
        }

        goto LABEL_28;
      }

      boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a4, a5, a6, a7, a8, a9, a10, a11);
      v17 = log(v33);
    }

    else
    {
      boost::math::detail::lgamma_small_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a4, a4 + -1.0, a4 + -2.0);
    }

    v23 = v17;
    goto LABEL_28;
  }

  if (a4 == 0.0)
  {
    v15 = boost::math::detail::lgamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,boost::math::lanczos::lanczos13m53 const&,int *)::function;
    v16 = "Evaluation of lgamma at %1%.";
    goto LABEL_7;
  }

  v32 = fabs(a4);
  if (v32 * 4.0 >= 2.22044605e-16)
  {
    v23 = log(fabs(1.0 / a4 + -0.577215665));
  }

  else
  {
    v23 = -log(v32);
  }

  if (a4 < 0.0)
  {
    v20 = -1;
    if (!a3)
    {
      return v23;
    }

    goto LABEL_29;
  }

LABEL_28:
  v20 = 1;
  if (a3)
  {
LABEL_29:
    *a3 = v20;
  }

  return v23;
}

void boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1;
  v22 = a1;
  v9 = 1.0;
  if (a1 <= 0.0)
  {
    if (floor(a1) == a1)
    {
      boost::math::policies::detail::raise_error<std::domain_error,long double>(boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,boost::math::lanczos::lanczos13m53 const&)::function, "Evaluation of tgamma at a negative integer %1%.", &v22);
    }

    if (a1 <= -20.0)
    {
      v18 = boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(-a1);
      v19 = fabs(v18 * boost::math::detail::sinpx<long double>(v8));
      if (v19 < 1.0 && v19 * 1.79769313e308 < 3.14159265)
      {
        boost::math::policies::detail::raise_error<std::overflow_error,long double>(boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,boost::math::lanczos::lanczos13m53 const&)::function, "Result of tgamma is too large to represent.");
      }

      return;
    }

    if (a1 < 0.0)
    {
      do
      {
        v9 = v9 / v8;
        v8 = v8 + 1.0;
      }

      while (v8 < 0.0);
    }

    v22 = v8;
  }

  v10 = floor(v8);
  if (v8 < 170.0 && v10 == v8)
  {
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v23 = v8;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v23);
    }

    v16 = ceil(v8);
    if (v8 < 0.0)
    {
      v10 = v16;
    }

    if (v10 > 2147483650.0 || v10 < -2147483650.0)
    {
      v23 = v8;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v23);
    }
  }

  else
  {
    if (v8 >= 0.0000000149011612)
    {
      v21 = v9 * boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum<long double>(long double const&)::denom, &v22, 0.0000000149011612, 170.0, a3, a4, a5, a6, a7, a8);
      v12 = v22;
      v13 = v22 + 6.02468004 + -0.5;
      v14 = v12 * log(v13);
      if (v14 <= 709.0)
      {
        pow(v13, v12 + -0.5);
        exp(v13);
        return;
      }

      if (v14 * 0.5 <= 709.0)
      {
        v20 = pow(v13, v12 * 0.5 + -0.25);
        if (1.79769313e308 / v20 >= v21 * (v20 / exp(v13)))
        {
          return;
        }

        v15 = boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,boost::math::lanczos::lanczos13m53 const&)::function;
      }

      else
      {
        v15 = boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,boost::math::lanczos::lanczos13m53 const&)::function;
      }

      boost::math::policies::detail::raise_error<std::overflow_error,long double>(v15, "Result of tgamma is too large to represent.");
    }

    if (v8 < COERCE_DOUBLE(0x4000000000000))
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>(boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,boost::math::lanczos::lanczos13m53 const&)::function, "Overflow Error");
    }
  }
}

long double boost::math::detail::sinpx<long double>(double a1)
{
  if (a1 < 0.0)
  {
    a1 = -a1;
  }

  v1 = vcvtmd_s64_f64(a1);
  v2 = floor(a1);
  v3 = v2 + 1.0;
  if (v1)
  {
    v4 = v2 + 1.0;
  }

  else
  {
    v4 = v2;
  }

  if (v4 < 0.0)
  {
    boost::math::detail::sinpx<long double>();
  }

  v5 = a1 - v2;
  v6 = v3 - a1;
  if (v1)
  {
    v5 = v6;
    v7 = -a1;
  }

  else
  {
    v7 = a1;
  }

  if (v5 <= 0.5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1.0 - v5;
  }

  return v7 * sin(v8 * 3.14159265);
}

void boost::math::detail::lgamma_small_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(long double a1, double a2, double a3)
{
  v3 = a1;
  if (a1 >= 2.22044605e-16)
  {
    if (a2 != 0.0 && a3 != 0.0)
    {
      if (a1 <= 2.0)
      {
        if (a1 < 1.0)
        {
          log(a1);
        }
      }

      else
      {
        v4 = 0.0;
        if (a1 >= 3.0)
        {
          do
          {
            v3 = v3 + -1.0;
            v4 = v4 + log(v3);
          }

          while (v3 >= 3.0);
        }
      }
    }
  }

  else
  {
    log(a1);
  }
}

double boost::math::detail::tgamma_delta_ratio_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 + a2;
  if (a1 <= 0.0 || v8 <= 0.0)
  {
    boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a1, a2, a3, a4, a5, a6, a7, a8);
    v19 = v18;
    if (fabs(v18) > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
    }

    boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(v8, 1.79769313e308, v12, v13, v14, v15, v16, v17);
    if (fabs(v20) > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
    }

    return v19 / v20;
  }

  else
  {
    v9 = floor(a2);
    if (v9 != a2)
    {
      goto LABEL_24;
    }

    v10 = floor(a1);
    v11 = a1 <= 170.0 && v10 == a1;
    if (v11 && v8 <= 170.0)
    {
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v33 = a1;
        boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v33);
      }

      v25 = ceil(a1);
      if (a1 >= 0.0)
      {
        v25 = v10;
      }

      if (v25 > 2147483650.0 || v25 < -2147483650.0)
      {
        v33 = a1;
        boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v33);
      }

      v27 = dbl_1D15A6B18[v25 - 1];
      if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v33 = v8;
        boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v33);
      }

      v28 = floor(v8);
      v29 = ceil(v8);
      if (v8 < 0.0)
      {
        v28 = v29;
      }

      if (v28 > 2147483650.0 || v28 < -2147483650.0)
      {
        v33 = v8;
        boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v33);
      }

      return v27 / dbl_1D15A6B18[v28 - 1];
    }

    v9 = fabs(a2);
    a4 = 20.0;
    if (v9 >= 20.0)
    {
LABEL_24:
      boost::math::detail::tgamma_delta_ratio_imp_lanczos<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a1, a2, v9, a4, a5, a6, a7, a8);
      return v24;
    }

    i = 1.0;
    if (a2 != 0.0)
    {
      if (a2 >= 0.0)
      {
        v32 = a2 + -1.0;
        for (i = 1.0 / a1; v32 != 0.0; i = i / a1)
        {
          a1 = a1 + 1.0;
          v32 = v32 + -1.0;
        }
      }

      else
      {
        i = a1 + -1.0;
        v22 = a2 + 1.0;
        if (v22 != 0.0)
        {
          v23 = a1 + -1.0;
          do
          {
            v23 = v23 + -1.0;
            i = v23 * i;
            v22 = v22 + 1.0;
          }

          while (v22 != 0.0);
        }
      }
    }
  }

  return i;
}

double boost::math::tgamma<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a1, a2, a3, a4, a5, a6, a7, a8);
  if (fabs(result) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
  }

  return result;
}

void boost::math::detail::tgamma_delta_ratio_imp_lanczos<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v28 = a1;
  if (a1 >= 2.22044605e-16)
  {
    v9 = a1 + 6.02468004 + -0.5;
    if (a1 + a2 == a1)
    {
      if (fabs(a2 / v9) < 2.22044605e-16)
      {
        exp(-a2);
      }
    }

    else
    {
      if (fabs(a2) >= 10.0)
      {
        v12 = pow(v9 / (v9 + a2), a1 + -0.5);
      }

      else
      {
        v11 = 0.5 - a1;
        v29 = a2 / v9;
        if (a2 / v9 < -1.0)
        {
          boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v29);
        }

        if (a2 / v9 == -1.0)
        {
          boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
        }

        v27 = log1pl(a2 / v9);
        v12 = exp(v11 * v27);
      }

      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum<long double>(long double const&)::denom, &v28, v12, v13, v14, v15, v16, v17, v18, v19);
      v29 = v28 + a2;
      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum<long double>(long double const&)::denom, &v29, v28 + a2, v20, v21, v22, v23, v24, v25, v26);
    }

    pow(2.71828183 / (v9 + a2), a2);
  }

  else if (a2 <= 170.0)
  {
    boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a1 + a2, a2, a3, a4, a5, a6, a7, a8);
    if (fabs(v10) > 1.79769313e308)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
    }
  }

  else
  {
    boost::math::detail::tgamma_delta_ratio_imp_lanczos<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a2, 170.0 - a2);
  }
}

double boost::math::detail::gamma_incomplete_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(int a1, int a2, uint64_t a3, double *a4, double a5, __n128 a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v84 = a6.n128_f64[0];
  v85 = a5;
  if (a5 <= 0.0)
  {
    v13 = boost::math::detail::gamma_incomplete_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,BOOL,BOOL,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,long double*)::function;
    v14 = "Argument a to the incomplete gamma function must be greater than zero (got a=%1%).";
    v15 = &v85;
LABEL_5:
    boost::math::policies::detail::raise_error<std::domain_error,long double>(v13, v14, v15);
  }

  v12 = a6.n128_f64[0];
  if (a6.n128_f64[0] < 0.0)
  {
    v13 = boost::math::detail::gamma_incomplete_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,BOOL,BOOL,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,long double*)::function;
    v14 = "Argument x to the incomplete gamma function must be >= 0 (got x=%1%).";
    v15 = &v84;
    goto LABEL_5;
  }

  v19 = a2;
  v21 = a5;
  if (a5 < 170.0 || (a1 & 1) != 0)
  {
    if (a4 && (a1 & 1) == 0)
    {
      boost::math::detail::gamma_incomplete_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
    }

    v27 = a6.n128_f64[0] + 1.0;
    v28 = 30.0;
    if (v12 < 709.0 && a5 < 30.0 && v27 >= a5)
    {
      v31 = floor(a5);
      if (v31 == a5)
      {
        v27 = 0.6;
        if (v12 > 0.6)
        {
          v39 = boost::math::detail::finite_gamma_q<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a5, v12, a3, a4);
          if ((a1 & 1) == 0)
          {
            v40 = v39 * boost::math::tgamma<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v21, v32, v33, v34, v35, v36, v37, v38);
            if (v19)
            {
              goto LABEL_161;
            }

            goto LABEL_158;
          }

          goto LABEL_151;
        }
      }

      else
      {
        v27 = vabdd_f64(v31, a5);
        v28 = 0.5;
        if (v12 > 0.2 && v27 == 0.5)
        {
          v39 = boost::math::detail::finite_half_gamma_q<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a4, a5, v12);
          if ((a1 & 1) == 0)
          {
            v39 = v39 * boost::math::tgamma<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v21, v32, v33, v34, v35, v36, v37, v38);
          }

          if (!a4 || *a4 != 0.0)
          {
            v19 ^= 1u;
            goto LABEL_152;
          }

          v58 = boost::math::detail::regularised_gamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a3, &v83, v21, v12);
          *a4 = v58;
          v32 = 1.0;
          if ((a1 & (v39 > 1.0)) != 0)
          {
            v40 = 1.0;
          }

          else
          {
            v40 = v39;
          }

          if (v19)
          {
            goto LABEL_163;
          }

          goto LABEL_156;
        }
      }
    }

    if (a5 > 1.0 && v12 < 0.0000000149011612)
    {
      if (a1)
      {
        v55 = boost::math::tgamma<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a5 + 1.0, v27, v28, a8, a9, a10, a11, a12);
        v33 = pow(v12, v21) / v55;
      }

      else
      {
        v33 = pow(v12, a5) / a5;
      }

      v32 = v84;
      v35 = v85 + 1.0;
      v34 = 1.0 - v85 * v84 / (v85 + 1.0);
      v39 = v33 * v34;
      if (a4)
      {
        v58 = boost::math::detail::regularised_gamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a3, &v83, v85, v84);
        *a4 = v58;
        if ((a1 & (v39 > 1.0)) != 0)
        {
          v40 = 1.0;
        }

        else
        {
          v40 = v39;
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_163;
        }

        goto LABEL_156;
      }

LABEL_152:
      if ((a1 & (v39 > 1.0)) != 0)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = v39;
      }

      if (!v19)
      {
        goto LABEL_161;
      }

      goto LABEL_156;
    }

    if (v12 > 1000.0 && (a5 < v12 || fabs(a5 + -50.0) / v12 < 1.0))
    {
      if (a1)
      {
        v56 = boost::math::detail::regularised_gamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a3, &v83, a5, v12);
      }

      else
      {
        boost::math::detail::full_igamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a5, v12);
      }

      if (a4)
      {
        *a4 = v56;
      }

      v32 = v84;
      v39 = v56 / v84;
      if (v56 / v84 != 0.0)
      {
        v69 = boost::math::detail::incomplete_tgamma_large_x<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(&v85, &v84);
        goto LABEL_104;
      }

      goto LABEL_151;
    }

    if (v12 < 0.5)
    {
      v57 = -0.4 / log(v12);
      goto LABEL_85;
    }

    if (v12 < 1.1)
    {
      v57 = v12 * 0.75;
LABEL_85:
      if (v57 >= v21)
      {
        v83 = 0.0;
        boost::math::detail::tgamma_small_upper_part<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a3, &v83, v19 ^ 1, a4, v21, v12, v28, a8, a9, a10, a11, a12);
        if (a1)
        {
          v68 = v68 / v83;
        }

        goto LABEL_133;
      }

LABEL_86:
      if (a1)
      {
        v67 = boost::math::detail::regularised_gamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a3, &v83, v21, v12);
      }

      else
      {
        boost::math::detail::full_igamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v21, v12);
      }

      v39 = v67;
      if (a4)
      {
        *a4 = v67;
      }

      if (v67 == 0.0)
      {
        goto LABEL_152;
      }

      if (v19)
      {
        if (a1)
        {
          v73 = v85;
          v74 = 1.0 / v39;
        }

        else
        {
          v77 = boost::math::tgamma<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v85, v32, v33, v34, v35, v36, v37, v38);
          v75 = 0.0;
          v73 = v85;
          if (v39 < 1.0 && v39 * 1.79769313e308 <= v77 || (v74 = v77 / v39, v85 >= 1.0) && 1.79769313e308 / v85 <= v74)
          {
            v76 = 0;
            goto LABEL_131;
          }
        }

        v75 = -(v73 * v74);
        v76 = 1;
      }

      else
      {
        v76 = 0;
        v75 = 0.0;
        v73 = v85;
      }

LABEL_131:
      v78 = boost::math::detail::lower_gamma_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v73, v84, v75);
      v32 = v85;
      v79 = v78 / v85;
      if ((v76 & 1) == 0)
      {
        v39 = v39 * v79;
        goto LABEL_152;
      }

      v68 = -(v39 * v79);
LABEL_133:
      if ((a1 & (v68 > 1.0)) != 0)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = v68;
      }

      goto LABEL_161;
    }

    if (a5 > 20.0 && a1)
    {
      v71 = (v12 - a5) / a5;
      if (v21 > 200.0)
      {
        if (20.0 / v21 <= v71 * v71)
        {
          goto LABEL_113;
        }

        goto LABEL_138;
      }

      if (fabs(v71) < 0.4)
      {
LABEL_138:
        v39 = boost::math::detail::igamma_temme_large<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v21, v12);
        if (v12 >= v21)
        {
          v19 ^= 1u;
        }

        if (!a4)
        {
          goto LABEL_152;
        }

        v58 = boost::math::detail::regularised_gamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a3, &v83, v21, v12);
        *a4 = v58;
        v32 = 1.0;
        if (v39 <= 1.0)
        {
          v40 = v39;
        }

        else
        {
          v40 = 1.0;
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_163;
        }

LABEL_156:
        v80 = 1.0;
        if (a1)
        {
LABEL_160:
          v40 = v80 - v40;
LABEL_161:
          if (!a4)
          {
            return v40;
          }

          v58 = *a4;
LABEL_163:
          v82 = v84;
          if (v84 < 1.0 && v84 * 1.79769313e308 < v58)
          {
            *a4 = 8.98846567e307;
            v58 = 8.98846567e307;
          }

          *a4 = v58 / v82;
          return v40;
        }

        v21 = v85;
LABEL_158:
        boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(v21, v32, v33, v34, v35, v36, v37, v38);
        v80 = v81;
        if (fabs(v81) > 1.79769313e308)
        {
          boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
        }

        goto LABEL_160;
      }
    }

LABEL_113:
    if (v12 + -1.0 / (v12 * 3.0) >= v21)
    {
      if (a1)
      {
        v72 = boost::math::detail::regularised_gamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a3, &v83, v21, v12);
      }

      else
      {
        boost::math::detail::full_igamma_prefix<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v21, v12);
      }

      v39 = v72;
      if (a4)
      {
        *a4 = v72;
      }

      if (v72 != 0.0)
      {
        v69 = boost::math::detail::upper_gamma_fraction<long double>(v85, v84, 2.22044605e-16);
LABEL_104:
        v70 = v39 * v69;
        v32 = 1.0;
        if ((a1 & (v70 > 1.0)) != 0)
        {
          v40 = 1.0;
        }

        else
        {
          v40 = v70;
        }

        if (v19)
        {
          goto LABEL_161;
        }

        goto LABEL_156;
      }

LABEL_151:
      v19 ^= 1u;
      goto LABEL_152;
    }

    goto LABEL_86;
  }

  if (a5 * 4.0 >= a6.n128_f64[0] || a2 == 0)
  {
    if (a2)
    {
      v23 = boost::math::detail::gamma_incomplete_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(1, 1, a3, a4, a5, a6);
      if (v23 == 0.0)
      {
        v24 = log(1.0 / (v21 * 12.0) + 1.0 + 1.0 / (v21 * 288.0 * v21)) - v21;
        v25 = v24 + (v21 + -0.5) * log(v21) + 0.918938533;
        if (a4)
        {
          v26 = log(v12);
          *a4 = exp(-(v12 - v21 * v26));
        }

        goto LABEL_55;
      }
    }

    else if (a6.n128_f64[0] * 4.0 < a5 || (v23 = boost::math::detail::gamma_incomplete_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(1, 0, a3, a4, a5, a6), v23 == 0.0))
    {
      v53 = log(v12);
      v42 = -(v12 - v21 * v53);
      if (a4)
      {
        *a4 = exp(-(v12 - v21 * v53));
      }

      v52 = boost::math::detail::lower_gamma_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v21, v12, 0.0) / v21;
      goto LABEL_54;
    }

    v59 = log(v23);
    v25 = v59 + boost::math::lgamma<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(0, v21, v60, v61, v62, v63, v64, v65, v66);
    goto LABEL_55;
  }

  v41 = log(a6.n128_f64[0]);
  v42 = -(v12 - v21 * v41);
  if (a4)
  {
    *a4 = exp(-(v12 - v21 * v41));
  }

  v43 = v12 - v21 + 1.0;
  v44 = v43 + 2.0;
  if (v43 + 2.0 == 0.0)
  {
    v45 = 3.56011817e-307;
  }

  else
  {
    v45 = v43 + 2.0;
  }

  v46 = 0.0;
  v47 = 2;
  v48 = v45;
  do
  {
    v44 = v44 + 2.0;
    v49 = (v21 - v47) * v47;
    v50 = v44 + v49 * v46;
    v48 = v44 + v49 / v48;
    if (v48 == 0.0)
    {
      v48 = 3.56011817e-307;
    }

    if (v50 == 0.0)
    {
      v46 = 2.80889552e306;
    }

    else
    {
      v46 = 1.0 / v50;
    }

    v45 = v45 * (v46 * v48);
  }

  while (fabs(v46 * v48 + -1.0) > 2.22044605e-16 && v47++ != 0);
  v52 = 1.0 / (v43 + (v21 + -1.0) / v45);
LABEL_54:
  v25 = v42 + log(v52);
LABEL_55:
  if (v25 > 709.0)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>(boost::math::detail::gamma_incomplete_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,long double,BOOL,BOOL,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&,long double*)::function, "Overflow Error");
  }

  return exp(v25);
}

double boost::math::detail::upper_gamma_fraction<long double>(double a1, double a2, double a3)
{
  v3 = a2 - a1 + 1.0;
  v4 = fabs(a3);
  v5 = v3 + 2.0;
  if (v3 + 2.0 == 0.0)
  {
    v6 = 3.56011817e-307;
  }

  else
  {
    v6 = v3 + 2.0;
  }

  v7 = 0.0;
  v8 = 2;
  v9 = v6;
  do
  {
    v5 = v5 + 2.0;
    v10 = (a1 - v8) * v8;
    v11 = v5 + v10 * v7;
    v9 = v5 + v10 / v9;
    if (v9 == 0.0)
    {
      v9 = 3.56011817e-307;
    }

    if (v11 == 0.0)
    {
      v7 = 2.80889552e306;
    }

    else
    {
      v7 = 1.0 / v11;
    }

    v6 = v6 * (v7 * v9);
  }

  while (fabs(v7 * v9 + -1.0) > v4 && v8++ != 0);
  return 1.0 / (v3 + (a1 + -1.0) / v6);
}

double boost::math::detail::lower_gamma_series<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2, double a3)
{
  v4 = 1.0;
  v5 = 1000000;
  do
  {
    a3 = v4 + a3;
    if (fabs(a3 * 2.22044605e-16) >= fabs(v4))
    {
      break;
    }

    a1 = a1 + 1.0;
    v4 = v4 * (a2 / a1);
    --v5;
  }

  while (v5);
  v6 = 1000000 - v5;
  if (v6 >= 0xF4240)
  {
    v8 = v6;
    boost::math::policies::detail::raise_error<boost::math::evaluation_error,long double>("boost::math::detail::lower_gamma_series<%1%>(%1%)", "Series evaluation exceeded %1% iterations, giving up now.", &v8);
  }

  return a3;
}

double boost::math::detail::finite_gamma_q<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double a1, long double a2, uint64_t a3, double *a4)
{
  v7 = exp(-a2);
  v8 = 1.0;
  if (v7 == 0.0 || a1 <= 1.0)
  {
    v12 = v7;
  }

  else
  {
    v10 = 2;
    v11 = v7;
    v12 = v7;
    do
    {
      v11 = v11 / v8 * a2;
      v12 = v12 + v11;
      v8 = v10++;
    }

    while (v8 < a1);
  }

  if (a4)
  {
    v13 = v7 * pow(a2, a1);
    v14 = a1 + -1.0;
    if (COERCE__INT64(fabs(a1 + -1.0)) >= 0x7FF0000000000000)
    {
      v19 = a1 + -1.0;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v19);
    }

    v15 = floor(v14);
    v16 = ceil(v14);
    if (v14 < 0.0)
    {
      v15 = v16;
    }

    if (v15 > 2147483650.0 || v15 < -2147483650.0)
    {
      v19 = a1 + -1.0;
      boost::math::policies::detail::raise_error<boost::math::rounding_error,long double>("boost::math::itrunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v19);
    }

    *a4 = v13 / dbl_1D15A6B18[v15];
  }

  return v12;
}

double boost::math::detail::finite_half_gamma_q<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double *a1, double a2, double a3)
{
  v6 = sqrt(a3);
  v7 = boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(1, v6);
  if (fabs(v7) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::erfc<%1%>(%1%, %1%)", "numeric overflow");
  }

  if (a2 <= 1.0 || v7 == 0.0)
  {
    if (!a1)
    {
      return v7;
    }

    v14 = v6 * exp(-a3) / 1.77245385;
LABEL_12:
    *a1 = v14;
    return v7;
  }

  v8 = exp(-a3);
  v9 = sqrt(a3 * 3.14159265);
  v10 = v8 / v9 * a3 + v8 / v9 * a3;
  v11 = 2.0;
  if (a2 > 2.0)
  {
    v12 = 3;
    v13 = v10;
    do
    {
      v13 = v13 / (v11 + -0.5) * a3;
      v10 = v10 + v13;
      v11 = v12++;
    }

    while (v11 < a2);
  }

  v7 = v7 + v10;
  v14 = 0.0;
  if (a1)
  {
    goto LABEL_12;
  }

  return v7;
}

void boost::math::detail::tgamma_small_upper_part<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(uint64_t a1, double *a2, int a3, long double *a4, double a5, long double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v17 = a5;
  v18 = boost::math::detail::tgammap1m1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a5, a6, a7, a8, a9, a10, a11, a12);
  if (fabs(v18) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::tgamma1pm1<%!%>(%1%)", "numeric overflow");
  }

  if (a2)
  {
    *a2 = (v18 + 1.0) / v17;
  }

  v19 = boost::math::detail::powm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(a1, a6, v17);
  v20 = v18 - v19;
  v21 = v19 + 1.0;
  if (a4)
  {
    v22 = *a2;
    *a4 = v21 / (exp(a6) * v22);
  }

  v23 = 0.0;
  if (a3)
  {
    v23 = *a2;
  }

  v24 = -a6;
  v25 = 2;
  v26 = -a6;
  v27 = 999990;
  v28 = (v23 - v20 / v17) / v21;
  do
  {
    v17 = v17 + 1.0;
    v28 = v26 / v17 + v28;
    if (fabs(v28 * 2.22044605e-16) >= fabs(v26 / v17))
    {
      break;
    }

    v26 = v26 * v24 / v25++;
    --v27;
  }

  while (v27);
  if ((999990 - v27) >= 0xF4240)
  {
    v29 = (999990 - v27);
    boost::math::policies::detail::raise_error<boost::math::evaluation_error,long double>("boost::math::tgamma_small_upper_part<%1%>(%1%, %1%)", "Series evaluation exceeded %1% iterations, giving up now.", &v29);
  }
}

double boost::math::detail::igamma_temme_large<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double a1, double a2)
{
  v4 = (a2 - a1) / a1;
  v31 = v4;
  if (v4 < -1.0)
  {
    boost::math::policies::detail::raise_error<std::domain_error,long double>(boost::math::log1pmx<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "log1pmx(x) requires x > -1, but got x = %1%.", &v31);
  }

  if (v4 == -1.0)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>(boost::math::log1pmx<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "Overflow Error");
  }

  v25 = fabs(v4);
  if (v25 <= 0.949999988)
  {
    v27 = -v4;
    if (v25 >= 2.22044605e-16)
    {
      v26 = 0.0;
      v28 = 2;
      v29 = 1000000;
      do
      {
        v4 = v4 * v27;
        v30 = v4 / v28;
        v26 = v26 + v30;
        if (fabs(v26 * 2.22044605e-16) >= fabs(v30))
        {
          break;
        }

        ++v28;
        --v29;
      }

      while (v29);
      if ((1000000 - v29) >= 0xF4240)
      {
        v32 = (1000000 - v29);
        boost::math::policies::detail::raise_error<boost::math::evaluation_error,long double>(boost::math::log1pmx<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "Series evaluation exceeded %1% iterations, giving up now.", &v32);
      }
    }

    else
    {
      v26 = v4 * v27 * 0.5;
    }
  }

  else
  {
    v26 = log(v4 + 1.0) - v4;
  }

  v5 = -(v26 * a1);
  v6 = boost::math::detail::erf_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(1, sqrt(v5));
  if (fabs(v6) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::erfc<%1%>(%1%, %1%)", "numeric overflow");
  }

  v7 = sqrt(v26 * -2.0);
  v8 = exp(-v5);
  if (a2 >= a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = -v7;
  }

  v10 = 1.0 / a1;
  v11.f64[0] = v9 * v9 * -0.000109765822 + -0.000334931611;
  v12.f64[0] = v9 * v9 * 0.000281269515 + 0.0000517179091;
  v13.f64[0] = v9 * v9 * (v9 * v9 * -0.00000229148118 + -0.0000135940482) + 0.0000679778048;
  v14.f64[0] = v9 * v9 * (v9 * v9 * 0.00000801847026 + 0.000000141906292) + -0.000199325705;
  v15.f64[0] = v9 * v9 * 0.00000142309007 + 0.0000110826541;
  v16.f64[0] = v9 * v9 * -0.00000567495283 + -0.000000239650511;
  v17.f64[0] = v9 * v9 * 0.0000000119516286 + 0.000000137863345;
  v18.f64[0] = v9 * v9 * -0.000000057525456 + 0.0000000046471278;
  v11.f64[1] = v9 * v9 * (v9 * v9 * -0.0000183291166 + -0.0000815396937) + 0.00027087821;
  v12.f64[1] = v9 * v9 * (v9 * v9 * 0.0000561168275 + 0.000000790235323) + -0.000592166437;
  v19 = vaddq_f64(vmulq_n_f64(v12, v9), vaddq_f64(vmulq_n_f64(v11, v9 * v9), xmmword_1D15A63B0));
  v20 = &unk_1D15A6828;
  *&v11.f64[0] = *&vld1q_dup_f64(v20);
  v11.f64[1] = (v9 * -0.000438297099 + 0.000839498721) * v9 + -0.000652623919;
  v13.f64[1] = v9 * v9 * 0.000011375727 + 0.0000664149822;
  v14.f64[1] = v9 * v9 * -0.0000396836505 + -0.00000146384526;
  v15.f64[1] = v9 * v9 * (v9 * v9 * 0.000000142806142 + 0.00000137219573) + -0.0000127606352;
  v16.f64[1] = v9 * v9 * (v9 * v9 * -0.000000629899214 + 0.0000000342357873) + 0.0000529234488;
  v17.f64[1] = v9 * v9 * (v9 * v9 * 9.14769958e-10 + 0.0000000102618098) + -0.000000176659527;
  v18.f64[1] = v9 * v9 * (v9 * v9 * -0.00000000438203602 + 0.00000000670785354) + 0.000000829671134;
  v21 = vaddq_f64(vmulq_n_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v16, v9 * v9), xmmword_1D15A6420), v9 * v9), xmmword_1D15A6430), v9), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v15, v9 * v9), xmmword_1D15A63F0), v9 * v9), xmmword_1D15A6400), v9 * v9), xmmword_1D15A6410)), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v19, v11, v10 * v10), v10 * v10), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v14, v9 * v9), xmmword_1D15A63E0), v9), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v13, v9 * v9), xmmword_1D15A63C0), v9 * v9), xmmword_1D15A63D0))), v10 * v10)), v10 * v10), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v18, v9 * v9), xmmword_1D15A6490), v9 * v9), xmmword_1D15A64A0), v9 * v9), xmmword_1D15A64B0), v9 * v9), xmmword_1D15A64C0), v9), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v17, v9 * v9), xmmword_1D15A6440), v9 * v9), xmmword_1D15A6450), v9 * v9), xmmword_1D15A6460), v9 * v9), xmmword_1D15A6470), v9 * v9), xmmword_1D15A6480)));
  v22 = v8 / sqrt(a1 * 6.28318531) * (1.0 / a1 * v21.f64[0] + v21.f64[1]);
  v23 = -v22;
  if (a2 >= a1)
  {
    v23 = v22;
  }

  return v6 * 0.5 + v23;
}

double boost::math::detail::incomplete_tgamma_large_x<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(double *a1, double *a2)
{
  v2 = *a1;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 1000000;
  do
  {
    v3 = v4 + v3;
    if (fabs(v3 * 2.22044605e-16) >= fabs(v4))
    {
      break;
    }

    v2 = v2 + -1.0;
    v4 = v4 * (v2 / *a2);
    --v5;
  }

  while (v5);
  v6 = 1000000 - v5;
  if (v6 >= 0xF4240)
  {
    v8 = v6;
    boost::math::policies::detail::raise_error<boost::math::evaluation_error,long double>("boost::math::tgamma<%1%>(%1%,%1%)", "Series evaluation exceeded %1% iterations, giving up now.", &v8);
  }

  return v3;
}

double boost::math::lgamma<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(int *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = boost::math::detail::lgamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(&v12, &v11, a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (fabs(v9) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::lgamma<%1%>(%1%)", "numeric overflow");
  }

  return v9;
}

double boost::math::detail::tgammap1m1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 >= 0.0)
  {
    v9 = a1 + 1.0;
    a2 = 2.0;
    if (a1 >= 2.0)
    {
      goto LABEL_6;
    }

    boost::math::detail::lgamma_small_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(v9, a1, a1 + -1.0);
  }

  else
  {
    if (a1 < -0.5)
    {
      v9 = a1 + 1.0;
LABEL_6:
      boost::math::detail::gamma_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(v9, a2, a3, a4, a5, a6, a7, a8);
      if (fabs(v11) > 1.79769313e308)
      {
        boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
      }

      return v11 + -1.0;
    }

    v16 = a1;
    if (a1 < -1.0)
    {
      boost::math::policies::detail::raise_error<std::domain_error,long double>("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v16);
    }

    if (a1 == -1.0)
    {
      boost::math::policies::detail::raise_error<std::overflow_error,long double>("log1p<%1%>(%1%)", "Overflow Error");
    }

    v15 = log1pl(a1);
    boost::math::detail::lgamma_small_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>,boost::math::lanczos::lanczos13m53>(a1 + 2.0, a1 + 1.0, a1);
    v10 = v13 - v15;
  }

  v12 = boost::math::detail::expm1_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v10);
  if (fabs(v12) > 1.79769313e308)
  {
    boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::expm1<%1%>(%1%)", "numeric overflow");
  }

  return v12;
}

void boost::math::binomial_coefficient<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(unsigned int a1, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a1 < a2)
  {
    v15 = a2;
    boost::math::policies::detail::raise_error<std::domain_error,long double>(boost::math::binomial_coefficient<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(unsigned int,unsigned int,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "The binomial coefficient is undefined for k > n, but got k = %1%.", &v15);
  }

  if (a2)
  {
    v10 = a1 - a2;
    if (a1 != a2 && a2 != 1 && a1 - 1 != a2 && a1 > 0xAA)
    {
      if (v10 <= a2)
      {
        v11 = v10;
        v13 = (a2 + 1);
        v12 = v10;
      }

      else
      {
        v11 = a2;
        v12 = (v10 + 1);
        v13 = a2;
      }

      boost::math::detail::beta_imp<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v13, v12, a5, a6, a7, a8, a9, a10);
      if (fabs(v14) > 1.79769313e308)
      {
        boost::math::policies::detail::raise_error<std::overflow_error,long double>("boost::math::beta<%1%>(%1%,%1%)", "numeric overflow");
      }

      if (v14 * v11 == 0.0)
      {
        boost::math::policies::detail::raise_error<std::overflow_error,long double>(boost::math::binomial_coefficient<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(unsigned int,unsigned int,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy> const&)::function, "Overflow Error");
      }
    }
  }
}

void boost::math::policies::detail::raise_error<boost::math::rounding_error,double>(char *a1, char *a2, double *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, v5);
  std::string::basic_string[abi:ne200100]<0>(&v14, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v16, "%1%", "double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  boost::math::policies::detail::prec_format<double>(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::runtime_error::runtime_error(&v11, &v14);
  v11.__vftable = &unk_1F4D39F70;
  boost::throw_exception<boost::math::rounding_error>(&v11);
}

void sub_1D1472C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(a1);
}

double boost::math::detail::ibeta_fraction2_t<long double>::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(a1 + 16) * (*(a1 + 16) * ((*(a1 + 8) - v1) * ((*a1 + v1 + -1.0) * (*a1 + *(a1 + 8) + v1 + -1.0) * v1))) / ((*a1 + (2 * v1) + -1.0) * (*a1 + (2 * v1) + -1.0));
  *(a1 + 32) = v1 + 1;
  return result;
}

uint64_t boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::check_params(unsigned int *a1, char *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 > v3)
  {
    v6 = v2;
    v4 = "Parameter r out of range: must be <= N but got %1%";
    goto LABEL_5;
  }

  if (*a1 > v3)
  {
    v6 = *a1;
    v4 = "Parameter n out of range: must be <= N but got %1%";
LABEL_5:
    boost::math::policies::detail::raise_error<std::domain_error,double>(a2, v4, &v6);
  }

  return 1;
}

uint64_t boost::math::hypergeometric_distribution<double,boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>::check_x(unsigned int *a1, unsigned int a2, char *a3)
{
  v3 = a1[2];
  v4 = *a1;
  if (((v3 + v4 - a1[1]) & ~((v3 + v4 - a1[1]) >> 31)) > a2)
  {
    v7 = a2;
    v5 = "Random variable out of range: must be > 0 and > m + r - N but got %1%";
    goto LABEL_7;
  }

  if (v4 < v3)
  {
    v3 = *a1;
  }

  if (v3 < a2)
  {
    v7 = a2;
    v5 = "Random variable out of range: must be less than both n and r but got %1%";
LABEL_7:
    boost::math::policies::detail::raise_error<std::domain_error,double>(a3, v5, &v7);
  }

  return 1;
}

double boost::math::detail::hypergeometric_pdf_factorial_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(int a1, int a2, int a3, unsigned int a4)
{
  v13[3] = *MEMORY[0x1E69E9840];
  if (a4 >= 0xAB)
  {
    boost::math::detail::hypergeometric_pdf_factorial_imp<long double,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>();
  }

  LODWORD(v4) = 0;
  LODWORD(v5) = 0;
  v6 = dbl_1D15A6B18[a4 - a2];
  v7 = dbl_1D15A6B18[a4 - a3];
  *v13 = dbl_1D15A6B18[a2];
  *&v13[1] = v7;
  *&v13[2] = v6;
  v8 = dbl_1D15A6B18[a1];
  *v12 = dbl_1D15A6B18[a4];
  *&v12[1] = v8;
  v9 = dbl_1D15A6B18[a2 - a1];
  *&v12[2] = dbl_1D15A6B18[a3 - a1];
  *&v12[3] = v9;
  *&v12[4] = dbl_1D15A6B18[a1 - a2 + a4 - a3];
  result = dbl_1D15A6B18[a3];
  do
  {
    if (v4 > 4)
    {
LABEL_8:
      if (v5 > 2)
      {
        continue;
      }
    }

    else
    {
      v4 = v4;
      while (v5 > 2 || result >= 1.0)
      {
        v11 = *&v12[v4++];
        result = result / v11;
        if (v4 == 5)
        {
          goto LABEL_8;
        }
      }
    }

    v5 = v5;
    do
    {
      if (v4 <= 4 && result > 1.0)
      {
        break;
      }

      result = result * *&v13[v5++];
    }

    while (v5 != 3);
  }

  while (v5 < 3 || v4 < 5);
  return result;
}

void boost::math::detail::hypergeometric_pdf_lanczos_imp<long double,boost::math::lanczos::lanczos13m53,boost::math::policies::policy<boost::math::policies::promote_float<false>,boost::math::policies::promote_double<false>,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v122[9] = *MEMORY[0x1E69E9840];
  v122[0] = a3 + 6.02468004 + 0.5;
  v122[1] = a2 + 6.02468004 + 0.5;
  v8 = (a4 - a3);
  v9 = a4 - a2;
  v122[2] = v8 + 6.02468004 + 0.5;
  v122[3] = (a4 - a2) + 6.02468004 + 0.5;
  v122[4] = 1.0 / (a4 + 6.02468004 + 0.5);
  v122[5] = 1.0 / (a1 + 6.02468004 + 0.5);
  v10 = a3 - a1;
  v11 = a2 - a1;
  v106 = a4 - a3;
  v12 = a4 - a3 - a2 + a1;
  v122[6] = 1.0 / ((a3 - a1) + 6.02468004 + 0.5);
  v122[7] = 1.0 / ((a2 - a1) + 6.02468004 + 0.5);
  v122[8] = 1.0 / (v12 + 6.02468004 + 0.5);
  v121[0] = a3 + 0.5;
  v121[1] = a2 + 0.5;
  v121[2] = v8 + 0.5;
  v121[3] = (a4 - a2) + 0.5;
  v121[4] = a4 + 0.5;
  v121[5] = a1 + 0.5;
  v121[6] = (a3 - a1) + 0.5;
  v121[7] = (a2 - a1) + 0.5;
  v121[8] = v12 + 0.5;
  v120 = 1;
  v119[0] = xmmword_1D15ABE5C;
  v119[1] = unk_1D15ABE6C;
  v117 = 8;
  v116[0] = xmmword_1D15ABE80;
  v116[1] = unk_1D15ABE90;
  v115 = COERCE_DOUBLE(v121);
  std::__introsort<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *,false>(v116, v118, &v115, 6, 1);
  v13 = DWORD1(v116[0]);
  v14 = v121[SDWORD1(v116[0])];
  while (1)
  {
    v15 = SLODWORD(v116[0]);
    v121[SLODWORD(v116[0])] = v121[SLODWORD(v116[0])] - v14;
    v16 = v122[v15] * v122[v13];
    v122[v13] = v16;
    if (v16 < 2.22507386e-308 && v121[v13] != 0.0)
    {
      break;
    }

    v17 = 0;
    *(v119 + v13) += *(v119 + v15);
    do
    {
      v18 = *(v116 + v17);
      v19 = *(v116 + v17 + 4);
      if (v121[v18] > v121[v19])
      {
        break;
      }

      *(v116 + v17) = v19;
      *(v116 + v17 + 4) = v18;
      v17 += 4;
    }

    while (v17 != 32);
    v13 = DWORD1(v116[0]);
    v14 = v121[SDWORD1(v116[0])];
    if (v14 <= 1.0)
    {
      v20 = 8;
      do
      {
        v21 = v121[*(v116 + v20--)];
      }

      while (v21 == 0.0);
      v105 = v11;
      if (v20 != -1)
      {
        v22 = v20 + 1;
        do
        {
LABEL_12:
          v23 = v22;
          v24 = 4 * v22;
          while (1)
          {
            v25 = v23 - 1;
            v26 = *(v116 + v23 - 1);
            v27 = *(v116 + v23);
            if (v121[v26] != v121[v27])
            {
              break;
            }

            v122[v26] = v122[v27] * v122[v26];
            v121[v27] = 0.0;
            *(v119 + v26) += *(v119 + v27);
            if (4 * v23 != 32)
            {
              v28 = v24;
              do
              {
                v29 = *(v116 + v28);
                v30 = *(v116 + v28 + 4);
                if (v121[v29] > v121[v30])
                {
                  break;
                }

                *(v116 + v28) = v30;
                *(v116 + v28 + 4) = v29;
                v28 += 4;
              }

              while (v28 != 32);
            }

            v24 -= 4;
            v23 = v25;
            if (!v25)
            {
              v22 = -1;
              goto LABEL_12;
            }
          }

          v22 = v23 - 1;
        }

        while (v23 != 1);
      }

      v31 = SLODWORD(v116[0]);
      v32 = v122[SLODWORD(v116[0])];
      v33 = exp(*(v119 + SLODWORD(v116[0])));
      v41 = pow(v32 * v33, v121[v31]);
      for (i = 0; i != 32; i += 4)
      {
        v43 = *(v116 + i + 4);
        v44 = v121[v43];
        if (v44 <= 0.0)
        {
          break;
        }

        if (v41 < 2.22507386e-308)
        {
          return;
        }

        if (v44 == 1.0)
        {
          v45 = v122[v43];
          v46 = v45 * exp(*(v119 + v43));
        }

        else
        {
          v47 = v122[v43];
          v48 = v47 * exp(*(v119 + v43));
          v46 = v44 == 0.5 ? sqrt(v48) : pow(v48, v44);
        }

        v41 = v41 * v46;
      }

      v115 = (a3 + 1);
      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v115, v115, v34, v35, v36, v37, v38, v39, v40);
      v114 = (a2 + 1);
      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v114, v114, v49, v50, v51, v52, v53, v54, v55);
      v113 = (v106 + 1);
      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v113, v113, v56, v57, v58, v59, v60, v61, v62);
      v112 = (v9 + 1);
      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v112, v112, v63, v64, v65, v66, v67, v68, v69);
      v111 = (a4 + 1);
      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v111, v111, v70, v71, v72, v73, v74, v75, v76);
      v110 = (a1 + 1);
      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v110, v110, v77, v78, v79, v80, v81, v82, v83);
      v109 = (v10 + 1);
      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v109, v109, v84, v85, v86, v87, v88, v89, v90);
      v108 = (v105 + 1);
      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v108, v108, v91, v92, v93, v94, v95, v96, v97);
      boost::math::tools::detail::evaluate_rational_c_imp<long double,unsigned int,long double>(boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::num, boost::math::lanczos::lanczos13m53::lanczos_sum_expG_scaled<long double>(long double const&)::denom, &v107, (v12 + 1), v98, v99, v100, v101, v102, v103, v104);
      return;
    }
  }
}

uint64_t boost::math::prime<boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(unsigned int a1)
{
  v2 = a1;
  if (a1 <= 0x35)
  {
    return byte_1D15A7070[a1];
  }

  if (a1 >> 1 <= 0xCC6)
  {
    return word_1D15A70A6[a1 - 54];
  }

  if (a1 >> 4 >= 0x271)
  {
    boost::math::policies::detail::raise_error<std::domain_error,unsigned int>("boost::math::prime<%1%>", "Argument n out of range: got %1%", &v2);
  }

  return word_1D15AA356[a1 - 6542] + 0xFFFF;
}

void boost::math::policies::detail::raise_error<std::domain_error,unsigned int>(char *a1, char *a2, unsigned int *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  std::string::basic_string[abi:ne200100]<0>(&v16, v4);
  std::string::basic_string[abi:ne200100]<0>(&v15, v5);
  std::string::basic_string[abi:ne200100]<0>(&v14, "Error in function ");
  boost::math::policies::detail::replace_all_in_string(&v16, "%1%", (*(MEMORY[0x1E69E5480] + 8) & 0x7FFFFFFFFFFFFFFFLL));
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  boost::math::policies::detail::prec_format<unsigned int>(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  boost::math::policies::detail::replace_all_in_string(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::logic_error::logic_error(&v11, &v14);
  v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
  boost::throw_exception<std::domain_error>(&v11);
}

uint64_t boost::math::policies::detail::prec_format<unsigned int>@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v6);
  *(&v9[0].__locale_ + *(v7 - 24)) = 11;
  MEMORY[0x1D388B5B0](&v7, *a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D388B600](&v11);
}

void sub_1D1473940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t boost::math::detail::hypergeometric_pdf_prime_loop_imp<long double>(_DWORD *a1, uint64_t a2)
{
  result = a1[5];
  for (i = a1[3]; result <= i; i = a1[3])
  {
    v6 = 0;
    v9 = result;
    do
    {
      v7 = a1[2];
      v8 = a1[1];
      v6 = v7 / v9 + v6 + v8 / v9 + (i - v7) / v9 + (i - v8) / v9 - (i / v9 + *a1 / v9 + (v7 - *a1) / v9 + (v8 - *a1) / v9 + (i - v7 - v8 + *a1) / v9);
      v9 *= result;
    }

    while (v9 <= i);
    if (v6)
    {
      v19[0] = result;
      v10 = boost::math::detail::integer_power<long double>(v19, v6);
      v11 = *a2;
      if (v10 > 1.0 && 1.79769313e308 / v10 < v11 || v10 < 1.0 && 2.22507386e-308 / v10 > v11)
      {
        v19[0] = v10;
        *&v19[1] = a2;
        v18 = a1[4] + 1;
        a1[4] = v18;
        a1[5] = boost::math::prime<boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v18);
        return boost::math::detail::hypergeometric_pdf_prime_loop_imp<long double>(a1, v19);
      }

      *a2 = v10 * v11;
    }

    v12 = a1[4] + 1;
    a1[4] = v12;
    result = boost::math::prime<boost::math::policies::policy<boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy,boost::math::policies::default_policy>>(v12);
    a1[5] = result;
  }

  v13 = a2;
  do
  {
    if (*v13 >= 1.0)
    {
      break;
    }

    v13 = *(v13 + 8);
  }

  while (v13);
  do
  {
    if (*a2 < 1.0)
    {
      goto LABEL_18;
    }

    a2 = *(a2 + 8);
  }

  while (a2);
  if (v13)
  {
    a2 = 0;
LABEL_18:
    v14 = 1.0;
    while (1)
    {
      if (!v13)
      {
        goto LABEL_29;
      }

      if (!a2 || v14 <= 1.0)
      {
        break;
      }

      v15 = 0;
LABEL_30:
      if (v14 >= 1.0)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      if (a2 && v16)
      {
LABEL_35:
        v14 = v14 * *a2;
        while (1)
        {
          a2 = *(a2 + 8);
          if (!a2)
          {
            break;
          }

          if (*a2 < 1.0)
          {
            if (v14 >= 1.0)
            {
              v17 = 1;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              goto LABEL_35;
            }

            break;
          }
        }
      }

      if (!(v13 | a2))
      {
        return result;
      }
    }

LABEL_23:
    v14 = v14 * *v13;
    while (1)
    {
      v13 = *(v13 + 8);
      if (!v13)
      {
        break;
      }

      if (*v13 >= 1.0)
      {
        if (!a2)
        {
          goto LABEL_23;
        }

        v15 = 0;
        if (v14 <= 1.0)
        {
          goto LABEL_23;
        }

        goto LABEL_30;
      }
    }

LABEL_29:
    v15 = 1;
    goto LABEL_30;
  }

  return result;
}

double boost::math::detail::integer_power<long double>(double *a1, int a2)
{
  if (a2 < 0)
  {
    return 1.0 / boost::math::detail::integer_power<long double>(a1, -a2);
  }

  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        return *a1 * (*a1 * *a1);
      }

      v7 = *a1;
      return v7 * v7;
    }

    result = 1.0;
    if (!a2)
    {
      return result;
    }

    if (a2 == 1)
    {
      return *a1;
    }

    goto LABEL_25;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      v3 = *a1;
      goto LABEL_20;
    }

    v5 = *a1;
    v6 = v5 * v5;
    return v6 * (v5 * v6);
  }

  switch(a2)
  {
    case 6:
      v7 = *a1 * (*a1 * *a1);
      return v7 * v7;
    case 7:
      v5 = *a1;
      v6 = v5 * (v5 * v5);
      return v6 * (v5 * v6);
    case 8:
      v3 = *a1 * *a1;
LABEL_20:
      v7 = v3 * v3;
      return v7 * v7;
  }

LABEL_25:
  v8 = *a1;

  return pow(v8, a2);
}

int *std::__introsort<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *,false>(int *result, int *a2, uint64_t *a3, uint64_t a4, char a5)
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
        v70 = *(a2 - 1);
        v63 = *v9;
        if (*(*a3 + 8 * v70) <= *(*a3 + 8 * v63))
        {
          return result;
        }

        *v9 = v70;
LABEL_102:
        *(a2 - 1) = v63;
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
      v71 = v9 + 1;
      v72 = v9[1];
      v73 = v9 + 2;
      v74 = v9[2];
      v75 = *v9;
      v76 = *a3;
      v77 = *(*a3 + 8 * v72);
      v78 = *(*a3 + 8 * *v9);
      v79 = v74;
      v80 = *(*a3 + 8 * v74);
      if (v77 <= v78)
      {
        if (v80 > v77)
        {
          v81 = v72;
          *v71 = v74;
          *v73 = v72;
          v82 = v9;
          v83 = v9 + 1;
          v79 = v72;
          if (v80 > v78)
          {
            goto LABEL_104;
          }

LABEL_106:
          v87 = *(a2 - 1);
          if (*(v76 + 8 * v87) > *(v76 + 8 * v79))
          {
            *v73 = v87;
            *(a2 - 1) = v72;
            v88 = *v73;
            v89 = *v71;
            v90 = *(v76 + 8 * v88);
            if (v90 > *(v76 + 8 * v89))
            {
              v9[1] = v88;
              v9[2] = v89;
              v91 = *v9;
              if (v90 > *(v76 + 8 * v91))
              {
                *v9 = v88;
                v9[1] = v91;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v81 = v75;
        if (v80 > v77)
        {
          v82 = v9;
          v83 = v9 + 2;
          v72 = *v9;
          goto LABEL_104;
        }

        *v9 = v72;
        v9[1] = v75;
        v82 = v9 + 1;
        v83 = v9 + 2;
        v72 = v75;
        if (v80 > v78)
        {
LABEL_104:
          *v82 = v74;
          *v83 = v75;
          v79 = v81;
          goto LABEL_106;
        }
      }

      v72 = v74;
      goto LABEL_106;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *,int *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = *(*a3 + 8 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 8 * v18);
      v21 = *(v15 + 8 * v19);
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v13;
          v27 = *v9;
          if (*(v15 + 8 * v26) > *(v15 + 8 * v27))
          {
            *v9 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v30 = *(a2 - 1);
        if (*(v15 + 8 * v30) > v21)
        {
          *v13 = v30;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v9[1];
      v34 = *(v15 + 8 * v32);
      v35 = *(v15 + 8 * v33);
      v36 = *(a2 - 2);
      v37 = *(v15 + 8 * v36);
      if (v34 <= v35)
      {
        if (v37 > v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v9[1];
          if (*(v15 + 8 * v38) > *(v15 + 8 * v39))
          {
            v9[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 > v34)
        {
          v9[1] = v36;
          goto LABEL_43;
        }

        v9[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + 8 * v41) > v35)
        {
          *v31 = v41;
LABEL_43:
          *(a2 - 2) = v33;
        }
      }

      v44 = v13[1];
      v42 = v13 + 1;
      v43 = v44;
      v45 = v9[2];
      v46 = *(v15 + 8 * v44);
      v47 = *(v15 + 8 * v45);
      v48 = *(a2 - 3);
      v49 = *(v15 + 8 * v48);
      if (v46 <= v47)
      {
        if (v49 > v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v9[2];
          if (*(v15 + 8 * v50) > *(v15 + 8 * v51))
          {
            v9[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 > v46)
        {
          v9[2] = v48;
          goto LABEL_52;
        }

        v9[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + 8 * v52) > v47)
        {
          *v42 = v52;
LABEL_52:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + 8 * v53);
      v56 = *(v15 + 8 * v54);
      v57 = *v42;
      v58 = *(v15 + 8 * v57);
      if (v55 <= v56)
      {
        if (v58 > v55)
        {
          *v14 = v57;
          *v42 = v53;
          v42 = v14;
          LODWORD(v53) = v54;
          if (v58 > v56)
          {
            goto LABEL_59;
          }

          LODWORD(v53) = v57;
        }
      }

      else
      {
        if (v58 <= v55)
        {
          *v31 = v53;
          *v14 = v54;
          v31 = v14;
          LODWORD(v53) = v57;
          if (v58 <= v56)
          {
            LODWORD(v53) = v54;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v31 = v57;
        *v42 = v54;
      }

LABEL_60:
      v59 = *v9;
      *v9 = v53;
      *v14 = v59;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v13;
    v24 = *(v15 + 8 * v22);
    v25 = *(v15 + 8 * v23);
    if (v24 > v25)
    {
      if (v17 > v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v40 = *(a2 - 1);
      if (*(v15 + 8 * v40) > v25)
      {
        *v9 = v40;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 <= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v28 = *v9;
    v29 = *v14;
    if (*(v15 + 8 * v28) <= *(v15 + 8 * v29))
    {
      goto LABEL_39;
    }

    *v14 = v28;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 8 * *(v9 - 1)) <= *(v15 + 8 * *v9))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,boost::math::detail::sort_functor<long double> &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v60 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,int *,boost::math::detail::sort_functor<long double> &>(v9, a2, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(v9, v60, a3);
    v9 = v60 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(v60 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *,false>(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = *v9;
  v64 = v9[1];
  v65 = *a3;
  v66 = *(*a3 + 8 * v64);
  v67 = *(*a3 + 8 * v63);
  v68 = *(a2 - 1);
  v69 = *(*a3 + 8 * v68);
  if (v66 > v67)
  {
    if (v69 <= v66)
    {
      *v9 = v64;
      v9[1] = v63;
      v86 = *(a2 - 1);
      if (*(v65 + 8 * v86) <= v67)
      {
        return result;
      }

      v9[1] = v86;
    }

    else
    {
      *v9 = v68;
    }

    goto LABEL_102;
  }

  if (v69 > v66)
  {
    v9[1] = v68;
    *(a2 - 1) = v64;
    v85 = *v9;
    v84 = v9[1];
    if (*(v65 + 8 * v84) > *(v65 + 8 * v85))
    {
      *v9 = v84;
      v9[1] = v85;
    }
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *,0>(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 8 * *a2);
  v10 = *(*a6 + 8 * *result);
  v11 = *a3;
  v12 = *(*a6 + 8 * *a3);
  if (v9 <= v10)
  {
    if (v12 <= v9)
    {
      v13 = v11;
      goto LABEL_13;
    }

    *a2 = v11;
    *a3 = v6;
    v14 = *a2;
    v15 = *result;
    if (*(v8 + 8 * v14) <= *(v8 + 8 * v15))
    {
      v13 = v6;
      v11 = v6;
      goto LABEL_13;
    }

    *result = v14;
    *a2 = v15;
    v11 = *a3;
    goto LABEL_11;
  }

  v13 = v7;
  if (v12 <= v9)
  {
    *result = v6;
    *a2 = v7;
    v11 = *a3;
    if (*(v8 + 8 * *a3) > v10)
    {
      *a2 = v11;
      goto LABEL_9;
    }

LABEL_11:
    v13 = v11;
    goto LABEL_13;
  }

  *result = v11;
LABEL_9:
  *a3 = v7;
  v11 = v7;
LABEL_13:
  v16 = *a4;
  if (*(v8 + 8 * v16) > *(v8 + 8 * v13))
  {
    *a3 = v16;
    *a4 = v11;
    v17 = *a3;
    v18 = *a2;
    if (*(v8 + 8 * v17) > *(v8 + 8 * v18))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v8 + 8 * v19) > *(v8 + 8 * v20))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v8 + 8 * v21) > *(v8 + 8 * v22))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v8 + 8 * v23) > *(v8 + 8 * v24))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v8 + 8 * v25) > *(v8 + 8 * v26))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v8 + 8 * v27) > *(v8 + 8 * v28))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(int *result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v3;
        v9 = *(v5 + 8 * v7);
        if (v9 > *(v5 + 8 * v8))
        {
          v10 = v4;
          while (1)
          {
            *(result + v10 + 4) = v8;
            if (!v10)
            {
              break;
            }

            v8 = *(result + v10 - 4);
            v10 -= 4;
            if (v9 <= *(v5 + 8 * v8))
            {
              v11 = (result + v10 + 4);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
        }

        v3 = v6 + 1;
        v4 += 4;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(int *result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v6 = *result;
        v5 = result[1];
        result = v3;
        v7 = *(v4 + 8 * v5);
        if (v7 > *(v4 + 8 * v6))
        {
          do
          {
            *v3 = v6;
            v6 = *(v3 - 2);
            --v3;
          }

          while (v7 > *(v4 + 8 * v6));
          *v3 = v5;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,int *,boost::math::detail::sort_functor<long double> &>(int *a1, int *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = *(*a3 + 8 * v3);
  if (v5 <= *(*a3 + 8 * *(a2 - 1)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 <= *(v4 + 8 * *v6));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 <= *(v4 + 8 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 > *(v4 + 8 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 <= *(v4 + 8 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 > *(v4 + 8 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,int *,boost::math::detail::sort_functor<long double> &>(int *a1, int *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = *(*a3 + 8 * v4);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 8 * v7) > v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 8 * v11) <= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 8 * v10) <= v6);
  }

  if (v8 < a2)
  {
    v12 = *a2;
    v13 = v7;
    v14 = v8;
    v15 = a2;
    do
    {
      *v14 = v12;
      *v15 = v13;
      do
      {
        v16 = v14[1];
        ++v14;
        v13 = v16;
      }

      while (*(v5 + 8 * v16) > v6);
      do
      {
        v17 = *--v15;
        v12 = v17;
      }

      while (*(v5 + 8 * v17) <= v6);
    }

    while (v14 < v15);
    v9 = v14 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + 8 * v6);
      v9 = *(*a3 + 8 * v5);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 8 * v10);
      if (v8 <= v9)
      {
        if (v11 > v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v36 = *a1;
          v35 = a1[1];
          if (*(v7 + 8 * v35) > *(v7 + 8 * v36))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v11 > v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + 8 * v46) > v9)
      {
        a1[1] = v46;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + 8 * v23);
    v29 = *(*a3 + 8 * *a1);
    v30 = v25;
    v31 = *(*a3 + 8 * v25);
    if (v28 <= v29)
    {
      if (v31 > v28)
      {
        v32 = v23;
        *v22 = v25;
        *v24 = v23;
        v33 = a1;
        v34 = a1 + 1;
        v30 = v23;
        if (v31 <= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v32 = v26;
      if (v31 > v28)
      {
        v33 = a1;
        v34 = a1 + 2;
        v23 = *a1;
LABEL_44:
        *v33 = v25;
        *v34 = v26;
        v30 = v32;
LABEL_46:
        v47 = *(a2 - 1);
        if (*(v27 + 8 * v47) > *(v27 + 8 * v30))
        {
          *v24 = v47;
          *(a2 - 1) = v23;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v27 + 8 * v48);
          if (v50 > *(v27 + 8 * v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 > *(v27 + 8 * v51))
            {
              *a1 = v48;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      *a1 = v23;
      a1[1] = v26;
      v33 = a1 + 1;
      v34 = a1 + 2;
      v23 = v26;
      if (v31 > v29)
      {
        goto LABEL_44;
      }
    }

    v23 = v25;
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
    if (*(*a3 + 8 * v4) > *(*a3 + 8 * v5))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a3;
  v16 = *(*a3 + 8 * v14);
  v17 = *a1;
  v18 = *(*a3 + 8 * v17);
  v19 = *(*a3 + 8 * v12);
  if (v16 > v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 <= v16)
    {
      *a1 = v14;
      a1[1] = v17;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 <= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v20 = v12;
    *v21 = v17;
    goto LABEL_26;
  }

  if (v19 > v16)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 > v18)
    {
      goto LABEL_25;
    }
  }

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
    v42 = *(v15 + 8 * v40);
    if (v42 > *(v15 + 8 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 4;
        if (v43 == 4)
        {
          break;
        }

        v41 = *(a1 + v43 - 8);
        v43 -= 4;
        if (v42 <= *(v15 + 8 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_34;
        }
      }

      v45 = a1;
LABEL_34:
      *v45 = v40;
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

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *,int *>(int *a1, int *a2, int *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*(*a4 + 8 * v13) > *(*a4 + 8 * v14))
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = *a4;
        v18 = a1;
        do
        {
          v19 = v18;
          v20 = &v18[v15];
          v18 = v20 + 1;
          v21 = 2 * v15;
          v15 = (2 * v15) | 1;
          v22 = v21 + 2;
          if (v22 < v8)
          {
            v24 = v20[2];
            v23 = v20 + 2;
            if (*(v17 + 8 * *(v23 - 1)) > *(v17 + 8 * v24))
            {
              v18 = v23;
              v15 = v22;
            }
          }

          *v19 = *v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v16;
        }

        else
        {
          *v18 = *v6;
          *v6 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(uint64_t result, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 + 1;
      v7 = (result + 4 * (v5 + 1));
      v8 = v5 + 2;
      v9 = *a2;
      if (v8 < a3 && *(v9 + 8 * *v7) > *(v9 + 8 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 8 * v11);
      if (*(v9 + 8 * v10) <= v12)
      {
        do
        {
          v13 = v7;
          *a4 = v10;
          if (v4 < v6)
          {
            break;
          }

          v14 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v15 = v14 + 2;
          if (v15 < a3 && *(v9 + 8 * *v7) > *(v9 + 8 * v7[1]))
          {
            ++v7;
            v6 = v15;
          }

          v10 = *v7;
          a4 = v13;
        }

        while (*(v9 + 8 * v10) <= v12);
        *v13 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::math::detail::sort_functor<long double> &,int *>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v6 = *v5;
    v9 = *(a2 - 4);
    v7 = (a2 - 4);
    v8 = v9;
    v10 = *a3;
    v11 = *(*a3 + 8 * v9);
    if (*(*a3 + 8 * v6) > v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v10 + 8 * v6) > v11);
      *v12 = v8;
    }
  }

  return result;
}

uint64_t CoreChartTrendDistributionSeries.init(dataViewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1475840(a1, a2, type metadata accessor for CoreChartTrendViewModel);
  v4 = *(a1 + 16);
  sub_1D1474E30(a1);
  v5 = *(type metadata accessor for CoreChartTrendDistributionSeries() + 20);
  v6 = sub_1D15A2838();
  v7 = *(*(v6 - 8) + 104);
  if ((v4 - 2) > 3u)
  {
    v8 = MEMORY[0x1E6969A48];
  }

  else
  {
    v8 = qword_1E83E68F0[(v4 - 2)];
  }

  v9 = *v8;

  return v7(a2 + v5, v9, v6);
}

uint64_t sub_1D1474E30(uint64_t a1)
{
  v2 = type metadata accessor for CoreChartTrendViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CoreChartTrendDistributionSeries()
{
  result = qword_1EE057DC8;
  if (!qword_1EE057DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CoreChartTrendDistributionSeries.distributionSeries.getter()
{
  v1 = type metadata accessor for CoreChartTrendDistributionSeries();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v7[1] = *(v0 + *(type metadata accessor for CoreChartTrendViewModel(0) + 36));
  sub_1D1475840(v0, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CoreChartTrendDistributionSeries);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1D14758A8(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_1D1476DF0(0, &qword_1EE056840, type metadata accessor for CoreChartTrendDataElement, MEMORY[0x1E69E62F8]);
  sub_1D15A26A8();
  sub_1D1476DF0(0, &qword_1EC62FFD0, sub_1D147598C, MEMORY[0x1E69E6720]);
  sub_1D1475AD8();
  sub_1D1475B60();
  sub_1D1458880(&qword_1EC62FFF8, type metadata accessor for CoreChartTrendDataElement);

  return sub_1D15A3D28();
}

uint64_t sub_1D147510C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  sub_1D1476D98();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v41 - v8;
  v9 = MEMORY[0x1E69E6720];
  sub_1D1476DF0(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  sub_1D1476E54();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D15A35D8();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1475A54();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D147598C();
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v50 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1476DF0(0, &qword_1EC62FFD0, sub_1D147598C, v9);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v41 - v25;
  sub_1D15A4148();
  v55 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = type metadata accessor for CoreChartTrendDataElement(0);
  v28 = (a1 + *(v27 + 24));
  if (v28[1])
  {
    (*(v22 + 56))(v26, 1, 1, v21);
  }

  else
  {
    v29 = v27;
    v41 = v22;
    v42 = v18;
    v43 = v17;
    v44 = v21;
    v45 = a3;
    v30 = *v28;
    sub_1D15A38B8();
    type metadata accessor for CoreChartTrendDistributionSeries();
    v31 = sub_1D15A2848();
    (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
    sub_1D15A33F8();

    sub_1D1476EB4(v12);
    sub_1D15A38B8();
    v59[0] = *(a1 + *(v29 + 20));
    sub_1D15A3408();

    sub_1D15A38B8();
    v59[0] = v30;
    sub_1D15A3408();

    sub_1D15A26A8();
    v32 = v48;
    sub_1D15A35B8();
    sub_1D15A3688();
    v33 = MEMORY[0x1E695B2B8];
    v34 = v52;
    v35 = v54;
    sub_1D15A3378();
    sub_1D1476F40(v59);
    (*(v49 + 8))(v32, v35);
    if (qword_1EE058CB0 != -1)
    {
      swift_once();
    }

    v57 = v33;
    v58 = qword_1EE068218;
    v56 = v35;
    swift_getOpaqueTypeConformance2();
    v36 = v50;
    v37 = v43;
    sub_1D15A3328();
    (*(v42 + 8))(v34, v37);
    v38 = v41;
    v39 = v44;
    (*(v41 + 32))(v26, v36, v44);
    (*(v38 + 56))(v26, 0, 1, v39);
    a3 = v45;
  }

  sub_1D145DD84(v26, a3);
}

uint64_t sub_1D1475840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14758A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreChartTrendDistributionSeries();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D147590C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CoreChartTrendDistributionSeries() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D147510C(a1, v6, a2);
}

void sub_1D147598C()
{
  if (!qword_1EC62FFD8)
  {
    sub_1D1475A54();
    sub_1D15A35D8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC62FFD8);
    }
  }
}

void sub_1D1475A54()
{
  if (!qword_1EC62FFE0)
  {
    sub_1D15A35D8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC62FFE0);
    }
  }
}

unint64_t sub_1D1475AD8()
{
  result = qword_1EC62FFE8;
  if (!qword_1EC62FFE8)
  {
    sub_1D1476DF0(255, &qword_1EE056840, type metadata accessor for CoreChartTrendDataElement, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC62FFE8);
  }

  return result;
}

unint64_t sub_1D1475B60()
{
  result = qword_1EC62FFF0;
  if (!qword_1EC62FFF0)
  {
    sub_1D1476DF0(255, &qword_1EC62FFD0, sub_1D147598C, MEMORY[0x1E69E6720]);
    sub_1D1475A54();
    sub_1D15A35D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC62FFF0);
  }

  return result;
}

uint64_t sub_1D1475CA4()
{
  result = type metadata accessor for CoreChartTrendViewModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D15A2838();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D1475D28()
{
  result = qword_1EC630000;
  if (!qword_1EC630000)
  {
    sub_1D1475DA0();
    sub_1D1475B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630000);
  }

  return result;
}

void sub_1D1475DA0()
{
  if (!qword_1EC630008)
  {
    sub_1D1476DF0(255, &qword_1EE056840, type metadata accessor for CoreChartTrendDataElement, MEMORY[0x1E69E62F8]);
    sub_1D15A26A8();
    sub_1D1476DF0(255, &qword_1EC62FFD0, sub_1D147598C, MEMORY[0x1E69E6720]);
    sub_1D1475AD8();
    sub_1D1458880(&qword_1EC630010, MEMORY[0x1E6969530]);
    v0 = sub_1D15A3D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630008);
    }
  }
}

uint64_t sub_1D1475F10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1475F30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D1476048@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D14760A0(uint64_t a1, id *a2)
{
  result = sub_1D15A3F18();
  *a2 = 0;
  return result;
}

uint64_t sub_1D1476118(uint64_t a1, id *a2)
{
  v3 = sub_1D15A3F28();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D1476198@<X0>(uint64_t *a1@<X8>)
{
  sub_1D15A3F38();
  v2 = sub_1D15A3EF8();

  *a1 = v2;
  return result;
}

uint64_t sub_1D14761E4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1D388A500](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1D1476238(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1D388A510](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

float sub_1D14762B8@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1D14762D0()
{
  v0 = sub_1D15A3F38();
  v2 = v1;
  if (v0 == sub_1D15A3F38() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D15A4BA8();
  }

  return v5 & 1;
}

uint64_t sub_1D1476478@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D15A3EF8();

  *a1 = v2;
  return result;
}

uint64_t sub_1D14764C0()
{
  sub_1D1458880(&qword_1EE05AD28, type metadata accessor for Key);
  sub_1D1458880(&qword_1EC630188, type metadata accessor for Key);

  return sub_1D15A4998();
}

uint64_t sub_1D147672C()
{
  sub_1D1458880(&qword_1EC630178, type metadata accessor for HKQuantityTypeIdentifier);
  sub_1D1458880(&qword_1EC630180, type metadata accessor for HKQuantityTypeIdentifier);

  return sub_1D15A4998();
}

uint64_t sub_1D14768C0()
{
  sub_1D1458880(&qword_1EC630158, type metadata accessor for UIContentSizeCategory);
  sub_1D1458880(&qword_1EC630160, type metadata accessor for UIContentSizeCategory);

  return sub_1D15A4998();
}

uint64_t sub_1D147697C()
{
  sub_1D1458880(&qword_1EC630168, type metadata accessor for UILayoutPriority);
  sub_1D1458880(&qword_1EC630170, type metadata accessor for UILayoutPriority);
  return sub_1D15A4998();
}

uint64_t sub_1D1476AC8()
{
  v0 = sub_1D15A3F38();
  v1 = MEMORY[0x1D388A370](v0);

  return v1;
}

uint64_t sub_1D1476B04()
{
  sub_1D15A3F38();
  sub_1D15A3F88();
}

uint64_t sub_1D1476B58()
{
  sub_1D15A3F38();
  sub_1D15A4C88();
  sub_1D15A3F88();
  v0 = sub_1D15A4CB8();

  return v0;
}

uint64_t sub_1D1476D60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1D1476D98()
{
  if (!qword_1EC630190)
  {
    v0 = sub_1D15A3418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630190);
    }
  }
}

void sub_1D1476DF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D1476E54()
{
  if (!qword_1EC630198)
  {
    sub_1D15A26A8();
    v0 = sub_1D15A3418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630198);
    }
  }
}

uint64_t sub_1D1476EB4(uint64_t a1)
{
  sub_1D1476DF0(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1476FA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1476FC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

HealthVisualization::SleepQueryConfiguration __swiftcall SleepQueryConfiguration.init(dateRange:queryOptions:)(HealthVisualization::DateRange dateRange, __C::HKSleepDaySummaryQueryOptions queryOptions)
{
  *v2 = dateRange;
  *(v2 + 8) = queryOptions;
  result.queryOptions = queryOptions;
  result.dateRange = dateRange;
  return result;
}

BOOL static SleepQueryConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = *a1;
  v6 = *a2;
  if (v5 > 2)
  {
    v11 = 0x4D676E696C6C6F72;
    v12 = 0xEC00000068746E6FLL;
    if (v5 != 4)
    {
      v11 = 0x48676E696C6C6F72;
      v12 = 0xEF72616559666C61;
    }

    if (v5 == 3)
    {
      v9 = 0x57676E696C6C6F72;
    }

    else
    {
      v9 = v11;
    }

    if (v5 == 3)
    {
      v10 = 0xEB000000006B6565;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    v8 = 0x656D69546C6C61;
    if (v5 != 1)
    {
      v8 = 0x7961646F74;
      v7 = 0xE500000000000000;
    }

    if (*a1)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x6669636570736E75;
    }

    if (v5)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xEB00000000646569;
    }
  }

  v13 = 0x57676E696C6C6F72;
  v14 = *(a1 + 1);
  v15 = *(a2 + 1);
  v16 = 0xEB000000006B6565;
  v17 = 0x4D676E696C6C6F72;
  v18 = 0xEC00000068746E6FLL;
  if (v6 != 4)
  {
    v17 = 0x48676E696C6C6F72;
    v18 = 0xEF72616559666C61;
  }

  if (v6 != 3)
  {
    v13 = v17;
    v16 = v18;
  }

  v19 = 0xE700000000000000;
  v20 = 0x656D69546C6C61;
  if (v6 != 1)
  {
    v20 = 0x7961646F74;
    v19 = 0xE500000000000000;
  }

  if (*a2)
  {
    v4 = v20;
    v3 = v19;
  }

  if (*a2 <= 2u)
  {
    v21 = v4;
  }

  else
  {
    v21 = v13;
  }

  if (*a2 <= 2u)
  {
    v22 = v3;
  }

  else
  {
    v22 = v16;
  }

  if (v9 == v21 && v10 == v22)
  {
  }

  else
  {
    v23 = sub_1D15A4BA8();

    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  return v14 == v15;
}

uint64_t sub_1D14772F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006C65;
  v3 = 0x646F4D7472616863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x616E41646E657274;
    }

    else
    {
      v5 = 0xD000000000000017;
    }

    if (v4 == 2)
    {
      v6 = 0xED0000736973796CLL;
    }

    else
    {
      v6 = 0x80000001D15BCCF0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x56746E6572727563;
    }

    else
    {
      v5 = 0x646F4D7472616863;
    }

    if (v4)
    {
      v6 = 0xEC00000065756C61;
    }

    else
    {
      v6 = 0xEA00000000006C65;
    }
  }

  v7 = 0x616E41646E657274;
  v8 = 0x80000001D15BCCF0;
  if (a2 == 2)
  {
    v8 = 0xED0000736973796CLL;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (a2)
  {
    v3 = 0x56746E6572727563;
    v2 = 0xEC00000065756C61;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

uint64_t sub_1D1477464(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0x57676E696C6C6F72;
  v6 = 0xEB000000006B6565;
  v7 = 0x4D676E696C6C6F72;
  v8 = 0xEC00000068746E6FLL;
  if (a1 != 4)
  {
    v7 = 0x48676E696C6C6F72;
    v8 = 0xEF72616559666C61;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x656D69546C6C61;
  if (a1 != 1)
  {
    v10 = 0x7961646F74;
    v9 = 0xE500000000000000;
  }

  if (!a1)
  {
    v10 = 0x6669636570736E75;
    v9 = 0xEB00000000646569;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEB000000006B6565;
      if (v11 != 0x57676E696C6C6F72)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC00000068746E6FLL;
      if (v11 != 0x4D676E696C6C6F72)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEF72616559666C61;
      if (v11 != 0x48676E696C6C6F72)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x656D69546C6C61)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x7961646F74;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1D15A4BA8();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1D1477670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x54664F7472617473;
    }

    if (v2)
    {
      v4 = 0x80000001D15BCF10;
    }

    else
    {
      v4 = 0xEC0000007961646FLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x57664F7472617473;
    v4 = 0xEB000000006B6565;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x4D664F7472617473;
    }

    else
    {
      v3 = 0x59664F7472617473;
    }

    if (v2 == 3)
    {
      v4 = 0xEC00000068746E6FLL;
    }

    else
    {
      v4 = 0xEB00000000726165;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x54664F7472617473;
    }

    if (a2)
    {
      v5 = 0x80000001D15BCF10;
    }

    else
    {
      v5 = 0xEC0000007961646FLL;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 2)
  {
    v7 = 0x57664F7472617473;
    v8 = 7038309;
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xEC00000068746E6FLL;
      if (v3 != 0x4D664F7472617473)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v7 = 0x59664F7472617473;
    v8 = 7496037;
  }

  v5 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v3 != v7)
  {
LABEL_34:
    v9 = sub_1D15A4BA8();
    goto LABEL_35;
  }

LABEL_32:
  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_1D147783C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x796144656E6FLL;
    }

    else
    {
      v4 = 0x72756F48656E6FLL;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6B656557656E6FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x68746E6F4D656E6FLL;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x72616559656E6FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x796144656E6FLL;
    }

    else
    {
      v9 = 0x72756F48656E6FLL;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x68746E6F4D656E6FLL;
    if (a2 != 3)
    {
      v6 = 0x72616559656E6FLL;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6B656557656E6FLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1D15A4BA8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1D14779C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065736F63;
  v3 = 0x756C47646F6F6C62;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (v4)
    {
      v8 = 0x80000001D15BCFA0;
    }

    else
    {
      v8 = 0x80000001D15BCF80;
    }
  }

  else
  {
    v5 = 0x7461726970736572;
    v6 = 0xEF6574615279726FLL;
    if (a1 == 3)
    {
      v5 = 0x756C47646F6F6C62;
      v6 = 0xEC00000065736F63;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v5;
    }

    if (v4 == 2)
    {
      v8 = 0x80000001D15BCFC0;
    }

    else
    {
      v8 = v6;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (a2)
    {
      v2 = 0x80000001D15BCFA0;
    }

    else
    {
      v2 = 0x80000001D15BCF80;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v2 = 0x80000001D15BCFC0;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (a2 != 3)
    {
      v2 = 0xEF6574615279726FLL;
      if (v7 != 0x7461726970736572)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }
  }

  if (v7 != v3)
  {
LABEL_31:
    v9 = sub_1D15A4BA8();
    goto LABEL_32;
  }

LABEL_28:
  if (v8 != v2)
  {
    goto LABEL_31;
  }

  v9 = 1;
LABEL_32:

  return v9 & 1;
}

uint64_t sub_1D1477B68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x65756C615670;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D726F4E326CLL;
    }

    else
    {
      v4 = 0x7473697461745374;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEA00000000006369;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6953746365666665;
    }

    else
    {
      v4 = 0x65756C615670;
    }

    if (v3)
    {
      v5 = 0xEA0000000000657ALL;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D726F4E326CLL;
  if (a2 != 2)
  {
    v8 = 0x7473697461745374;
    v7 = 0xEA00000000006369;
  }

  if (a2)
  {
    v2 = 0x6953746365666665;
    v6 = 0xEA0000000000657ALL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

uint64_t sub_1D1477CB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000068746469;
  v3 = 0x57746C7561666564;
  v4 = a1;
  v5 = 0x74646957666C6168;
  v6 = 0xE900000000000068;
  v7 = 0x64726968546F7774;
  v8 = 0xEE00687464695773;
  if (a1 != 4)
  {
    v7 = 0x7269685472756F66;
    v8 = 0xEF68746469577364;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x656E696C72696168;
  v10 = 0xED00006874646957;
  if (a1 != 1)
  {
    v9 = 0x6472696854656E6FLL;
    v10 = 0xED00006874646957;
  }

  if (!a1)
  {
    v9 = 0x57746C7561666564;
    v10 = 0xEC00000068746469;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE900000000000068;
      if (v11 != 0x74646957666C6168)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE00687464695773;
      if (v11 != 0x64726968546F7774)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEF68746469577364;
      if (v11 != 0x7269685472756F66)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xED00006874646957;
        if (v11 != 0x656E696C72696168)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6472696854656E6FLL;
      v2 = 0xED00006874646957;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1D15A4BA8();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1D1477EF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000068;
  v3 = 0x7464695772756F68;
  v4 = a1;
  v5 = 0x746469576B656577;
  if (a1 == 2)
  {
    v6 = 0xE900000000000068;
  }

  else
  {
    v5 = 0x5774686769736E69;
    v6 = 0xEC00000068746469;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6874646957796164;
  if (!a1)
  {
    v8 = 0x7464695772756F68;
    v7 = 0xE900000000000068;
  }

  if (a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x746469576B656577;
  if (a2 == 2)
  {
    v12 = 0xE900000000000068;
  }

  else
  {
    v11 = 0x5774686769736E69;
    v12 = 0xEC00000068746469;
  }

  if (a2)
  {
    v3 = 0x6874646957796164;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D15A4BA8();
  }

  return v15 & 1;
}

uint64_t sub_1D1478040(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007374;
  v3 = 0xD000000000000010;
  v4 = 0x65736E496F72657ALL;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x65736E496F72657ALL;
    }

    if (v5 == 2)
    {
      v7 = 0x80000001D15BD910;
    }

    else
    {
      v7 = 0xEA00000000007374;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xD000000000000019;
    }

    if (v5)
    {
      v7 = 0x80000001D15BD8F0;
    }

    else
    {
      v7 = 0x80000001D15BD8D0;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000011;
    v2 = 0x80000001D15BD910;
  }

  v8 = 0x80000001D15BD8F0;
  if (!a2)
  {
    v3 = 0xD000000000000019;
    v8 = 0x80000001D15BD8D0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

uint64_t sub_1D1478164(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E69;
  v3 = 0x6772614D7466656CLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7265746E6563;
    }

    else
    {
      v5 = 0x614D6D6F74746F62;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEC0000006E696772;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x72614D7468676972;
    }

    else
    {
      v5 = 0x6772614D7466656CLL;
    }

    if (v4)
    {
      v6 = 0xEB000000006E6967;
    }

    else
    {
      v6 = 0xEA00000000006E69;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (a2 != 2)
  {
    v8 = 0x614D6D6F74746F62;
    v7 = 0xEC0000006E696772;
  }

  if (a2)
  {
    v3 = 0x72614D7468676972;
    v2 = 0xEB000000006E6967;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

uint64_t sub_1D14782C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007375696461;
  v3 = 0x52746C7561666564;
  v4 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0x80000001D15BD0D0;
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      if (a1 == 4)
      {
        v6 = 0xD000000000000012;
      }

      else
      {
        v6 = 0xD000000000000010;
      }

      if (v4 == 4)
      {
        v7 = 0x80000001D15BD0F0;
      }

      else
      {
        v7 = 0x80000001D15BD110;
      }
    }
  }

  else
  {
    v5 = 0x69646152666C6168;
    if (a1 != 1)
    {
      v5 = 0x696461526F72657ALL;
    }

    if (a1)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x52746C7561666564;
    }

    if (v4)
    {
      v7 = 0xEA00000000007375;
    }

    else
    {
      v7 = 0xED00007375696461;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v9 = 0xD000000000000012;
      }

      else
      {
        v9 = 0xD000000000000010;
      }

      if (a2 == 4)
      {
        v2 = 0x80000001D15BD0F0;
      }

      else
      {
        v2 = 0x80000001D15BD110;
      }

      if (v6 != v9)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v2 = 0x80000001D15BD0D0;
    v3 = 0xD00000000000001ALL;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v8 = 1718378856;
    }

    else
    {
      v8 = 1869768058;
    }

    v2 = 0xEA00000000007375;
    if (v6 != (v8 | 0x6964615200000000))
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (v6 != v3)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (v7 != v2)
  {
LABEL_38:
    v10 = sub_1D15A4BA8();
    goto LABEL_39;
  }

  v10 = 1;
LABEL_39:

  return v10 & 1;
}

uint64_t sub_1D14784C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = "fourThirdsRadius";
  v4 = a1;
  v5 = 0xD00000000000001ELL;
  if (a1 == 4)
  {
    v6 = "alertHeartRateDistributionWidth";
  }

  else
  {
    v5 = 0xD00000000000001BLL;
    v6 = "audioExposureDistributionWidth";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001FLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "DistributionWidth";
  }

  v8 = 0xD000000000000021;
  if (v4 == 1)
  {
    v8 = 0xD000000000000015;
    v9 = "defaultDistributionWidth";
  }

  else
  {
    v9 = "weekDistributionWidth";
  }

  if (!v4)
  {
    v8 = 0xD000000000000018;
    v9 = "fourThirdsRadius";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v7;
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001FLL;
      v3 = "DistributionWidth";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001ELL;
      v3 = "alertHeartRateDistributionWidth";
    }

    else
    {
      v2 = 0xD00000000000001BLL;
      v3 = "audioExposureDistributionWidth";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "defaultDistributionWidth";
    }

    else
    {
      v2 = 0xD000000000000021;
      v3 = "weekDistributionWidth";
    }
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

uint64_t sub_1D1478638(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF65676172657641;
  v3 = 0x6574657263736964;
  if (a1 > 4u)
  {
    v4 = 0xE800000000000000;
    v10 = 0x65636E6573657270;
    v11 = 0x80000001D15BCEC0;
    if (a1 == 8)
    {
      v12 = 0xD00000000000001ALL;
    }

    else
    {
      v12 = 0xD000000000000019;
    }

    if (a1 != 8)
    {
      v11 = 0x80000001D15BCEE0;
    }

    if (a1 != 7)
    {
      v10 = v12;
      v4 = v11;
    }

    v7 = 0xE800000000000000;
    v13 = 0x6E6F697461727564;
    if (a1 != 5)
    {
      v13 = 0x4465676172657661;
      v7 = 0xEF6E6F6974617275;
    }

    v8 = a1 <= 6u;
    if (a1 <= 6u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0xEF6D756D6978614DLL;
    v5 = 0x6974616C756D7563;
    v6 = 0xED00006D75536576;
    if (a1 != 3)
    {
      v5 = 0x6563655274736F6DLL;
      v6 = 0xEA0000000000746ELL;
    }

    if (a1 == 2)
    {
      v5 = 0x6574657263736964;
    }

    else
    {
      v4 = v6;
    }

    v7 = 0xEF6D756D696E694DLL;
    if (!a1)
    {
      v7 = 0xEF65676172657641;
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = 0x6574657263736964;
    }

    else
    {
      v9 = v5;
    }
  }

  if (v8)
  {
    v14 = v7;
  }

  else
  {
    v14 = v4;
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v9 != 0x6E6F697461727564)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v2 = 0xEF6E6F6974617275;
        if (v9 != 0x4465676172657661)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_52;
    }

    if (a2 == 7)
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x65636E6573657270)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    if (a2 == 8)
    {
      v2 = 0x80000001D15BCEC0;
      if (v9 != 0xD00000000000001ALL)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    v3 = 0xD000000000000019;
    v2 = 0x80000001D15BCEE0;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          v2 = 0xED00006D75536576;
          if (v9 != 0x6974616C756D7563)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v2 = 0xEA0000000000746ELL;
          if (v9 != 0x6563655274736F6DLL)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_52;
      }

      v15 = 1769496909;
LABEL_44:
      v2 = v15 | 0xEF6D756D00000000;
      if (v9 != 0x6574657263736964)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    if (a2)
    {
      v15 = 1768843597;
      goto LABEL_44;
    }
  }

  if (v9 != v3)
  {
LABEL_55:
    v16 = sub_1D15A4BA8();
    goto LABEL_56;
  }

LABEL_52:
  if (v14 != v2)
  {
    goto LABEL_55;
  }

  v16 = 1;
LABEL_56:

  return v16 & 1;
}

uint64_t sub_1D147895C()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

uint64_t sub_1D14789A4()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

uint64_t sub_1D14789E8()
{
  if (*v0)
  {
    return 0x74704F7972657571;
  }

  else
  {
    return 0x676E615265746164;
  }
}

uint64_t sub_1D1478A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E615265746164 && a2 == 0xE900000000000065;
  if (v6 || (sub_1D15A4BA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74704F7972657571 && a2 == 0xEC000000736E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D15A4BA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1478B24(uint64_t a1)
{
  v2 = sub_1D1478FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1478B60(uint64_t a1)
{
  v2 = sub_1D1478FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D1479090(0, &qword_1EE056340, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = *v1;
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1478FE8();
  sub_1D15A4CE8();
  v14 = v9;
  v13 = 0;
  sub_1D147903C();
  sub_1D15A4B38();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    type metadata accessor for HKSleepDaySummaryQueryOptions(0);
    sub_1D1479148(&qword_1EE056648);
    sub_1D15A4B38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SleepQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1479090(0, &qword_1EE05AC70, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1478FE8();
  sub_1D15A4CD8();
  if (!v2)
  {
    v15 = 0;
    sub_1D14790F4();
    sub_1D15A4A78();
    v10 = v16;
    type metadata accessor for HKSleepDaySummaryQueryOptions(0);
    v14 = 1;
    sub_1D1479148(&qword_1EC6301B0);
    sub_1D15A4A78();
    (*(v7 + 8))(v9, v6);
    v12 = v13[1];
    *a2 = v10;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1478FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D1477464(*a1, *a2) & (v2 == v3);
}

unint64_t sub_1D1478FE8()
{
  result = qword_1EE05B010;
  if (!qword_1EE05B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B010);
  }

  return result;
}

unint64_t sub_1D147903C()
{
  result = qword_1EE056D00[0];
  if (!qword_1EE056D00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE056D00);
  }

  return result;
}

void sub_1D1479090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D1478FE8();
    v7 = a3(a1, &type metadata for SleepQueryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D14790F4()
{
  result = qword_1EE05ADE0;
  if (!qword_1EE05ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05ADE0);
  }

  return result;
}

uint64_t sub_1D1479148(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepQueryConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[16])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepQueryConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_1D1479238()
{
  result = qword_1EC6301B8;
  if (!qword_1EC6301B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6301B8);
  }

  return result;
}

unint64_t sub_1D1479290()
{
  result = qword_1EE05B000;
  if (!qword_1EE05B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B000);
  }

  return result;
}

unint64_t sub_1D14792E8()
{
  result = qword_1EE05B008;
  if (!qword_1EE05B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B008);
  }

  return result;
}

Swift::Void __swiftcall NSOperation.logRunning(withInfo:)(Swift::String withInfo)
{
  v2._countAndFlagsBits = 0x676E696E6E7572;
  v2._object = 0xE700000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v2, withInfo);
}

Swift::Void __swiftcall NSOperation.logCancelled(withInfo:)(Swift::String withInfo)
{
  v2._countAndFlagsBits = 0x656C6C65636E6163;
  v2._object = 0xE900000000000064;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v2, withInfo);
}

Swift::Void __swiftcall NSOperation.logCleanUp(withInfo:)(Swift::String withInfo)
{
  v2._countAndFlagsBits = 0x676E696E61656C63;
  v2._object = 0xEB00000000707520;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v2, withInfo);
}

Swift::Void __swiftcall NSOperation.logFinished(withInfo:)(Swift::String withInfo)
{
  v2._countAndFlagsBits = 0x64656873696E6966;
  v2._object = 0xE800000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v2, withInfo);
}

Swift::Void __swiftcall NSOperation.logAbortingDueToCancellation(withInfo:)(Swift::String withInfo)
{
  v2._object = 0x80000001D15BDC90;
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v2, withInfo);
}

uint64_t NSOperation.logError(_:withInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getErrorValue();
  v5._countAndFlagsBits = sub_1D15A4C08();
  v6._countAndFlagsBits = a2;
  v6._object = a3;
  NSOperation.logErrorString(_:withInfo:)(v5, v6);
}

uint64_t sub_1D14794A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), const char *a6)
{
  v36 = a1;
  v37 = a3;
  v11 = sub_1D15A3268();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A31E8();
  v15 = v6;

  v16 = sub_1D15A3248();
  v17 = a5();

  if (os_log_type_enabled(v16, v17))
  {
    v33 = v17;
    v34 = a6;
    v35 = v11;
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v18 = 136446723;
    v19 = v15;
    v20 = [v19 description];
    v21 = sub_1D15A3F38();
    v23 = v22;

    v24 = sub_1D1479780(v21, v23, &v40);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1D1479780(v36, a2, &v40);
    *(v18 + 22) = 2081;
    v25 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v25 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v38 = 0x203A6F666E692820;
      v39 = 0xE800000000000000;
      MEMORY[0x1D388A330]();
      MEMORY[0x1D388A330](41, 0xE100000000000000);
      v26 = v38;
      v27 = v39;
    }

    else
    {
      v26 = 0;
      v27 = 0xE000000000000000;
    }

    v29 = sub_1D1479780(v26, v27, &v40);

    *(v18 + 24) = v29;
    _os_log_impl(&dword_1D1446000, v16, v33, v34, v18, 0x20u);
    v30 = v32;
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v30, -1, -1);
    MEMORY[0x1D388BF00](v18, -1, -1);

    return (*(v12 + 8))(v14, v35);
  }

  else
  {

    return (*(v12 + 8))(v14, v11);
  }
}

unint64_t sub_1D1479780(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D147984C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D1479D10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D147984C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D1479958(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D15A4848();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D1479958(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D14799A4(a1, a2);
  sub_1D1479AD4(&unk_1F4D3A160);
  return v3;
}

uint64_t sub_1D14799A4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D1479BC0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D15A4848();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D15A3FD8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D1479BC0(v10, 0);
        result = sub_1D15A47C8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D1479AD4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D1479C28(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D1479BC0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D1479D6C();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D1479C28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D1479D6C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1D1479D10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1D1479D6C()
{
  if (!qword_1EE056270)
  {
    v0 = sub_1D15A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056270);
    }
  }
}

Swift::Int __swiftcall _HKQuantityDistributionData.sampleCount()()
{
  v1 = [v0 histogramCounts];
  sub_1D1479EE0();
  v2 = sub_1D15A40C8();

  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_1D15A4708();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D388AB50](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = [v6 integerValue];

    ++v4;
    v9 = __OFADD__(v5, v8);
    v5 += v8;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  return v5;
}

unint64_t sub_1D1479EE0()
{
  result = qword_1EE05ACD8;
  if (!qword_1EE05ACD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05ACD8);
  }

  return result;
}

uint64_t Collection<>.histogramSampleCount()()
{
  v0 = sub_1D15A4248();
  result = 0;
  if ((v0 & 1) == 0)
  {
    sub_1D15A4048();
    return v2;
  }

  return result;
}

Swift::Int sub_1D1479FB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = _HKQuantityDistributionData.sampleCount()();
  if (__OFADD__(v3, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + result;
  }

  return result;
}

double Collection<>.histogramSamplesPerMinute(startDate:endDate:)()
{
  v0 = Collection<>.histogramSampleCount()();
  sub_1D15A2588();
  v2 = v1;
  result = 0.0;
  if (v0 >= 1)
  {
    v4 = v2 / 60.0;
    if (v4 > 0.0)
    {
      return v0 / v4;
    }
  }

  return result;
}

double sub_1D147A070(uint64_t a1)
{
  sub_1D15A2588();
  v3 = v2;
  result = 0.0;
  if (a1 >= 1)
  {
    v5 = v3 / 60.0;
    if (v5 > 0.0)
    {
      return a1 / v5;
    }
  }

  return result;
}

int *ValueHistogramCollectionQueryConfiguration.init(dateInterval:anchorDate:statisticsInterval:quantityRanges:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_1D15A22A8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ValueHistogramCollectionQueryConfiguration();
  *(a5 + result[5]) = v9;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t type metadata accessor for ValueHistogramCollectionQueryConfiguration()
{
  result = qword_1EE057638;
  if (!qword_1EE057638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D147A240()
{
  sub_1D15A22A8();
  if (v0 <= 0x3F)
  {
    sub_1D147A2DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D147A2DC()
{
  if (!qword_1EC6301C0)
  {
    sub_1D147A334();
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6301C0);
    }
  }
}

unint64_t sub_1D147A334()
{
  result = qword_1EE056740;
  if (!qword_1EE056740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE056740);
  }

  return result;
}

double sub_1D147A3A4()
{
  v1 = *(v0 + 440);
  v2 = 0.0;
  if ((*(v1 + 144) & 1) == 0)
  {
    v2 = *(v1 + 112);
  }

  sub_1D14567B4();
  if ((*(v1 + 64) & 0xFE00000000) != 0x200000000)
  {
    DiagramConfiguration.TextAttributes.toTextAttributes()();
    v3 = sub_1D15A3EF8();
    type metadata accessor for Key(0);
    sub_1D14587E0();
    v4 = sub_1D15A3E48();

    [v3 sizeWithAttributes_];
  }

  return v2;
}

void (*sub_1D147A4F4())(CGContext *a1, uint64_t a2, double a3, double a4)
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;

  return sub_1D147D6F4;
}

void sub_1D147A580(CGContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v205 = a6;
  v206 = a5;
  *&v222 = sub_1D15A2998();
  v10 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  *&v221 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(a2 + 24);
  v224 = *(a2 + 8);
  v225 = v13;
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a3 + 128);
  v243 = *(a3 + 112);
  v244 = v16;
  v245 = *(a3 + 144);
  v17 = *(a3 + 22);
  v18 = *(a3 + 21);
  sub_1D147ED90(&v243, &v227);
  sub_1D147D4CC(&v243, 2u, v240);
  if (v241)
  {
    sub_1D147EDEC(&v243);
    goto LABEL_11;
  }

  v19 = *v240;
  v20 = *&v240[1];
  v21 = *&v240[2];
  v22 = *&v240[3];
  sub_1D1459D3C();
  v23 = swift_allocObject();
  v24 = v243;
  v25 = v244;
  *(v23 + 16) = xmmword_1D15ACDD0;
  *(v23 + 32) = v24;
  v26 = v245;
  *(v23 + 48) = v25;
  *(v23 + 64) = v26;
  *(v23 + 80) = v18;
  sub_1D1523900(v23, v17);
  v28 = v27;
  v30 = v29;
  swift_setDeallocating();
  sub_1D145A100(v23 + 32);
  swift_deallocClassInstance();
  if (v30)
  {
    goto LABEL_11;
  }

  v31 = v28;
  v255.origin.x = v19;
  v255.origin.y = v20;
  v255.size.width = v21;
  v255.size.height = v22;
  v246.y = CGRectGetMaxY(v255);
  *&v227.a = v224;
  *&v227.c = v225;
  v227.tx = v14;
  v227.ty = v15;
  v246.x = 0.0;
  v32 = CGPointApplyAffineTransform(v246, &v227);
  if (v17 > 1)
  {
    v33 = v205;
    if (v17 != 2)
    {
      if (v32.y < 0.0)
      {
        v31 = 0.0;
        if (v205 >= 0.0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
    v33 = v205;
    if (v17)
    {
      v31 = v28 * 0.5;
    }
  }

  if (v32.y < v31 && v33 >= 0.0)
  {
LABEL_10:
    v34 = v33 / (v31 - v32.y + v33);
    v35 = (v31 - v32.y) * v34;
    CGAffineTransformMakeScale(&v227, 1.0, v34);
    tx = v227.tx;
    ty = v227.ty;
    v223 = *&v227.a;
    v220 = *&v227.c;
    CGAffineTransformMakeTranslation(&v227, 0.0, v35);
    v38 = *&v227.a;
    v39 = *&v227.c;
    v40 = *&v227.tx;
    *&v227.a = v223;
    *&v227.c = v220;
    v227.tx = tx;
    v227.ty = ty;
    *v242 = v38;
    *&v242[16] = v39;
    *&v242[32] = v40;
    CGAffineTransformConcat(&v226, &v227, v242);
    *&v227.a = v224;
    *&v227.c = v225;
    v227.tx = v14;
    v227.ty = v15;
    *v242 = v226;
    CGAffineTransformConcat(&v226, &v227, v242);
    v224 = *&v226.a;
    v225 = *&v226.c;
    v14 = v226.tx;
    v15 = v226.ty;
  }

LABEL_11:
  *v242 = v12;
  *&v242[8] = v224;
  *&v242[24] = v225;
  *&v242[40] = v14;
  *&v242[48] = v15;
  LOBYTE(v227.a) = *(a3 + 20);
  v41 = v12;
  isa = DiagramConfiguration.Color.toColor()().super.isa;
  v42 = *(a3 + 22);
  v227 = *v242;
  *&v228 = *&v242[48];
  sub_1D145CB10(a1, &v227, v206, v205);
  v201 = v42;
  if (!v42)
  {

LABEL_14:
    LOBYTE(v227.a) = 2;
    MEMORY[0x1EEE9AC00](v43);
    *(&v200 - 8) = v242;
    v45 = v205;
    *(&v200 - 7) = v206;
    *(&v200 - 6) = v45;
    *(&v200 - 5) = a3;
    *(&v200 - 4) = a1;
    *(&v200 - 3) = isa;
    *(&v200 - 2) = a4;
    sub_1D147D1EC(&v227, sub_1D147EEA4);
    goto LABEL_15;
  }

  v44 = sub_1D15A4BA8();

  if (v44)
  {
    goto LABEL_14;
  }

LABEL_15:
  *&v223 = qword_1D15ACEE0[*(a3 + 16)];
  v46 = *(&v245 + 1);
  LOBYTE(v227.a) = *(a3 + 18);
  v215 = DiagramConfiguration.Color.toColor()().super.isa;
  v47 = *(a3 + 40);
  v207 = a3;
  v208 = v46;
  if (v47 == 35 || (v48 = *(a3 + 80), v49 = *(a3 + 72), v50 = *(a3 + 64), v51 = *(a3 + 56), v52 = *(a3 + 48), LOBYTE(v227.a) = v47, v227.b = v52, v227.c = v51, LOBYTE(v227.d) = v50 & 1, v227.tx = v49, LOBYTE(v227.ty) = v48 & 1, *&v220 = sub_1D147D720(&v227.a, v215), !v220))
  {
    v83 = *(v46 + 16);
    if (v83)
    {
      v84 = 0;
      v85 = (v46 + 32);
      v216 = (v46 + 32);
      while (v84 < *(v46 + 16))
      {
        v86 = *(v85 + v84);
        if (*(v86 + 16))
        {

          v87 = sub_1D1451D94(0);
          if (v88)
          {
            v89 = *(*(v86 + 56) + 40 * v87);

            v90 = *(v89 + 16);
            if (v90)
            {
              *&v222 = *&v242[8];
              *&v221 = *&v242[16];
              v219 = *&v242[32];
              *&v220 = *&v242[24];
              v91 = (v89 + 56);
              v92 = 1;
              v217 = *&v242[48];
              v218 = *&v242[40];
              while (1)
              {
                v104 = *(v89 + 16);
                if (v92 - 1 >= v104)
                {
                  break;
                }

                v105 = *(v91 - 3);
                v106 = *(v91 - 2);
                v93 = v105;
                v94 = v106;
                if (v92 < v90)
                {
                  if (v92 >= v104)
                  {
                    goto LABEL_101;
                  }

                  v93 = *(v91 - 1);
                  v94 = *v91;
                }

                v95 = *&v222;
                v96 = *&v221;
                *&v227.a = v222;
                *&v227.b = v221;
                v98 = v219;
                v97 = *&v220;
                *&v227.c = v220;
                v227.d = v219;
                v100 = v217;
                v99 = v218;
                v227.tx = v218;
                v227.ty = v217;
                v101 = CGPointApplyAffineTransform(*&v105, &v227);
                *&v225 = v101.x;
                *&v224 = v101.y;
                v227.a = v95;
                v227.b = v96;
                v227.c = v97;
                v227.d = v98;
                v227.tx = v99;
                v227.ty = v100;
                v249.x = v93;
                v249.y = v94;
                CGPointApplyAffineTransform(v249, &v227);
                CGContextSetLineWidth(a1, *&v223);
                CGContextSetLineCap(a1, kCGLineCapRound);
                v102 = [(objc_class *)v215 CGColor];
                CGContextSetStrokeColorWithColor(a1, v102);

                sub_1D15A4298();
                sub_1D15A42A8();
                CGContextStrokePath(a1);
                v103 = v92 + 1;
                v92 += 2;
                v91 += 4;
                if (v103 >= v90)
                {
                  v46 = v208;
                  v85 = v216;
                  goto LABEL_41;
                }
              }

LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }
          }

LABEL_41:
        }

        if (++v84 == v83)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_105;
    }
  }

  else
  {
    v256.origin.x = sub_1D145664C();
    v218 = *&v242[16];
    v219 = *&v242[8];
    v227 = *&v242[8];
    v216 = *&v242[32];
    v217 = *&v242[24];
    v213 = *&v242[48];
    v214 = *&v242[40];
    v257 = CGRectApplyAffineTransform(v256, &v227);
    v53 = 0.0;
    if (v48)
    {
      y = 0.0;
    }

    else
    {
      y = v257.origin.y;
    }

    v55 = v257.origin.y + v257.size.height;
    if ((v50 & 1) == 0)
    {
      v53 = v55;
    }

    v211 = v53;
    v212 = y;
    v258.size.height = v53 - y;
    v258.origin.x = 0.0;
    v258.origin.y = y;
    v258.size.width = v206;
    CGContextClipToRect(a1, v258);
    CGContextSetLineWidth(a1, *&v223);
    CGContextSetLineCap(a1, kCGLineCapRound);
    v56 = *(v46 + 16);
    if (v56)
    {
      v57 = 0;
      v58 = v46 + 32;
      v210 = *MEMORY[0x1E695EEB8];
      v209 = (v10 + 104);
      v59 = (v10 + 8);
      v200 = v56;
      v202 = v46 + 32;
      v60 = v222;
      while (v57 < *(v46 + 16))
      {
        v61 = *(v58 + 8 * v57);
        if (*(v61 + 16))
        {

          v62 = sub_1D1451D94(0);
          if (v63)
          {
            v64 = *(*(v61 + 56) + 40 * v62);

            v65 = *(v64 + 16);
            if (v65)
            {
              v203 = v57;
              v66 = (v64 + 56);
              v67 = 1;
              while (1)
              {
                v78 = *(v64 + 16);
                if (v67 - 1 >= v78)
                {
                  goto LABEL_102;
                }

                v79 = *(v66 - 3);
                v80 = *(v66 - 2);
                v81 = v79;
                v82 = v80;
                if (v67 < v65)
                {
                  if (v67 >= v78)
                  {
                    goto LABEL_103;
                  }

                  v81 = *(v66 - 1);
                  v82 = *v66;
                }

                v68 = v218;
                v69 = v219;
                v227.a = v219;
                v227.b = v218;
                v71 = v216;
                v70 = v217;
                v227.c = v217;
                *&v227.d = v216;
                v73 = v213;
                v72 = v214;
                v227.tx = v214;
                v227.ty = v213;
                v74 = CGPointApplyAffineTransform(*&v79, &v227);
                *&v224 = v74.x;
                *&v225 = v74.y;
                v227.a = v69;
                v227.b = v68;
                v227.c = v70;
                *&v227.d = v71;
                v227.tx = v72;
                v227.ty = v73;
                v247.x = v81;
                v247.y = v82;
                CGPointApplyAffineTransform(v247, &v227);
                v75 = *&v224;
                sub_1D15A4298();
                sub_1D15A42A8();
                CGContextReplacePathWithStrokedPath(a1);
                CGContextSaveGState(a1);
                v76 = v221;
                (*v209)(v221, v210, v60);
                sub_1D15A4288();
                (*v59)(v76, v60);
                v248.x = v75;
                v254.y = v211;
                v248.y = v212;
                v254.x = v75;
                CGContextDrawLinearGradient(a1, v220, v248, v254, 0);
                CGContextRestoreGState(a1);
                v77 = v67 + 1;
                v67 += 2;
                v66 += 4;
                if (v77 >= v65)
                {
                  v46 = v208;
                  v56 = v200;
                  v58 = v202;
                  v57 = v203;
                  goto LABEL_25;
                }
              }
            }

            v46 = v208;
            v58 = v202;
          }

LABEL_25:
        }

        if (++v57 == v56)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_106;
    }

LABEL_55:
  }

LABEL_56:
  LOBYTE(v227.a) = *(v207 + 19);
  v216 = DiagramConfiguration.Color.toColor()().super.isa;
  v107 = *(v46 + 16);
  if (!v107)
  {
LABEL_72:
    v131 = v207;
    v132 = *(v207 + 368);
    v237 = *(v207 + 352);
    v238 = v132;
    v239 = *(v207 + 384);
    v133 = *(v207 + 304);
    v233 = *(v207 + 288);
    v234 = v133;
    v134 = *(v207 + 336);
    v235 = *(v207 + 320);
    v236 = v134;
    v135 = *(v207 + 240);
    v229 = *(v207 + 224);
    v230 = v135;
    v136 = *(v207 + 272);
    v231 = *(v207 + 256);
    v232 = v136;
    v137 = *(v207 + 176);
    *&v227.a = *(v207 + 160);
    *&v227.c = v137;
    v138 = *(v207 + 208);
    *&v227.tx = *(v207 + 192);
    v228 = v138;
    if (sub_1D147EC8C(&v227) != 1)
    {
      v139 = dbl_1D15ACF40[*(v131 + 17)];
      if ((v234 & 1) == 0)
      {
        v226 = *&v242[8];
        v140 = CGPointApplyAffineTransform(v233, &v226);
        v141 = *(&v229 + 1);
        v142 = v140.x - *&v229 * 0.5;
        v143 = sub_1D15A3EF8();
        type metadata accessor for Key(0);
        sub_1D14587E0();
        v144 = sub_1D15A3E48();
        [v143 drawAtPoint:v144 withAttributes:{v142, v139 + v140.y + 2.0}];

        v145 = v140.x - *&v231 * 0.5;
        v146 = sub_1D15A3EF8();
        v131 = v207;
        v147 = sub_1D15A3E48();
        [v146 drawAtPoint:v147 withAttributes:{v145, v139 + v140.y + 2.0 + v141}];
      }

      if ((BYTE8(v235) & 1) == 0)
      {
        v251.x = *(&v234 + 1);
        *&v251.y = v235;
        v226 = *&v242[8];
        v148 = CGPointApplyAffineTransform(v251, &v226);
        v149 = v148.x - *&v232 * 0.5;
        v150 = v148.y + -2.0 - *(&v232 + 1);
        v151 = sub_1D15A3EF8();
        type metadata accessor for Key(0);
        sub_1D14587E0();
        v152 = sub_1D15A3E48();
        [v151 drawAtPoint:v152 withAttributes:{v149, v150 - v139}];

        v153 = v148.x - *&v230 * 0.5;
        v154 = v150 - *(&v230 + 1) - v139;
        v155 = sub_1D15A3EF8();
        v131 = v207;
        v156 = sub_1D15A3E48();
        [v155 drawAtPoint:v156 withAttributes:{v153, v154}];
      }

      if (v238 == 1)
      {
        v157 = *&v223 + -4.0;
        v158 = *&v242[8];
        v159 = *&v242[16];
        v160 = *&v242[24];
        v161 = *&v242[32];
        v162 = *&v242[40];
        v163 = *&v242[48];
        v226 = *&v242[8];
        v164 = CGPointApplyAffineTransform(v236, &v226);
        *&v225 = v164.x;
        *&v224 = v164.y;
        CGContextSaveGState(a1);
        CGContextSetBlendMode(a1, kCGBlendModeClear);
        v165 = objc_opt_self();
        v166 = [v165 blackColor];
        v167 = [v166 CGColor];

        CGContextSetFillColorWithColor(a1, v167);
        v259.origin.x = *&v225 - v157 * 0.5;
        v259.origin.y = *&v224 - v157 * 0.5;
        v259.size.width = v157;
        v259.size.height = v157;
        CGContextFillEllipseInRect(a1, v259);
        CGContextRestoreGState(a1);
        v226.a = v158;
        v226.b = v159;
        v226.c = v160;
        v226.d = v161;
        v226.tx = v162;
        v226.ty = v163;
        v168 = CGPointApplyAffineTransform(v237, &v226);
        CGContextSaveGState(a1);
        CGContextSetBlendMode(a1, kCGBlendModeClear);
        v169 = [v165 blackColor];
        v131 = v207;
        v170 = [v169 CGColor];

        CGContextSetFillColorWithColor(a1, v170);
        v260.origin.x = v168.x - v157 * 0.5;
        v260.origin.y = v168.y - v157 * 0.5;
        v260.size.width = v157;
        v260.size.height = v157;
        CGContextFillEllipseInRect(a1, v260);
        CGContextRestoreGState(a1);
      }
    }

    v171 = *(v131 + 392);
    if (v171)
    {
      v172 = *(v171 + 16);
      if (v172)
      {
        *&v224 = *(v207 + 408);
        v173 = *(v207 + 400);
        v222 = *&v242[24];
        v223 = *&v242[8];
        v174 = v171 + 56;
        v221 = *&v242[40];
        do
        {
          *&v225 = v172;
          v252 = *(v174 - 8);
          *&v226.a = v223;
          *&v226.c = v222;
          *&v226.tx = v221;
          v175 = CGPointApplyAffineTransform(v252, &v226);

          v176 = sub_1D15A3EF8();
          type metadata accessor for Key(0);
          sub_1D14587E0();
          v177 = sub_1D15A3E48();
          [v176 sizeWithAttributes_];
          v179 = v178;
          v181 = v180;

          v182 = sub_1D15A3EF8();

          v183 = sub_1D15A3E48();
          [v182 drawAtPoint:v183 withAttributes:{v175.x + v179 * -0.5, v175.y - v173 - v181}];

          v174 += 32;
          v172 = v225 - 1;
        }

        while (v225 != 1);
      }
    }

    v184 = *(v207 + 416);
    if (v184)
    {
      v185 = *(v184 + 16);
      if (v185)
      {
        *&v224 = *(v207 + 432);
        v186 = *(v207 + 424);
        v222 = *&v242[24];
        v223 = *&v242[8];
        v187 = v184 + 56;
        v221 = *&v242[40];
        do
        {
          *&v225 = *(v187 - 24);
          v253 = *(v187 - 8);
          *&v226.a = v223;
          *&v226.c = v222;
          *&v226.tx = v221;
          v188 = CGPointApplyAffineTransform(v253, &v226);

          v189 = sub_1D15A3EF8();
          type metadata accessor for Key(0);
          sub_1D14587E0();
          v190 = sub_1D15A3E48();
          [v189 sizeWithAttributes_];
          v192 = v191;

          v193 = sub_1D15A3EF8();

          v194 = sub_1D15A3E48();
          [v193 drawAtPoint:v194 withAttributes:{v188.x + v192 * -0.5, v186 + v188.y}];

          v187 += 32;
          --v185;
        }

        while (v185);
      }
    }

    if (v201 > 1)
    {
      v195 = v207;
    }

    else
    {
      if (!v201)
      {

        goto LABEL_93;
      }

      v195 = v207;
    }

    v196 = sub_1D15A4BA8();

    if ((v196 & 1) == 0)
    {
      LOBYTE(v226.a) = 2;
      MEMORY[0x1EEE9AC00](v197);
      *(&v200 - 6) = v195;
      *(&v200 - 5) = a1;
      v198 = v205;
      *(&v200 - 4) = v206;
      *(&v200 - 3) = v198;
      v199 = isa;
      *(&v200 - 2) = v242;
      *(&v200 - 1) = v199;
      sub_1D147D1EC(&v226, sub_1D147EE40);

      sub_1D147EE50(v242);
      return;
    }

LABEL_93:
    sub_1D147EE50(v242);

    return;
  }

  v108 = 0;
  *&v109 = v46 + 32;
  *&v214 = v46 + 32;
  while (v108 < *(v46 + 16))
  {
    v110 = *(*&v109 + 8 * v108);
    if (*(v110 + 16))
    {

      v111 = sub_1D1451D94(1u);
      if (v112)
      {
        v113 = *(*(v110 + 56) + 40 * v111);

        v114 = *(v113 + 16);
        if (v114)
        {
          *&v222 = *&v242[8];
          *&v221 = *&v242[16];
          v219 = *&v242[32];
          *&v220 = *&v242[24];
          v115 = (v113 + 56);
          v116 = 1;
          v217 = *&v242[48];
          v218 = *&v242[40];
          while (1)
          {
            v126 = *(v113 + 16);
            if (v116 - 1 >= v126)
            {
              break;
            }

            v127 = *(v115 - 3);
            v128 = *(v115 - 2);
            v129 = v127;
            v130 = v128;
            if (v116 < v114)
            {
              if (v116 >= v126)
              {
                goto LABEL_100;
              }

              v129 = *(v115 - 1);
              v130 = *v115;
            }

            v117 = *&v222;
            v118 = *&v221;
            *&v227.a = v222;
            *&v227.b = v221;
            v120 = v219;
            v119 = *&v220;
            *&v227.c = v220;
            v227.d = v219;
            v122 = v217;
            v121 = v218;
            v227.tx = v218;
            v227.ty = v217;
            v123 = CGPointApplyAffineTransform(*&v127, &v227);
            *&v225 = v123.x;
            *&v224 = v123.y;
            v227.a = v117;
            v227.b = v118;
            v227.c = v119;
            v227.d = v120;
            v227.tx = v121;
            v227.ty = v122;
            v250.x = v129;
            v250.y = v130;
            CGPointApplyAffineTransform(v250, &v227);
            CGContextSetLineWidth(a1, *&v223);
            CGContextSetLineCap(a1, kCGLineCapRound);
            v124 = [(objc_class *)v216 CGColor];
            CGContextSetStrokeColorWithColor(a1, v124);

            sub_1D15A4298();
            sub_1D15A42A8();
            CGContextStrokePath(a1);
            v125 = v116 + 1;
            v116 += 2;
            v115 += 4;
            if (v125 >= v114)
            {
              v46 = v208;
              v109 = v214;
              goto LABEL_59;
            }
          }

          __break(1u);
          goto LABEL_99;
        }
      }

LABEL_59:
    }

    if (++v108 == v107)
    {
      goto LABEL_72;
    }
  }

LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
}

void sub_1D147B8EC(double a1, CGFloat a2, uint64_t a3, uint64_t a4, uint64_t a5, CGFloat *a6, uint64_t a7, CGContext *a8, void *a9)
{
  v15 = a6[2];
  v16 = a6[3];
  v17 = a6[4];
  v19 = a6[5];
  v18 = a6[6];
  v29.a = a6[1];
  a = v29.a;
  v29.b = v15;
  v29.c = v16;
  v29.d = v17;
  v29.tx = v19;
  v29.ty = v18;
  v20 = 0;
  y = CGPointApplyAffineTransform(*(&a2 + -8), &v29).y;
  v29.a = a;
  v29.b = v15;
  v29.c = v16;
  v29.d = v17;
  v29.tx = v19;
  v29.ty = v18;
  v30.x = 0.0;
  v30.y = a2;
  CGPointApplyAffineTransform(v30, &v29);
  LOBYTE(v29.a) = 2;
  v22 = DiagramConfiguration.LineWidth.toPoints()();
  CGContextSetLineWidth(a8, v22);
  CGContextSetLineCap(a8, kCGLineCapRound);
  v23 = [a9 CGColor];
  CGContextSetStrokeColorWithColor(a8, v23);

  sub_1D15A4298();
  sub_1D15A42A8();
  CGContextStrokePath(a8);
  if (a4)
  {
    v28 = *(a7 + 21);
    static DiagramGenerator.computeLeftMarginAnnotationBounds(at:annotation:above:textAttributes:)(a4, 1, &v28, &v29, 0.0, y);
    if ((LOBYTE(v29.tx) & 1) == 0)
    {
      v25 = v29.a;
      b = v29.b;
      v26 = sub_1D15A3EF8();
      v28 = *(a7 + 21);
      DiagramConfiguration.TextAttributes.toTextAttributes()();
      type metadata accessor for Key(0);
      sub_1D14587E0();
      v27 = sub_1D15A3E48();

      [v26 drawAtPoint:v27 withAttributes:{v25, b}];
    }
  }
}

void sub_1D147BAEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, CGContext *a5, double *a6, void *a7)
{
  v89 = a7;
  v81 = sub_1D15A2998();
  v11 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  if (*a3)
  {
    v14 = a3[2];
    v78 = a3[1];
    LOBYTE(v90.a) = 5;
    v88 = DiagramConfiguration.LineWidth.toPoints()();
    v15 = *(v13 + 16);
    if (v15)
    {
      v79 = v13;
      LOBYTE(v90.a) = *(a4 + 21);
      v16 = DiagramConfiguration.TextAttributes.toTextAttributes()();
      v17 = v15 - 1;
      if (v15 == 1)
      {
      }

      else
      {
        v77 = v16;
        v18 = v79;
        v74 = *(v79 + 16) - 1;
        v19 = v74 / 2;
        v87 = objc_opt_self();
        v20 = 0;
        v22 = a6[1];
        v21 = a6[2];
        v24 = a6[3];
        v23 = a6[4];
        v25 = a6[5];
        v26 = a6[6];
        v68 = v88 * 0.5 + 1.0;
        v76 = -v68;
        v71 = *MEMORY[0x1E695EEB8];
        v70 = (v11 + 104);
        v69 = (v11 + 8);
        v27 = v18;
        v86 = v15 - 2;
        v28 = v18 + 56;
        v75 = v15 - 1;
        v73 = v19;
        v72 = v22;
        v84 = v24;
        v85 = v21;
        v83 = v26;
        while (1)
        {
          v55 = *(v27 + 16);
          if (v20 >= v55)
          {
            break;
          }

          v56 = v20 + 1;
          v92 = *(v28 - 24);
          v90.a = v22;
          v90.b = v21;
          v90.c = v24;
          v90.d = v23;
          v90.tx = v25;
          v90.ty = v26;
          v57 = CGPointApplyAffineTransform(v92, &v90);
          if (v20 + 1 >= v55)
          {
            goto LABEL_28;
          }

          x = v57.x;
          y = v57.y;
          v93 = *(v28 - 8);
          v90.a = v22;
          v90.b = v21;
          v90.c = v24;
          v90.d = v23;
          v90.tx = v25;
          v90.ty = v26;
          v58 = CGPointApplyAffineTransform(v93, &v90);
          v59 = v58.x;
          v60 = v58.y;
          if (!v20)
          {
            CGAffineTransformMakeTranslation(&v90, v68, 0.0);
            v61 = CGPointApplyAffineTransform(v57, &v90);
            x = v61.x;
            y = v61.y;
          }

          if (v86 == v20)
          {
            CGAffineTransformMakeTranslation(&v90, v76, 0.0);
            v62 = CGPointApplyAffineTransform(v58, &v90);
            v59 = v62.x;
            v60 = v62.y;
          }

          CGContextSaveGState(a5);
          CGContextSaveGState(a5);
          v63 = [v87 _currentTraitCollection];
          if (!v63)
          {
            goto LABEL_29;
          }

          v64 = v63;
          v65 = [v63 userInterfaceStyle];

          if (v65 == 2)
          {
            v66 = kCGBlendModeNormal;
          }

          else
          {
            v66 = kCGBlendModePlusDarker;
          }

          CGContextSetBlendMode(a5, v66);
          CGContextSetLineWidth(a5, v88);
          CGContextSetLineCap(a5, kCGLineCapRound);
          v67 = [v89 CGColor];
          CGContextSetStrokeColorWithColor(a5, v67);

          sub_1D15A4298();
          sub_1D15A42A8();
          CGContextStrokePath(a5);
          CGContextRestoreGState(a5);
          if (v19 == v20 && v14)
          {
            if (v74)
            {
              x = x + (v59 - x) * 0.5;
              y = y + (v60 - y) * 0.5;
            }

            v31 = sub_1D15A3EF8();
            type metadata accessor for Key(0);
            v82 = v32;
            sub_1D14587E0();
            v33 = sub_1D15A3E48();
            [v31 sizeWithAttributes_];
            v35 = v34;
            v37 = v36;

            v38 = x - v35 * 0.5;
            v39 = y - v37 * 0.5;
            v40 = UIEdgeInsetsInsetRect(v38);
            v42 = v41;
            v44 = v43;
            v46 = v45;
            CGContextSaveGState(a5);
            v47 = [v89 CGColor];
            CGContextSetFillColorWithColor(a5, v47);

            v94.origin.x = v40;
            v94.origin.y = v42;
            v94.size.width = v44;
            v94.size.height = v46;
            v48 = CGPathCreateWithRoundedRect(v94, 6.0, 6.0, 0);
            CGContextAddPath(a5, v48);

            v49 = v14;
            v50 = v80;
            v51 = v81;
            (*v70)(v80, v71, v81);
            sub_1D15A42B8();
            v52 = v50;
            v14 = v49;
            (*v69)(v52, v51);
            CGContextSetBlendMode(a5, kCGBlendModeNormal);
            v53 = sub_1D15A3EF8();
            v54 = sub_1D15A3E48();
            [v53 drawAtPoint:v54 withAttributes:{v38, v39}];

            CGContextRestoreGState(a5);
            v27 = v79;
            v17 = v75;
            v19 = v73;
            v22 = v72;
          }

          CGContextRestoreGState(a5);
          v28 += 16;
          v20 = v56;
          v24 = v84;
          v21 = v85;
          v26 = v83;
          if (v17 == v56)
          {

            return;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }
    }
  }
}

uint64_t DiagramDistribution.__allocating_init(distributionConfiguration:distributionData:hbxViewControllerFactory:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = swift_allocObject();
  DiagramDistribution.init(distributionConfiguration:distributionData:hbxViewControllerFactory:)(a1, a2, a3);
  return v6;
}

void DiagramDistribution.init(distributionConfiguration:distributionData:hbxViewControllerFactory:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = v3;
  v122 = *a1;
  v123 = *(a1 + 16);
  v6 = *(a1 + 32);
  v82 = *(a1 + 40);
  v83 = *(a1 + 48);
  v7 = *(a1 + 64);
  v84 = v7;
  v8 = *(a1 + 65);
  v9 = *(a1 + 77);
  v10 = *(a1 + 73);
  v79 = v10 | (v9 << 32);
  v120 = *(a1 + 79);
  v121 = *(a1 + 87);
  v11 = *a2;
  v81 = a2[1];
  v12 = a2[2];
  v80 = a2[3];
  v13 = *(a2 + 32);
  v77 = *(a2 + 5);
  v14 = *(a1 + 16);
  v85 = *(a1 + 24);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v14;
  *(v4 + 40) = v85;
  *(v4 + 48) = v6;
  *(v4 + 56) = v82;
  v74 = v6;
  v75 = v11;
  *(v4 + 64) = v83;
  *(v4 + 80) = v7;
  *(v4 + 81) = v8;
  *(v4 + 89) = v10;
  v15 = v9;
  *(v4 + 93) = v9;
  *(v4 + 95) = *(a1 + 79);
  *(v4 + 103) = *(a1 + 87);
  *(v4 + 112) = v11;
  *(v4 + 120) = v81;
  *(v4 + 128) = v12;
  *(v4 + 136) = v80;
  *(v4 + 144) = v13;
  *(v4 + 152) = v77;
  type metadata accessor for DiagramDistribution();
  v114 = *a1;
  *&v115 = *(a1 + 16);
  *(&v115 + 1) = v85;
  *&v116 = v6;
  *(&v116 + 1) = v82;
  v117 = v83;
  LOBYTE(v118[0]) = v84;
  *(v118 + 1) = v8;
  *(v118 + 13) = v15;
  *(v118 + 9) = v10;
  *(v118 + 15) = *(a1 + 79);
  *(&v118[1] + 7) = *(a1 + 87);
  *&v90 = v11;
  *(&v90 + 1) = v81;
  *&v91 = v12;
  *(&v91 + 1) = v80;
  LOBYTE(v92) = v13;
  v93 = *&v77;

  sub_1D147DA34(&v114, &v90, v112);
  v16 = v112[13];
  *(v4 + 352) = v112[12];
  *(v4 + 368) = v16;
  *(v4 + 384) = v113;
  v17 = v112[9];
  *(v4 + 288) = v112[8];
  *(v4 + 304) = v17;
  v18 = v112[11];
  *(v4 + 320) = v112[10];
  *(v4 + 336) = v18;
  v19 = v112[5];
  *(v4 + 224) = v112[4];
  *(v4 + 240) = v19;
  v20 = v112[7];
  *(v4 + 256) = v112[6];
  *(v4 + 272) = v20;
  v21 = v112[1];
  *(v4 + 160) = v112[0];
  *(v4 + 176) = v21;
  v22 = v112[3];
  *(v4 + 192) = v112[2];
  *(v4 + 208) = v22;
  v114 = *a1;
  *&v115 = *(a1 + 16);
  *(&v115 + 1) = v85;
  *&v116 = v6;
  *(&v116 + 1) = v82;
  v117 = v83;
  LOBYTE(v118[0]) = v84;
  v78 = v8;
  *(v118 + 1) = v8;
  *(v118 + 13) = v15;
  *(v118 + 9) = v10;
  *(v118 + 15) = *(a1 + 79);
  *(&v118[1] + 7) = *(a1 + 87);
  *&v100 = v11;
  *(&v100 + 1) = v81;
  v101 = v12;
  v102 = v80;
  v76 = v13;
  LOBYTE(v103) = v13;
  v104 = v77;
  sub_1D147CAF8(&v114, &v100, &v90);
  v23 = v90;
  if (v90 == 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v71 = 0;
    v69 = 0;
    v27 = 0;
    *(v4 + 392) = 0;
    *(v4 + 400) = 0;
    *(v4 + 408) = 0;
  }

  else
  {
    v28 = *(&v90 + 1);
    v29 = *(&v91 + 1);
    v31 = v91;
    v30 = v92;
    v32 = v93;
    sub_1D147E9E4(v90);
    sub_1D147E9E4(v29);
    v71 = v29;
    v69 = v30;
    v27 = v32;
    sub_1D147EA24(v29);
    *(v4 + 392) = v23;
    *(v4 + 400) = v28;
    *(v4 + 408) = v31;
    sub_1D147EA24(v23);
    v26 = *(v4 + 392);
    v25 = *(v4 + 400);
    v24 = *(v4 + 408);
  }

  *(v4 + 416) = v71;
  *(v4 + 424) = v69;
  *(v4 + 432) = v27;
  v100 = v122;
  v101 = v123;
  v102 = v85;
  v103 = v74;
  v104 = v82;
  v105 = v83;
  v106 = v84;
  v107 = v78;
  v109 = WORD2(v79);
  v108 = v79;
  v110 = v120;
  v111 = v121;
  v33 = *(v4 + 176);
  v114 = *(v4 + 160);
  v115 = v33;
  v34 = *(v4 + 192);
  v35 = *(v4 + 208);
  v36 = *(v4 + 240);
  v118[0] = *(v4 + 224);
  v118[1] = v36;
  v116 = v34;
  v117 = v35;
  v37 = *(v4 + 256);
  v38 = *(v4 + 272);
  v39 = *(v4 + 304);
  v118[4] = *(v4 + 288);
  v118[5] = v39;
  v118[2] = v37;
  v118[3] = v38;
  v40 = *(v4 + 320);
  v41 = *(v4 + 336);
  v42 = *(v4 + 352);
  v43 = *(v4 + 368);
  v119 = *(v4 + 384);
  v118[8] = v42;
  v118[9] = v43;
  v118[6] = v40;
  v118[7] = v41;
  *&v87 = v26;
  *(&v87 + 1) = v25;
  v88 = v24;
  v99[1] = v69;
  v99[2] = v27;
  *&v94 = v75;
  *(&v94 + 1) = v81;
  v95 = v12;
  v96 = v80;
  LOBYTE(v97) = v76;
  v98 = v77;
  v99[0] = v71;
  sub_1D147EA64(&v114, &v90, qword_1EE05A570, &type metadata for DiagramDistribution.DiagramDistributionMinMax, MEMORY[0x1E69E6720], sub_1D147EEB8);
  sub_1D147E9E4(v26);
  sub_1D147E9E4(v71);
  sub_1D147E444(&v100, &v114, &v87, v99, &v94, &v90);
  v70 = v91;
  v72 = v90;
  v44 = v92;
  v45 = v93;
  sub_1D147ECCC(&v114, qword_1EE05A570, &type metadata for DiagramDistribution.DiagramDistributionMinMax);
  sub_1D147EA24(v99[0]);
  sub_1D147EA24(v87);
  *&v90 = v75;
  *(&v90 + 1) = v81;
  *&v91 = v12;
  *(&v91 + 1) = v80;
  LOBYTE(v92) = v76;
  v93 = *&v77;
  v124 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
  x = v124.origin.x;
  y = v124.origin.y;
  width = v124.size.width;
  height = v124.size.height;

  if (v85 != 35)
  {
    v50 = height + y - v82;
    if (v83)
    {
      v50 = height;
    }

    else
    {
      y = v82;
    }

    if (v84)
    {
      height = v50;
    }

    else
    {
      height = v50 + *(&v83 + 1) - (y + v50);
    }
  }

  type metadata accessor for DiagramAxis();
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0u;
  *(v51 + 32) = 0u;
  *(v51 + 48) = 0u;
  *(v51 + 64) = v78;
  *(v51 + 76) = WORD2(v79);
  *(v51 + 72) = v79;
  *(v51 + 80) = x;
  *(v51 + 88) = y;
  *(v51 + 96) = width;
  *(v51 + 104) = height;
  *(v51 + 112) = v72;
  *(v51 + 128) = v70;
  *(v51 + 144) = 0;
  *(v51 + 152) = v44;
  *(v51 + 160) = v45;
  *(v51 + 168) = 0;
  sub_1D147EA64(&v90, &v94, &qword_1EE0597F0, qword_1EE0597F8, &protocol descriptor for DiagramAxisMetricsCalculatorProducing, sub_1D145329C);
  if (v96)
  {
    sub_1D1450E94(&v94, &v100);
  }

  else
  {
    v52 = type metadata accessor for DiagramAxisMetricsCalculatorFactory();
    v53 = swift_allocObject();
    *(v53 + 16) = a3;
    v102 = v52;
    v103 = &protocol witness table for DiagramAxisMetricsCalculatorFactory;
    *&v100 = v53;
    v54 = a3;
  }

  if ((v78 & 0xFF00000000) == 0x300000000)
  {
    goto LABEL_21;
  }

  if ((v78 & 0xFF00000000) != 0x200000000)
  {
    v56 = v102;
    v55 = v103;
    __swift_project_boxed_opaque_existential_1(&v100, v102);
    LOBYTE(v99[0]) = v78;
    v86 = 0;
    (v55[1])(&v87, v99, &v86, v56, v55);
    if (v89)
    {
      sub_1D1450E94(&v87, &v94);
      v57 = v96;
      v58 = v97;
      __swift_project_boxed_opaque_existential_1(&v94, v96);
      v125.origin.x = x;
      v125.origin.y = y;
      v125.size.width = width;
      v125.size.height = height;
      MinX = CGRectGetMinX(v125);
      v126.origin.x = x;
      v126.origin.y = y;
      v126.size.width = width;
      v126.size.height = height;
      MaxX = CGRectGetMaxX(v126);
      if (MinX > MaxX)
      {
        __break(1u);
        goto LABEL_28;
      }

      (*(v58 + 8))(&v87, 0, v57, v58, MinX, MaxX);
      v61 = v88;
      *(v51 + 16) = v87;
      *(v51 + 32) = v61;

      __swift_destroy_boxed_opaque_existential_1(&v94);
    }

    else
    {
      sub_1D1456590(&v87, &qword_1EC6301C8, qword_1EE059CC8);
    }
  }

  if ((v79 & 0xFF000000) == 0x2000000)
  {
LABEL_21:
    sub_1D1456590(&v90, &qword_1EE0597F0, qword_1EE0597F8);

LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(&v100);
    *(v4 + 440) = v51;
    return;
  }

  v63 = v102;
  v62 = v103;
  __swift_project_boxed_opaque_existential_1(&v100, v102);
  LOBYTE(v99[0]) = HIBYTE(v78);
  v86 = 1;
  (v62[1])(&v87, v99, &v86, v63, v62);
  if (!v89)
  {
    sub_1D1456590(&v90, &qword_1EE0597F0, qword_1EE0597F8);

    sub_1D1456590(&v87, &qword_1EC6301C8, qword_1EE059CC8);
    goto LABEL_22;
  }

  sub_1D1450E94(&v87, &v94);
  v64 = v96;
  v65 = v97;
  __swift_project_boxed_opaque_existential_1(&v94, v96);
  v127.origin.x = x;
  v127.origin.y = y;
  v127.size.width = width;
  v127.size.height = height;
  MinY = CGRectGetMinY(v127);
  v128.origin.x = x;
  v128.origin.y = y;
  v128.size.width = width;
  v128.size.height = height;
  MaxY = CGRectGetMaxY(v128);
  if (MinY <= MaxY)
  {
    (*(v65 + 8))(&v87, 0, v64, v65, MinY, MaxY);

    sub_1D1456590(&v90, &qword_1EE0597F0, qword_1EE0597F8);
    v68 = v88;
    *(v51 + 40) = v87;
    *(v51 + 56) = v68;

    __swift_destroy_boxed_opaque_existential_1(&v94);
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1D147CAF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16) | (*(result + 18) << 16);
  if ((v4 & 0x800000) == 0)
  {
    goto LABEL_12;
  }

  if ((v4 & 0xFEE0E0) == 0xFEE0E0)
  {
    goto LABEL_12;
  }

  v5 = *result;
  v6 = *(result + 1);
  v76 = *(result + 80);
  v75 = *(result + 88);
  v7 = *(a2 + 40);
  v8 = *(a2 + 32);
  v9 = *(result + 8);
  v80[0] = *(result + 7);
  v10 = *(a2 + 16);
  v77[0] = *a2;
  v77[1] = v10;
  v78 = v8;
  v79 = v7;
  result = sub_1D147D8BC(v80, v77);
  if (!result)
  {
    goto LABEL_12;
  }

  v11 = result;
  if (v9 == 25)
  {
    v12 = 0;
  }

  else
  {
    LOBYTE(v77[0]) = v9;
    v12 = DiagramConfiguration.TextAttributes.toTextAttributes()();
  }

  if (BYTE1(v9) == 25)
  {
    v13 = 0;
  }

  else
  {
    LOBYTE(v77[0]) = BYTE1(v9);
    v13 = DiagramConfiguration.TextAttributes.toTextAttributes()();
  }

  v74 = v13;
  if (!(v12 | v13))
  {

LABEL_12:
    *a3 = 1;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0;
    return result;
  }

  v14 = *(v11 + 16);
  if (!v14)
  {

    v18 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v71 = v5;
  v72 = v6;
  v73 = v12;
  v16 = *(v11 + 32);
  v15 = *(v11 + 40);
  v17 = v14 - 1;
  if (v14 == 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v19 = v15;
    v20 = MEMORY[0x1E69E7CC0];
LABEL_16:

    *&v77[0] = v76;
    BYTE8(v77[0]) = v75;
    v21 = sub_1D15A29A8();
    v22 = DiagramConfiguration.ValueFormatter.format(value:)(v21);
    object = v22.value._object;

    if (v22.value._object)
    {
      countAndFlagsBits = v22.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 1701736270;
    }

    if (!v22.value._object)
    {
      object = 0xE400000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D148BC24(0, v18[2] + 1, 1, v18);
    }

    v12 = v73;
    v26 = v18[2];
    v25 = v18[3];
    if (v26 >= v25 >> 1)
    {
      v18 = sub_1D148BC24((v25 > 1), v26 + 1, 1, v18);
    }

    v18[2] = v26 + 1;
    v27 = &v18[4 * v26];
    *(v27 + 4) = countAndFlagsBits;
    *(v27 + 5) = object;
    v27[6] = v16;
    v27[7] = v19;
    *&v77[0] = v76;
    BYTE8(v77[0]) = v75;
    v28 = sub_1D15A29A8();
    v29 = DiagramConfiguration.ValueFormatter.format(value:)(v28);
    v30 = v29.value._object;

    if (v29.value._object)
    {
      v31 = v29.value._countAndFlagsBits;
    }

    else
    {
      v31 = 1701736270;
    }

    if (!v29.value._object)
    {
      v30 = 0xE400000000000000;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D148BC24(0, v20[2] + 1, 1, v20);
      v20 = result;
    }

    v33 = v20[2];
    v32 = v20[3];
    if (v33 >= v32 >> 1)
    {
      result = sub_1D148BC24((v32 > 1), v33 + 1, 1, v20);
      v20 = result;
    }

    v20[2] = v33 + 1;
    v34 = &v20[4 * v33];
    *(v34 + 4) = v31;
    *(v34 + 5) = v30;
    v34[6] = v16;
    v34[7] = v15;
    v5 = v71;
    v6 = v72;
LABEL_36:
    v35 = dbl_1D15ACF10[v5];
    v36 = dbl_1D15ACF40[v6];
    v37 = v35 + v36;
    if (v12)
    {
      v38 = v35 + v36;
      v39 = v74;
      if (v74)
      {
LABEL_39:
        *a3 = v18;
        *(a3 + 8) = v38;
        *(a3 + 16) = v12;
        *(a3 + 24) = v20;
        *(a3 + 32) = v37;
        *(a3 + 40) = v39;
        return result;
      }
    }

    else
    {

      v18 = 0;
      v38 = 0.0;
      v39 = v74;
      if (v74)
      {
        goto LABEL_39;
      }
    }

    v39 = v74;
    v20 = 0;
    v37 = 0.0;
    goto LABEL_39;
  }

  v40 = (v11 + 56);
  v18 = MEMORY[0x1E69E7CC0];
  v41 = v15;
  v42 = v16;
  v19 = v15;
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = *(v40 - 1);
    v15 = *v40;
    if (vabdd_f64(v16, v42) < 0.000001)
    {
      if (v15 > v19)
      {
        v19 = *v40;
      }

      if (v41 < v15)
      {
        v15 = v41;
      }

      v16 = v42;
      goto LABEL_48;
    }

    v43 = sub_1D15A29A8();
    if (v75)
    {
      if (v76)
      {
        v44 = [objc_opt_self() hk_percentNumberFormatter];
        v45 = [v44 stringFromNumber_];
        goto LABEL_55;
      }

      result = HKIntegerFormatter();
      if (!result)
      {
        goto LABEL_82;
      }

      v51 = result;
      v52 = [result stringFromNumber_];

      if (v52)
      {
        v48 = sub_1D15A3F38();
        v50 = v53;

        goto LABEL_61;
      }
    }

    else
    {
      v46 = HKNumberFormatterWithDecimalPrecision();
      if (v46)
      {
        v44 = v46;
        v45 = [v46 stringFromNumber_];
LABEL_55:
        v47 = v45;

        if (v47)
        {
          v48 = sub_1D15A3F38();
          v50 = v49;

          goto LABEL_61;
        }
      }
    }

    v50 = 0xE400000000000000;
    v48 = 1701736270;
LABEL_61:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D148BC24(0, v18[2] + 1, 1, v18);
    }

    v55 = v18[2];
    v54 = v18[3];
    if (v55 >= v54 >> 1)
    {
      v18 = sub_1D148BC24((v54 > 1), v55 + 1, 1, v18);
    }

    v18[2] = v55 + 1;
    v56 = &v18[4 * v55];
    *(v56 + 4) = v48;
    *(v56 + 5) = v50;
    v56[6] = v42;
    v56[7] = v19;
    v57 = sub_1D15A29A8();
    if (!v75)
    {
      v60 = HKNumberFormatterWithDecimalPrecision();
      if (!v60)
      {
        goto LABEL_75;
      }

      v58 = v60;
      v59 = [v60 stringFromNumber_];
      goto LABEL_70;
    }

    if (v76)
    {
      v58 = [objc_opt_self() hk_percentNumberFormatter];
      v59 = [v58 stringFromNumber_];
LABEL_70:
      v61 = v59;

      if (!v61)
      {
        goto LABEL_75;
      }

      v62 = sub_1D15A3F38();
      v64 = v63;

      goto LABEL_76;
    }

    result = HKIntegerFormatter();
    if (!result)
    {
      break;
    }

    v65 = result;
    v66 = [result stringFromNumber_];

    if (!v66)
    {
LABEL_75:

      v64 = 0xE400000000000000;
      v62 = 1701736270;
      goto LABEL_76;
    }

    v62 = sub_1D15A3F38();
    v64 = v67;

LABEL_76:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1D148BC24(0, v20[2] + 1, 1, v20);
    }

    v69 = v20[2];
    v68 = v20[3];
    if (v69 >= v68 >> 1)
    {
      v20 = sub_1D148BC24((v68 > 1), v69 + 1, 1, v20);
    }

    v20[2] = v69 + 1;
    v70 = &v20[4 * v69];
    *(v70 + 4) = v62;
    *(v70 + 5) = v64;
    v70[6] = v42;
    v70[7] = v41;
    v19 = v15;
    v42 = v16;
LABEL_48:
    v40 += 2;
    v41 = v15;
    if (!--v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_1D147D1EC(unsigned __int8 *a1, void (*a2)(uint64_t, uint64_t, uint64_t *, double, double))
{
  v4 = *a1;
  v5 = *(v2 + 144);
  v6 = *(v2 + 152);
  v7 = *(v2 + 128);
  v10[0] = *(v2 + 112);
  v10[1] = v7;
  v11 = v5;
  v12 = v6;
  v9 = v4;

  sub_1D14FD2C0(v10, &v9, a2);
}

uint64_t DiagramDistribution.deinit()
{

  v1 = *(v0 + 368);
  v9[12] = *(v0 + 352);
  v9[13] = v1;
  v10 = *(v0 + 384);
  v2 = *(v0 + 304);
  v9[8] = *(v0 + 288);
  v9[9] = v2;
  v3 = *(v0 + 336);
  v9[10] = *(v0 + 320);
  v9[11] = v3;
  v4 = *(v0 + 240);
  v9[4] = *(v0 + 224);
  v9[5] = v4;
  v5 = *(v0 + 272);
  v9[6] = *(v0 + 256);
  v9[7] = v5;
  v6 = *(v0 + 176);
  v9[0] = *(v0 + 160);
  v9[1] = v6;
  v7 = *(v0 + 208);
  v9[2] = *(v0 + 192);
  v9[3] = v7;
  sub_1D147ECCC(v9, qword_1EE05A570, &type metadata for DiagramDistribution.DiagramDistributionMinMax);
  sub_1D147EA24(*(v0 + 392));
  sub_1D147EA24(*(v0 + 416));

  return v0;
}

uint64_t DiagramDistribution.__deallocating_deinit()
{

  v1 = *(v0 + 368);
  v9[12] = *(v0 + 352);
  v9[13] = v1;
  v10 = *(v0 + 384);
  v2 = *(v0 + 304);
  v9[8] = *(v0 + 288);
  v9[9] = v2;
  v3 = *(v0 + 336);
  v9[10] = *(v0 + 320);
  v9[11] = v3;
  v4 = *(v0 + 240);
  v9[4] = *(v0 + 224);
  v9[5] = v4;
  v5 = *(v0 + 272);
  v9[6] = *(v0 + 256);
  v9[7] = v5;
  v6 = *(v0 + 176);
  v9[0] = *(v0 + 160);
  v9[1] = v6;
  v7 = *(v0 + 208);
  v9[2] = *(v0 + 192);
  v9[3] = v7;
  sub_1D147ECCC(v9, qword_1EE05A570, &type metadata for DiagramDistribution.DiagramDistributionMinMax);
  sub_1D147EA24(*(v0 + 392));
  sub_1D147EA24(*(v0 + 416));

  return swift_deallocClassInstance();
}

double sub_1D147D424()
{
  v1 = *(*v0 + 440);
  v2 = 0.0;
  if ((*(v1 + 144) & 1) == 0)
  {
    v2 = *(v1 + 112);
  }

  sub_1D14567B4();
  sub_1D1457AFC();
  return v2;
}

BOOL sub_1D147D4CC@<W0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v30 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
  v10 = *(a1 + 40);
  v11 = *(v10 + 16);
  v28 = y;
  v29 = x;
  v12 = v8;
  rect2 = height;
  if (v11)
  {
    width = v30.size.width;
    v14 = (v10 + 32);
    v12 = v8;
    do
    {
      v15 = *v14;
      if (*(*v14 + 16))
      {

        v16 = sub_1D1451D94(a2);
        if (v17)
        {
          v18 = *(*(v15 + 56) + 40 * v16);

          v19 = *(v18 + 2);
          if (v19)
          {
            v20 = v18[4];
            v21 = v18[5];
            if (v19 == 1)
            {

              v18 = 0;
            }

            v34.size.height = 0.0;
            v31.origin.x = x;
            v31.origin.y = y;
            v31.size.width = v12;
            v31.size.height = height;
            v34.origin.x = v20;
            v34.origin.y = v21;
            v34.size.width = width;
            v32 = CGRectUnion(v31, v34);
            x = v32.origin.x;
            y = v32.origin.y;
            v12 = v32.size.width;
            height = v32.size.height;
            sub_1D1459CF0(v18);
            goto LABEL_4;
          }
        }
      }

LABEL_4:
      ++v14;
      --v11;
    }

    while (v11);
  }

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = v12;
  v33.size.height = height;
  v35.origin.y = v28;
  v35.origin.x = v29;
  v35.size.width = v8;
  v35.size.height = rect2;
  result = CGRectEqualToRect(v33, v35);
  v23 = 0.0;
  if (result)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = x;
  }

  if (result)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = y;
  }

  if (result)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v12;
  }

  if (!result)
  {
    v23 = height;
  }

  *a3 = v24;
  *(a3 + 8) = v25;
  *(a3 + 16) = v26;
  *(a3 + 24) = v23;
  *(a3 + 32) = result;
  return result;
}

CGGradientRef sub_1D147D720(double *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v22 = v3;
  isa = DiagramConfiguration.Color.toColor()().super.isa;
  v9 = [(objc_class *)isa CGColor];

  v10 = [a2 CGColor];
  sub_1D147EEB8(0, &qword_1EE059678, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D15ACDE0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  *(v11 + 48) = v10;
  *(v11 + 56) = v9;
  v12 = 0.0;
  if (!v6)
  {
    v12 = v4;
  }

  v13 = 1.0;
  if (!v5)
  {
    v13 = 1.0 - v4;
  }

  v21[0] = 0.0;
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = 1.0;
  type metadata accessor for CGColor(0);
  v14 = v9;
  v15 = v10;
  v16 = v14;
  v17 = DeviceRGB;
  v18 = sub_1D15A40A8();

  v19 = CGGradientCreateWithColors(v17, v18, v21);

  return v19;
}

char *sub_1D147D8BC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a1;
  for (i = (v2 + 32); ; ++i)
  {
    v7 = *i;
    if (!*(*i + 16))
    {
      goto LABEL_4;
    }

    v8 = sub_1D1451D94(v5);
    if ((v9 & 1) == 0)
    {

      goto LABEL_4;
    }

    v10 = *(*(v7 + 56) + 40 * v8);

    if (!v4)
    {
      v4 = v10;
      goto LABEL_4;
    }

    v12 = *(v10 + 16);
    v13 = *(v4 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v14 <= *(v4 + 3) >> 1)
    {
      if (!*(v10 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v19 = v13 + v12;
      }

      else
      {
        v19 = v13;
      }

      result = sub_1D148B9C4(result, v19, 1, v4);
      v4 = result;
      if (!*(v10 + 16))
      {
LABEL_21:

        if (v12)
        {
          __break(1u);
          return 0;
        }

        goto LABEL_4;
      }
    }

    v15 = *(v4 + 2);
    if ((*(v4 + 3) >> 1) - v15 < v12)
    {
      goto LABEL_26;
    }

    memcpy(&v4[16 * v15 + 32], (v10 + 32), 16 * v12);

    if (v12)
    {
      v16 = *(v4 + 2);
      v17 = __OFADD__(v16, v12);
      v18 = v16 + v12;
      if (v17)
      {
        goto LABEL_27;
      }

      *(v4 + 2) = v18;
    }

LABEL_4:
    if (!--v3)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

__n128 sub_1D147DA34@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16) | (*(a1 + 18) << 16);
  if ((v4 & 0x800000) != 0)
  {
    goto LABEL_61;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a2 + 5);
  v9 = *(a2 + 32);
  LOBYTE(v130) = *(a1 + 7);
  v10 = a2[1];
  v145 = *a2;
  v146 = v10;
  LOBYTE(v147) = v9;
  *(&v147 + 1) = v8;
  v11 = sub_1D147D8BC(&v130, &v145);
  if (!v11)
  {
    goto LABEL_61;
  }

  v12 = v11;
  v13 = *(v11 + 2);
  if (!v13)
  {
    goto LABEL_60;
  }

  v14 = *(v11 + 4);
  v15 = *(v11 + 5);
  v16 = v13 - 1;
  v124 = v5;
  v125 = v8;
  if (v13 == 1)
  {
    v17 = *(v11 + 4);
    v18 = *(v11 + 5);
  }

  else
  {
    v127 = v11 + 32;
    v123 = v7;
    sub_1D15A4148();
    v19 = (v12 + 56);
    v20 = v15;
    do
    {
      v22 = *(v19 - 1);
      v21 = *v19;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v21 < v20)
      {
        v14 = v22;
        v15 = v21;
        v20 = v21;
      }

      v19 += 2;
      --v16;
    }

    while (v16);
    v23 = *(v12 + 2);
    if (!v23)
    {
      goto LABEL_60;
    }

    v24 = &v127[16 * v23 - 16];
    v17 = *v24;
    v18 = v24[1];
    if (v23 != 1)
    {
      v25 = v23 - 2;
      v26 = &v12[16 * v23 + 8];
      v27 = v24[1];
      while (v25 < *(v12 + 2))
      {
        v29 = *(v26 - 1);
        v28 = *v26;
        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v27 < v28)
        {
          v17 = v29;
          v18 = v28;
          v27 = v28;
        }

        --v25;
        v26 -= 2;
        if (v25 == -1)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

LABEL_22:
    v7 = v123;
  }

  *&v145 = v6;
  BYTE8(v145) = v7;
  v30 = sub_1D15A29A8();
  v31 = DiagramConfiguration.ValueFormatter.format(value:)(v30);

  if (!v31.value._object)
  {
LABEL_61:
    sub_1D147ECA4(&v145);
    goto LABEL_62;
  }

  *&v145 = v6;
  BYTE8(v145) = v7;
  v32 = sub_1D15A29A8();
  v33 = DiagramConfiguration.ValueFormatter.format(value:)(v32);

  if (!v33.value._object)
  {
LABEL_60:

    goto LABEL_61;
  }

  v118 = v4;
  v128 = BYTE1(v4);
  v122 = v4 & 0x10000;
  type metadata accessor for Localization();
  v145 = 0u;
  v146 = 0u;
  swift_initStaticObject();
  v34 = sub_1D147F134(0xD000000000000018, 0x80000001D15BDE20, 0, &v145, 0, 0);
  v36 = v35;
  sub_1D147ECCC(&v145, &qword_1EE05B528, MEMORY[0x1E69E7CA0] + 8);
  *&v145 = v34;
  *(&v145 + 1) = v36;
  sub_1D147ED3C();
  v37 = sub_1D15A4648();
  v39 = v38;

  v145 = 0u;
  v146 = 0u;
  v40 = sub_1D147F134(0xD000000000000018, 0x80000001D15BDE40, 0, &v145, 0, 0);
  v42 = v41;
  sub_1D147ECCC(&v145, &qword_1EE05B528, MEMORY[0x1E69E7CA0] + 8);
  *&v145 = v40;
  *(&v145 + 1) = v42;
  v120 = v39;
  v121 = v37;
  v43 = sub_1D15A4648();
  v115 = v44;
  v116 = v43;

  LOBYTE(v145) = v118;
  v45 = DiagramConfiguration.TextAttributes.toTextAttributes()();
  LOBYTE(v145) = v128;
  v117 = DiagramConfiguration.TextAttributes.toTextAttributes()();
  v46 = sub_1D15A3EF8();
  type metadata accessor for Key(0);
  sub_1D14587E0();
  v119 = v45;
  v47 = sub_1D15A3E48();
  [v46 sizeWithAttributes_];
  v113 = v49;
  v114 = v48;

  v50 = sub_1D15A3EF8();
  v51 = sub_1D15A3E48();
  [v50 sizeWithAttributes_];
  v111 = v53;
  v112 = v52;

  countAndFlagsBits = v31.value._countAndFlagsBits;
  v55 = sub_1D15A3EF8();
  v56 = v117;
  v57 = sub_1D15A3E48();
  [v55 sizeWithAttributes_];
  v59 = v58;
  v61 = v60;

  object = v33.value._object;
  v63 = v33.value._countAndFlagsBits;
  v64 = sub_1D15A3EF8();
  v65 = BYTE2(v122);
  v66 = sub_1D15A3E48();
  [v64 sizeWithAttributes_];
  v68 = v67;
  v70 = v69;

  v71 = v61;
  v72 = v59;
  v74 = v111;
  v73 = v112;
  v75 = v113;
  v76 = v114;
  v78 = v115;
  v77 = v116;
  v79 = v120;
  v80 = v121;
  v81 = v119;
  v82 = v18;
  v83 = v15;
  if (v122)
  {
    v107 = v70;
    v108 = v68;
    v109 = v71;
    v110 = v72;
    v84 = MEMORY[0x1E69E7CC0];
    *&v145 = MEMORY[0x1E69E7CC0];
    v85 = *(v125 + 16);
    if (v85)
    {
      v86 = 0;
      while (v86 < *(v125 + 16))
      {
        v87 = *(v125 + 32 + 8 * v86);
        sub_1D15A4148();

        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        ++v86;

        sub_1D14C4664(v87);
        if (v85 == v86)
        {
          v88 = v145;
          v84 = MEMORY[0x1E69E7CC0];
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_59;
    }

    v88 = MEMORY[0x1E69E7CC0];
LABEL_34:
    *&v145 = v84;
    v129 = *(v88 + 16);
    if (v129)
    {
      v89 = 0;
      v90 = v88 + 64;
      v126 = v88;
      while (v89 < *(v88 + 16))
      {
        v91 = *(v90 - 32);
        sub_1D15A4148();

        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        ++v89;

        sub_1D14C4578(v91);
        v90 += 40;
        v88 = v126;
        if (v129 == v89)
        {
          v84 = v145;
          goto LABEL_41;
        }
      }

LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_41:

    v92 = *(v84 + 16);
    v82 = v18;
    v83 = v15;
    if (v92)
    {
      sub_1D15A4148();
      v93 = (v84 + 40);
      v82 = v18;
      v83 = v15;
      do
      {
        v96 = *(v93 - 1);
        v97 = *v93;
        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v83 >= v97)
        {
          v94 = v97;
        }

        else
        {
          v94 = v83;
        }

        if (v96 == v14)
        {
          v83 = v94;
        }

        if (v97 > v82)
        {
          v95 = v97;
        }

        else
        {
          v95 = v82;
        }

        if (v96 == v17)
        {
          v82 = v95;
        }

        v93 += 2;
        --v92;
      }

      while (v92);
    }

    v63 = v33.value._countAndFlagsBits;
    countAndFlagsBits = v31.value._countAndFlagsBits;
    object = v33.value._object;
    v65 = BYTE2(v122);
    v79 = v120;
    v80 = v121;
    v56 = v117;
    v81 = v119;
    v78 = v115;
    v77 = v116;
    v75 = v113;
    v76 = v114;
    v74 = v111;
    v73 = v112;
    v71 = v109;
    v72 = v110;
    v70 = v107;
    v68 = v108;
  }

  v98 = v124 << 63 >> 63;
  *&v130 = v80;
  *(&v130 + 1) = v79;
  v99 = v124 << 62 >> 63;
  *&v131 = v77;
  *(&v131 + 1) = v78;
  *&v132 = countAndFlagsBits;
  *(&v132 + 1) = v31.value._object;
  v133.n128_u64[0] = v63;
  v133.n128_u64[1] = object;
  *&v134 = v76;
  *(&v134 + 1) = v75;
  *&v135 = v73;
  *(&v135 + 1) = v74;
  *&v136 = v72;
  *(&v136 + 1) = v71;
  *&v137 = v68;
  *(&v137 + 1) = v70;
  *&v138 = v98 & *&v14;
  *(&v138 + 1) = v98 & *&v83;
  LOBYTE(v139) = (v124 & 1) == 0;
  *(&v139 + 1) = v99 & *&v17;
  *&v140 = v99 & *&v82;
  BYTE8(v140) = (v124 & 2) == 0;
  *&v141 = v14;
  *(&v141 + 1) = v15;
  *&v142 = v17;
  *(&v142 + 1) = v18;
  LOBYTE(v143) = v65;
  *(&v143 + 1) = v81;
  v144 = v56;
  nullsub_1(&v130);
  v157 = v142;
  v158 = v143;
  v159 = v144;
  v153 = v138;
  v154 = v139;
  v155 = v140;
  v156 = v141;
  v149 = v134;
  v150 = v135;
  v151 = v136;
  v152 = v137;
  v145 = v130;
  v146 = v131;
  v147 = v132;
  v148 = v133;
LABEL_62:
  v100 = v158;
  *(a3 + 192) = v157;
  *(a3 + 208) = v100;
  *(a3 + 224) = v159;
  v101 = v154;
  *(a3 + 128) = v153;
  *(a3 + 144) = v101;
  v102 = v156;
  *(a3 + 160) = v155;
  *(a3 + 176) = v102;
  v103 = v150;
  *(a3 + 64) = v149;
  *(a3 + 80) = v103;
  v104 = v152;
  *(a3 + 96) = v151;
  *(a3 + 112) = v104;
  v105 = v146;
  *a3 = v145;
  *(a3 + 16) = v105;
  result = v148;
  *(a3 + 32) = v147;
  *(a3 + 48) = result;
  return result;
}