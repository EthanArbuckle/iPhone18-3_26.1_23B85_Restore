@interface RTLocalSinglePOIBluePOIResolver
- (double)_getConfidence:(double)a3 distribution:()chi_squared_distribution<double std:()boost:()default_policy :()default_policy math:()default_policy :()default_policy policies:()default_policy :()default_policy policy<default_policy;
- (id)inferLocalSinglePOIBluePOIsWithReferenceLocation:(id)a3 bluePOITile:(id)a4 signalEnv:(int)a5 queryTime:(id)a6;
@end

@implementation RTLocalSinglePOIBluePOIResolver

- (id)inferLocalSinglePOIBluePOIsWithReferenceLocation:(id)a3 bluePOITile:(id)a4 signalEnv:(int)a5 queryTime:(id)a6
{
  v52 = a3;
  v51 = a4;
  v50 = objc_opt_new();
  if (![v51 singlePOIMuid])
  {
    goto LABEL_21;
  }

  v9 = [v51 pointsOfInterest];
  if (!v9)
  {
    goto LABEL_21;
  }

  [v52 horizontalUncertainty];
  v11 = v10;

  if (v11 > 100.0)
  {
    goto LABEL_21;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v12 = [v51 pointsOfInterest];
  v13 = [v12 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *v58;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v58 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v57 + 1) + 8 * i);
      v17 = [v51 singlePOIMuid];
      if (v17 == [v16 muid] && (objc_msgSend(v16, "filtered") & 1) == 0)
      {
        v18 = v16;

        if (!v18)
        {
          goto LABEL_21;
        }

        [v52 latitude];
        [v52 longitude];
        v19 = [v18 location];
        [v19 latitude];
        v20 = [v18 location];
        [v20 longitude];
        RTCommonCalculateDistanceHighPrecision();
        v22 = v21;

        [(RTLocalSinglePOIBluePOIResolver *)self _getConfidence:v22 distribution:2.0 std:17.8885438];
        v24 = v23;
        v25 = [v51 pointsOfInterest];
        v26 = [v25 count] == 1;

        if (v26)
        {
          if (a5 == 6 || a5 == 1)
          {
            v24 = v24 * 0.1 + 0.9;
          }

          if (v24 < 0.4)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v30 = objc_opt_new();
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v31 = [v51 pointsOfInterest];
          v32 = [v31 countByEnumeratingWithState:&v53 objects:v62 count:16];
          if (v32)
          {
            v33 = *v54;
            do
            {
              for (j = 0; j != v32; j = j + 1)
              {
                if (*v54 != v33)
                {
                  objc_enumerationMutation(v31);
                }

                v35 = *(*(&v53 + 1) + 8 * j);
                v36 = [v35 muid];
                if (v36 != [v18 muid])
                {
                  [v52 latitude];
                  [v52 longitude];
                  v37 = [v35 location];
                  [v37 latitude];
                  v38 = [v35 location];
                  [v38 longitude];
                  RTCommonCalculateDistanceHighPrecision();
                  v40 = v39;

                  [(RTLocalSinglePOIBluePOIResolver *)self _getConfidence:v40 distribution:2.0 std:17.8885438];
                  v41 = [NSNumber numberWithDouble:?];
                  [v30 addObject:v41];
                }
              }

              v32 = [v31 countByEnumeratingWithState:&v53 objects:v62 count:16];
            }

            while (v32);
          }

          v42 = [[NSSortDescriptor alloc] initWithKey:0 ascending:0];
          v61 = v42;
          v43 = [NSArray arrayWithObjects:&v61 count:1];
          [v30 sortUsingDescriptors:v43];

          v44 = [v30 firstObject];
          [v44 doubleValue];
          v46 = v45;

          if (v24 - v46 < 0.4)
          {
            goto LABEL_36;
          }
        }

        v47 = [NSNumber numberWithDouble:v24];
        v48 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 muid]);
        [v50 setObject:v47 forKeyedSubscript:v48];

LABEL_36:
        v49 = v50;

        v27 = v50;
        goto LABEL_22;
      }
    }

    v13 = [v12 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_13:

LABEL_21:
  v27 = v50;
  v28 = v50;
LABEL_22:

  return v50;
}

- (double)_getConfidence:(double)a3 distribution:()chi_squared_distribution<double std:()boost:()default_policy :()default_policy math:()default_policy :()default_policy policies:()default_policy :()default_policy policy<default_policy
{
  v9 = a3;
  result = 0.0;
  if (a5 == 0.0)
  {
    return result;
  }

  v11 = v9 / a5 * (v9 / a5);
  v77 = v11;
  var0 = a4.var0;
  if ((a4.var0 <= -1 || ((a4.var0 & 0x7FFFFFFFFFFFFFFFLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a4.var0 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    sub_100083894("Degrees of freedom argument is %1%, but must be > 0 !", &var0);
  }

  if (*&v11 >> 52 >= 0x7FFuLL)
  {
    sub_100083894("Chi Square parameter was %1%, but must be > 0 !", &v77);
  }

  v14 = a4.var0 * 0.5;
  *&v80.__r_.__value_.__l.__data_ = a4.var0 * 0.5;
  if (a4.var0 * 0.5 <= 0.0)
  {
    sub_100085A1C("boost::math::gamma_p<%1%>(%1%, %1%)", "Argument a to the incomplete gamma function must be greater than zero (got a=%1%).", &v80);
  }

  v15 = v11 * 0.5;
  v16 = v11 * 0.5 + 1.0;
  v17 = 30.0;
  v18 = v11 * 0.5 < 709.0 && v14 < 30.0;
  if (!v18 || v16 < v14)
  {
    goto LABEL_29;
  }

  v20 = floor(v14);
  if (v20 != v14)
  {
    v16 = vabdd_f64(v20, v14);
    v17 = 0.5;
    if (v15 > 0.2 && v16 == 0.5)
    {
      v24 = sub_100087DE4(1, sqrt(v15));
      if (fabs(v24) <= 1.79769313e308)
      {
        if (v14 > 1.0 && v24 != 0.0)
        {
          v35 = exp(-v15);
          v36 = sqrt(v15 * 3.14159265);
          v37 = v15 * (v35 / v36) + v15 * (v35 / v36);
          v38 = 2.0;
          if (v14 > 2.0)
          {
            v39 = 3;
            v40 = v37;
            do
            {
              v40 = v15 * (v40 / (v38 + -0.5));
              v37 = v37 + v40;
              v38 = v39++;
            }

            while (v14 > v38);
          }

          v24 = v24 + v37;
        }

        goto LABEL_65;
      }

      v53 = "boost::math::erfc<%1%>(%1%, %1%)";
      goto LABEL_149;
    }

LABEL_29:
    if (v14 > 1.0 && v15 < 0.0000000149011612)
    {
      sub_100086ED8(v14 + 1.0, v16, v17, v9, v5, v6, v7, v8);
      if (fabs(v26) > 1.79769313e308)
      {
        sub_100086A38("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
      }

      v27 = (1.0 - v14 * v15 / (v14 + 1.0)) * (pow(v15, v14) / v26);
LABEL_33:
      v28 = 1.0;
      if (v27 <= 1.0)
      {
        v28 = v27;
      }

      goto LABEL_68;
    }

    if (v15 > 1000.0 && (v14 < v15 || fabs(v14 + -50.0) / v15 < 1.0))
    {
      v24 = sub_1000850F4(v14, v15) / v15;
      if (v24 == 0.0)
      {
        goto LABEL_65;
      }

      v29 = 0.0;
      v30 = 1.0;
      v31 = 1000000;
      do
      {
        v29 = v30 + v29;
        if (fabs(v29 * 2.22044605e-16) >= fabs(v30))
        {
          break;
        }

        v14 = v14 + -1.0;
        v30 = v30 * (v14 / v15);
        --v31;
      }

      while (v31);
      v32 = 1000000 - v31;
      if (v32 < 0xF4240)
      {
        goto LABEL_44;
      }

      *&v81.__r_.__value_.__l.__data_ = v32;
      v76 = "boost::math::tgamma<%1%>(%1%,%1%)";
LABEL_147:
      sub_100085E48(v76, &v81);
    }

    if (v15 < 0.5)
    {
      v33 = -0.4 / log(v15);
LABEL_51:
      if (v33 < v14)
      {
        goto LABEL_52;
      }

      v41 = v14 + 1.0;
      if (v14 >= 2.0)
      {
        sub_100086ED8(v41, 2.0, v17, v9, v5, v6, v7, v8);
        if (fabs(v46) > 1.79769313e308)
        {
          v53 = "boost::math::tgamma<%1%>(%1%)";
          goto LABEL_149;
        }

        v43 = v46 + -1.0;
        v44 = fabs(v46 + -1.0);
      }

      else
      {
        sub_100086C20(v41, v14, v14 + -1.0);
        v43 = sub_10008821C(v42);
        v44 = fabs(v43);
        if (v44 > 1.79769313e308)
        {
          goto LABEL_95;
        }
      }

      if (v44 <= 1.79769313e308)
      {
        v47 = v15;
        if (v15 > 0.0)
        {
          goto LABEL_88;
        }

        if (v14 == INFINITY)
        {
          *&v81.__r_.__value_.__l.__data_ = v14;
        }

        else
        {
          if (floor(v14) != v14)
          {
            *&v81.__r_.__value_.__l.__data_ = v15;
            sub_100085A1C("boost::math::powm1<%1%>(%1%, %1%)", "For non-integral exponent, expected base > 0 but got %1%", &v81);
          }

          if (v14 * 0.5 != INFINITY)
          {
            v47 = v15;
            if (floor(v14 * 0.5) != v14 * 0.5)
            {
              goto LABEL_97;
            }

            v48 = v15;
            do
            {
              v47 = -v48;
              v18 = v48 < 0.0;
              v48 = -v48;
            }

            while (!v18);
LABEL_88:
            v49 = fabs(v14 * (v47 + -1.0));
            if (v14 < 0.2 || v49 < 0.5)
            {
              v51 = v14 * log(v47);
              if (v51 < 0.5)
              {
                v52 = sub_10008821C(v51);
                if (fabs(v52) > 1.79769313e308)
                {
LABEL_95:
                  v53 = "boost::math::expm1<%1%>(%1%)";
                  goto LABEL_149;
                }

LABEL_98:
                v54 = (v43 + 1.0) / v14;
                v55 = (v43 - v52) / v14;
                v56 = v52 + 1.0;
                v57 = (v54 - v55) / v56;
                v58 = 999990;
                v59 = 2;
                v60 = -v15;
                do
                {
                  v14 = v14 + 1.0;
                  v57 = v60 / v14 + v57;
                  if (fabs(v57 * 2.22044605e-16) >= fabs(v60 / v14))
                  {
                    break;
                  }

                  v60 = v60 * -v15 / v59++;
                  --v58;
                }

                while (v58);
                v61 = 999990 - v58;
                if (v61 < 0xF4240)
                {
                  v28 = v56 * v57 / v54;
                  if (v28 > 1.0)
                  {
                    v28 = 1.0;
                  }

                  goto LABEL_68;
                }

                *&v81.__r_.__value_.__l.__data_ = v61;
                v76 = "boost::math::tgamma_small_upper_part<%1%>(%1%, %1%)";
                goto LABEL_147;
              }

              if (v51 > 709.0)
              {
                sub_100086A38("boost::math::powm1<%1%>(%1%, %1%)", "Overflow Error");
              }
            }

LABEL_97:
            v52 = pow(v47, v14) + -1.0;
            goto LABEL_98;
          }

          *&v81.__r_.__value_.__l.__data_ = v14 * 0.5;
        }

        sub_1000871F8("boost::math::trunc<%1%>(%1%)", &v81);
      }

      v53 = "boost::math::tgamma1pm1<%!%>(%1%)";
LABEL_149:
      sub_100086A38(v53, "numeric overflow");
    }

    if (v15 < 1.1)
    {
      v33 = v15 * 0.75;
      goto LABEL_51;
    }

    if (v14 > 20.0)
    {
      v45 = (v15 - v14) / v14;
      if (v14 > 200.0)
      {
        if (20.0 / v14 <= v45 * v45)
        {
          goto LABEL_74;
        }

LABEL_106:
        v28 = sub_1000854C8(v14, v15);
        if (v28 > 1.0)
        {
          v28 = 1.0;
        }

        if (v15 < v14)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (fabs(v45) < 0.4)
      {
        goto LABEL_106;
      }
    }

LABEL_74:
    if (v15 + -1.0 / (v15 * 3.0) >= v14)
    {
      v24 = sub_1000850F4(v14, v15);
      if (v24 == 0.0)
      {
        goto LABEL_65;
      }

      v29 = sub_100084FB8(v14, v15);
LABEL_44:
      v28 = v24 * v29;
      if (v28 > 1.0)
      {
        v28 = 1.0;
      }

      goto LABEL_67;
    }

LABEL_52:
    v27 = sub_1000850F4(v14, v15);
    if (v27 != 0.0)
    {
      sub_100085068(v14, v15);
      v27 = v27 * (v34 / v14);
    }

    goto LABEL_33;
  }

  v16 = 0.6;
  if (v15 <= 0.6)
  {
    goto LABEL_29;
  }

  v21 = exp(-v15);
  v22 = 1.0;
  if (v14 <= 1.0 || v21 == 0.0)
  {
    v24 = v21;
  }

  else
  {
    v23 = 2;
    v24 = v21;
    do
    {
      v21 = v15 * (v21 / v22);
      v24 = v24 + v21;
      v22 = v23++;
    }

    while (v14 > v22);
  }

LABEL_65:
  v28 = 1.0;
  if (v24 <= 1.0)
  {
    v28 = v24;
  }

LABEL_67:
  v28 = 1.0 - v28;
LABEL_68:
  if (fabs(v28) > 1.79769313e308)
  {
    sub_10000D63C(&v81, "gamma_p<%1%>(%1%, %1%)");
    sub_10000D63C(&v80, "Error in function ");
    v62 = 0;
    v63 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    v64 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    size = v81.__r_.__value_.__l.__size_;
    v65 = v81.__r_.__value_.__r.__words[0];
    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v81;
    }

    else
    {
      v67 = v81.__r_.__value_.__r.__words[0];
    }

    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v81.__r_.__value_.__l.__size_;
    }

    do
    {
      v68 = v63 - v62;
      if ((v63 - v62) < 3)
      {
        break;
      }

      v69 = v67 + v63;
      v70 = v67 + v62;
      while (1)
      {
        v71 = memchr(v70, 37, v68 - 2);
        if (!v71)
        {
          goto LABEL_135;
        }

        if (*v71 == 12581 && v71[2] == 37)
        {
          break;
        }

        v70 = v71 + 1;
        v68 = v69 - v70;
        if (v69 - v70 < 3)
        {
          goto LABEL_135;
        }
      }

      if (v71 == v69)
      {
        break;
      }

      v73 = v71 - v67;
      if (v73 == -1)
      {
        break;
      }

      std::string::replace(&v81, v73, 3uLL, "double");
      v62 = v73 + 6;
      v63 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      v64 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      size = v81.__r_.__value_.__l.__size_;
      v65 = v81.__r_.__value_.__r.__words[0];
      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = &v81;
      }

      else
      {
        v67 = v81.__r_.__value_.__r.__words[0];
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v63 = v81.__r_.__value_.__l.__size_;
      }
    }

    while (v63 >= v62);
LABEL_135:
    if ((v64 & 0x80u) == 0)
    {
      v74 = &v81;
    }

    else
    {
      v74 = v65;
    }

    if ((v64 & 0x80u) == 0)
    {
      v75 = v64;
    }

    else
    {
      v75 = size;
    }

    std::string::append(&v80, v74, v75);
    std::string::append(&v80, ": ");
    std::string::append(&v80, "numeric overflow");
    std::runtime_error::runtime_error(&v79, &v80);
    sub_100084890(&v79);
  }

  return 1.0 - v28;
}

@end