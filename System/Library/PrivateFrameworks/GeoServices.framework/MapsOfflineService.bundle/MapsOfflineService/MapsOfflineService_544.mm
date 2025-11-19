void sub_1E707A0(_Unwind_Exception *a1)
{
  STACK[0x9F0] = &STACK[0x7C0];
  sub_195E3E8(&STACK[0x9F0]);
  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  STACK[0xBD0] = &STACK[0x7D8];
  sub_195E3E8(&STACK[0xBD0]);
  if (*(v1 + 23) < 0)
  {
    operator delete(STACK[0x14A0]);
  }

  _Unwind_Resume(a1);
}

void sub_1E7232C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xBD0])
    {
      JUMPOUT(0x1E7231CLL);
    }
  }
}

void sub_1E723C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v16 - 24) = &a16;
  sub_19A2570((v16 - 24));
  _Unwind_Resume(a1);
}

void sub_1E723F8()
{
  __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  if (*(v0 + 23) < 0)
  {
    sub_325C(&v385, *v0, *(v0 + 1));
  }

  else
  {
    v385 = *v0;
    v386 = *(v0 + 2);
  }

  memset(v187, 0, sizeof(v187));
  sub_68678C(v187, &v385, v387, 1uLL);
  if (*(v3 + 23) < 0)
  {
    sub_325C(v230, *v3, *(v3 + 1));
  }

  else
  {
    *v230 = *v3;
    v231 = *(v3 + 2);
  }

  memset(v186, 0, sizeof(v186));
  sub_68678C(v186, v230, &v232, 1uLL);
  if (*(v3 + 23) < 0)
  {
    sub_325C(v212, *v3, *(v3 + 1));
  }

  else
  {
    *v212 = *v3;
    v213 = *(v3 + 2);
  }

  memset(v185, 0, sizeof(v185));
  sub_68678C(v185, v212, v214, 1uLL);
  sub_3608D0(v183, "");
  sub_3608D0(v181, "");
  sub_3608D0(__p, "");
  sub_1E78BA4(&v188, v187, v186, v185, v183, v181, __p);
  if (v180 < 0)
  {
    operator delete(__p[0]);
  }

  if (v182 < 0)
  {
    operator delete(v181[0]);
  }

  if (v184 < 0)
  {
    operator delete(v183[0]);
  }

  v376[0] = v185;
  sub_195E3E8(v376);
  if (SHIBYTE(v213) < 0)
  {
    operator delete(v212[0]);
  }

  v212[0] = v186;
  sub_195E3E8(v212);
  if (SHIBYTE(v231) < 0)
  {
    operator delete(v230[0]);
  }

  v230[0] = v187;
  sub_195E3E8(v230);
  if (SHIBYTE(v386) < 0)
  {
    operator delete(v385);
  }

  v104[0] = xmmword_2368410;
  v104[1] = xmmword_2368420;
  v104[2] = xmmword_2368430;
  v105 = 16843009;
  v106 = 1;
  v107 = 0;
  v108 = 0;
  v109 = xmmword_2368440;
  v110 = 0x4170000042480000;
  v111 = 8;
  v112 = 1;
  v113 = 0x3FD999999999999ALL;
  v114 = 0x10000003CLL;
  v115 = xmmword_2368450;
  v116 = xmmword_2368460;
  v117 = xmmword_2368470;
  v118 = xmmword_2368480;
  v119 = 16777473;
  sub_3608D0(v230, "en");
  sub_3608D0(&v232, "es");
  sub_3608D0(v234, "de");
  sub_3608D0(v237, "fr");
  sub_3608D0(v239, "it");
  sub_3608D0(&v240, "no");
  sub_3608D0(v242, "nb");
  sub_3608D0(v245, "fi");
  sub_3608D0(v247, "pt");
  sub_3608D0(&v248, "nl");
  sub_3608D0(v250, "sv");
  sub_3608D0(v253, "is");
  sub_3608D0(v255, "da");
  sub_3608D0(&v256, "zh");
  sub_3608D0(v258, "ja");
  sub_3608D0(v261, "vi");
  sub_3608D0(v263, "th");
  sub_3608D0(&v264, "ms");
  sub_3608D0(v266, "tr");
  sub_3608D0(v269, "fil");
  sub_3608D0(v271, "bg");
  sub_3608D0(&v272, "ru");
  sub_3608D0(v274, "ro");
  sub_3608D0(v277, "pl");
  sub_3608D0(v279, "uk");
  sub_3608D0(&v280, "cs");
  sub_3608D0(v282, "el");
  sub_3608D0(v285, "cy");
  sub_3608D0(v287, "hu");
  sub_3608D0(&v288, "sk");
  sub_3608D0(v290, "hr");
  sub_3608D0(v293, "et");
  sub_3608D0(v295, "lt");
  sub_3608D0(&v296, "lv");
  sub_3608D0(v298, "mk");
  sub_3608D0(v301, "ca");
  sub_3608D0(v303, "bs");
  sub_3608D0(&v304, "sr");
  sub_3608D0(v306, "sq");
  sub_3608D0(v309, "hi");
  sub_3608D0(v311, "id");
  sub_3608D0(&v312, "jv");
  sub_3608D0(v314, "fj");
  sub_3608D0(v317, "my");
  sub_3608D0(v319, "km");
  sub_3608D0(&v320, "khm");
  sub_3608D0(v322, "bn");
  sub_3608D0(v325, "ben");
  sub_3608D0(v327, "dz");
  sub_3608D0(&v328, "ne");
  sub_3608D0(v330, "ur");
  sub_3608D0(v333, "kk");
  sub_3608D0(v335, "tk");
  sub_3608D0(&v336, "uz");
  memset(v120, 0, sizeof(v120));
  sub_68678C(v120, v230, v338, 0x36uLL);
  v4 = 162;
  while (1)
  {
    if (SHIBYTE(v230[v4 - 1]) < 0)
    {
      operator delete(*&v229[v4 * 8 + 24]);
    }

    v4 -= 3;
    if (!(v4 * 8))
    {
      sub_3608D0(v230, "IL");
      sub_3608D0(&v232, "TN");
      sub_3608D0(v234, "MA");
      sub_3608D0(v237, "IQ");
      sub_3608D0(v239, "IR");
      sub_3608D0(&v240, "JO");
      sub_3608D0(v242, "LB");
      sub_3608D0(v245, "LY");
      sub_3608D0(v247, "EG");
      sub_3608D0(&v248, "OM");
      sub_3608D0(v250, "YE");
      sub_3608D0(v253, "SA");
      sub_3608D0(v255, "SY");
      sub_3608D0(&v256, "BH");
      sub_3608D0(v258, "QA");
      sub_3608D0(v261, "AE");
      sub_3608D0(v263, "KW");
      sub_3608D0(&v264, "EH");
      sub_3608D0(v266, "NE");
      sub_3608D0(v269, "ML");
      sub_3608D0(v271, "TD");
      sub_3608D0(&v272, "MR");
      sub_3608D0(v274, "SD");
      memset(v121, 0, sizeof(v121));
      sub_68678C(v121, v230, v277, 0x17uLL);
      v5 = 69;
      while (1)
      {
        if (SHIBYTE(v230[v5 - 1]) < 0)
        {
          operator delete(*&v229[v5 * 8 + 24]);
        }

        v5 -= 3;
        if (!(v5 * 8))
        {
          sub_3608D0(v230, "6_7_4");
          v49 = v2;
          sub_3608D0(&v232, "7_7_4");
          sub_3608D0(v234, "8_7_4");
          sub_3608D0(v237, "9_7_4");
          sub_3608D0(v239, "10_7_4");
          sub_3608D0(&v240, "8_8_4");
          sub_3608D0(v242, "9_8_4");
          sub_3608D0(v245, "10_8_4");
          sub_3608D0(v247, "8_9_4");
          sub_3608D0(&v248, "9_9_4");
          sub_3608D0(v250, "10_9_4");
          memset(v122, 0, sizeof(v122));
          sub_68678C(v122, v230, v253, 0xBuLL);
          v6 = 33;
          while (1)
          {
            if (SHIBYTE(v230[v6 - 1]) < 0)
            {
              operator delete(*&v229[v6 * 8 + 24]);
            }

            v6 -= 3;
            if (!(v6 * 8))
            {
              v123 = 15;
              v124 = 1;
              v125 = 0x400000010;
              v126 = 0u;
              v127 = 0u;
              v128 = 0u;
              v129 = 0x4008000000000000;
              v130 = 0x100000014;
              v131 = 10;
              v132 = 257;
              v133 = xmmword_2368490;
              v134 = xmmword_23684A0;
              sub_3608D0(v230, "browse_subcategory_gasstations");
              sub_3608D0(&v232, "browse_subcategory_parking");
              sub_3608D0(v234, "browse_subcategory_restaurants");
              sub_3608D0(v237, "browse_subcategory_coffee_shops");
              sub_3608D0(v239, "browse_subcategory_groceries");
              memset(v135, 0, sizeof(v135));
              sub_68678C(v135, v230, &v240, 5uLL);
              v7 = 0;
              while (1)
              {
                if (v239[v7 + 23] < 0)
                {
                  operator delete(*&v239[v7]);
                }

                v7 -= 24;
                if (v7 == -120)
                {
                  sub_3608D0(v230, "browse_subcategory_gasstations");
                  sub_3608D0(&v232, "browse_subcategory_parking");
                  sub_3608D0(v234, "browse_subcategory_restaurants");
                  sub_3608D0(v237, "browse_subcategory_coffee_shops");
                  sub_3608D0(v239, "browse_subcategory_groceries");
                  memset(v136, 0, sizeof(v136));
                  sub_68678C(v136, v230, &v240, 5uLL);
                  v8 = 0;
                  while (1)
                  {
                    if (v239[v8 + 23] < 0)
                    {
                      operator delete(*&v239[v8]);
                    }

                    v8 -= 24;
                    if (v8 == -120)
                    {
                      sub_3608D0(v230, "browse_subcategory_evcharger_carplay");
                      sub_3608D0(&v232, "browse_subcategory_parking");
                      sub_3608D0(v234, "browse_subcategory_restaurants");
                      sub_3608D0(v237, "browse_subcategory_coffee_shops");
                      sub_3608D0(v239, "browse_subcategory_groceries");
                      memset(v137, 0, sizeof(v137));
                      sub_68678C(v137, v230, &v240, 5uLL);
                      v9 = 0;
                      while (1)
                      {
                        if (v239[v9 + 23] < 0)
                        {
                          operator delete(*&v239[v9]);
                        }

                        v9 -= 24;
                        if (v9 == -120)
                        {
                          sub_3608D0(v230, "browse_subcategory_gasstations");
                          sub_3608D0(&v232, "browse_subcategory_parking");
                          sub_3608D0(v234, "browse_subcategory_restaurants");
                          sub_3608D0(v237, "browse_subcategory_coffee_shops");
                          sub_3608D0(v239, "browse_subcategory_groceries");
                          memset(v138, 0, sizeof(v138));
                          sub_68678C(v138, v230, &v240, 5uLL);
                          v10 = 0;
                          while (1)
                          {
                            if (v239[v10 + 23] < 0)
                            {
                              operator delete(*&v239[v10]);
                            }

                            v10 -= 24;
                            if (v10 == -120)
                            {
                              sub_3608D0(v230, "active.hiking");
                              sub_3608D0(&v232, "active.parks.trailhead");
                              sub_3608D0(v234, "hotelstravel.campgrounds");
                              sub_3608D0(v237, "hotelstravel.visitorcenters");
                              sub_3608D0(v239, "travel_and_leisure.hiking_trail");
                              sub_3608D0(&v240, "travel_and_leisure.hiking_trail.trailhead");
                              sub_3608D0(v242, "travel_and_leisure.campground");
                              sub_3608D0(v245, "travel_and_leisure.visitor_center");
                              sub_1A5C918(&v139, v230, 8);
                              v11 = 0;
                              while (1)
                              {
                                if (v247[v11 - 1] < 0)
                                {
                                  operator delete(*&v245[v11]);
                                }

                                v11 -= 24;
                                if (v11 == -192)
                                {
                                  sub_3608D0(v230, "active");
                                  sub_3608D0(&v232, "emergencyrooms");
                                  sub_3608D0(v234, "hospitals");
                                  sub_3608D0(v237, "urgent_care");
                                  sub_3608D0(v239, "airports");
                                  sub_3608D0(&v240, "skiresorts");
                                  sub_3608D0(v242, "transport");
                                  sub_3608D0(v245, "touristattraction");
                                  sub_3608D0(v247, "physicalfeature");
                                  sub_3608D0(&v248, "travel_and_leisure");
                                  sub_3608D0(v250, "emergency_room");
                                  sub_3608D0(v253, "hospital");
                                  sub_3608D0(v255, "urgent_care_center");
                                  sub_3608D0(&v256, "airport");
                                  sub_3608D0(v258, "ski_resort");
                                  sub_3608D0(v261, "transportation_service");
                                  sub_3608D0(v263, "tourist_attraction");
                                  sub_3608D0(&v264, "physical_feature");
                                  sub_1A5C918(&v140, v230, 18);
                                  v12 = 54;
                                  while (1)
                                  {
                                    if (SHIBYTE(v230[v12 - 1]) < 0)
                                    {
                                      operator delete(*&v229[v12 * 8 + 24]);
                                    }

                                    v12 -= 3;
                                    if (!(v12 * 8))
                                    {
                                      sub_3608D0(v230, "kids_activities");
                                      sub_3608D0(&v232, "parks");
                                      sub_3608D0(v234, "playgrounds");
                                      sub_3608D0(v237, "sportscomplex");
                                      sub_3608D0(v239, "statue");
                                      sub_3608D0(&v240, "zoos");
                                      sub_3608D0(v242, "kids_fun_center");
                                      sub_3608D0(v245, "park");
                                      sub_3608D0(v247, "playground");
                                      sub_3608D0(&v248, "sports_complex");
                                      sub_3608D0(v250, "zoo");
                                      sub_1A5C918(&v141, v230, 11);
                                      v13 = 33;
                                      while (1)
                                      {
                                        if (SHIBYTE(v230[v13 - 1]) < 0)
                                        {
                                          operator delete(*&v229[v13 * 8 + 24]);
                                        }

                                        v13 -= 3;
                                        if (!(v13 * 8))
                                        {
                                          sub_3608D0(v230, "food");
                                          sub_3608D0(&v232, "restaurants");
                                          sub_3608D0(v234, "financialservices");
                                          sub_3608D0(v237, "localservices");
                                          sub_3608D0(v239, "homedecor");
                                          sub_3608D0(&v240, "beautysvc");
                                          sub_3608D0(v242, "officebuilding");
                                          sub_3608D0(v245, "supermarket");
                                          sub_3608D0(v247, "flowers");
                                          sub_3608D0(&v248, "homeandgarden");
                                          sub_3608D0(v250, "servicestations");
                                          sub_3608D0(v253, "parks");
                                          sub_3608D0(v255, "playgrounds");
                                          sub_3608D0(&v256, "sportscomplex");
                                          sub_3608D0(v258, "trainstations");
                                          sub_3608D0(v261, "food_mart");
                                          sub_3608D0(v263, "restaurant");
                                          sub_3608D0(&v264, "financial_service");
                                          sub_3608D0(v266, "local_service");
                                          sub_3608D0(v269, "home_decor_store");
                                          sub_3608D0(v271, "beauty_service");
                                          sub_3608D0(&v272, "office_building");
                                          sub_3608D0(v274, "floral_shop");
                                          sub_3608D0(v277, "home_goods_store");
                                          sub_3608D0(v279, "service_station");
                                          sub_3608D0(&v280, "park");
                                          sub_3608D0(v282, "playground");
                                          sub_3608D0(v285, "sports_complex");
                                          sub_3608D0(v287, "train_station");
                                          sub_1A5C918(v142, v230, 29);
                                          v14 = 87;
                                          while (1)
                                          {
                                            if (SHIBYTE(v230[v14 - 1]) < 0)
                                            {
                                              operator delete(*&v229[v14 * 8 + 24]);
                                            }

                                            v14 -= 3;
                                            if (!(v14 * 8))
                                            {
                                              v142[24] = 1;
                                              v143 = xmmword_23684B0;
                                              v144 = xmmword_23684C0;
                                              v145 = 30;
                                              v146 = 0x4000000000000000;
                                              v147 = xmmword_23684D0;
                                              v148 = 2;
                                              v149 = 257;
                                              sub_3608D0(v209, "ranker_pw_en_model");
                                              sub_3608D0(v370, "CA");
                                              sub_3608D0(v371, "GB");
                                              sub_3608D0(v372, "AU");
                                              sub_3608D0(v373, "NZ");
                                              sub_3608D0(v374, "IE");
                                              sub_3608D0(v375, "ZA");
                                              memset(v207, 0, sizeof(v207));
                                              sub_68678C(v207, v370, v376, 6uLL);
                                              sub_1A5C99C(v376, v209, v207);
                                              sub_3608D0(v200, "ranker_pw_us_model");
                                              sub_3608D0(v193, "US");
                                              v197 = 0;
                                              v196 = 0;
                                              v198 = 0;
                                              sub_68678C(&v196, v193, v195, 1uLL);
                                              sub_1A5C99C(v379, v200, &v196);
                                              sub_3608D0(&v190, "ranker_pw_eu_model");
                                              sub_3608D0(v212, "DE");
                                              sub_3608D0(v214, "FR");
                                              sub_3608D0(v215, "BE");
                                              sub_3608D0(v216, "CH");
                                              sub_3608D0(v217, "AT");
                                              sub_3608D0(v218, "ES");
                                              sub_3608D0(v219, "IT");
                                              sub_3608D0(v220, "NL");
                                              sub_3608D0(v221, "PT");
                                              sub_3608D0(v222, "NO");
                                              sub_3608D0(v223, "DK");
                                              sub_3608D0(v224, "FI");
                                              sub_3608D0(v225, "SE");
                                              v368 = 0uLL;
                                              v369 = 0;
                                              sub_68678C(&v368, v212, &v226, 0xDuLL);
                                              sub_1A5C99C(&v381, &v190, &v368);
                                              sub_3608D0(&v102, "ranker_pw_cn_model");
                                              sub_3608D0(&v366, "CN");
                                              v100 = 0uLL;
                                              v101 = 0;
                                              sub_68678C(&v100, &v366, &v368, 1uLL);
                                              sub_1A5C99C(&v382, &v102, &v100);
                                              sub_3608D0(&v98, "ranker_pw_cjk_model");
                                              sub_3608D0(v357, "JP");
                                              sub_3608D0(v358, "MO");
                                              sub_3608D0(v359, "PH");
                                              sub_3608D0(v360, "MY");
                                              sub_3608D0(v361, "TW");
                                              sub_3608D0(v362, "HK");
                                              v364 = 0;
                                              v363 = 0;
                                              v365 = 0;
                                              sub_68678C(&v363, v357, &v363, 6uLL);
                                              sub_1A5C99C(&v383, &v98, &v363);
                                              sub_3608D0(v96, "ranker_pw_row_model");
                                              sub_3608D0(v230, "AR");
                                              sub_3608D0(&v232, "BR");
                                              sub_3608D0(v234, "MX");
                                              sub_3608D0(v237, "CL");
                                              sub_3608D0(v239, "CZ");
                                              sub_3608D0(&v240, "GR");
                                              sub_3608D0(v242, "HR");
                                              sub_3608D0(v245, "HU");
                                              sub_3608D0(v247, "ID");
                                              sub_3608D0(&v248, "IN");
                                              sub_3608D0(v250, "PL");
                                              sub_3608D0(v253, "RO");
                                              sub_3608D0(v255, "SG");
                                              sub_3608D0(&v256, "SK");
                                              sub_3608D0(v258, "TH");
                                              sub_3608D0(v261, "TR");
                                              sub_3608D0(v263, "VN");
                                              sub_3608D0(&v264, "AE");
                                              sub_3608D0(v266, "EG");
                                              sub_3608D0(v269, "IL");
                                              sub_3608D0(v271, "NG");
                                              sub_3608D0(&v272, "MA");
                                              v94 = 0;
                                              v93 = 0;
                                              v95 = 0;
                                              sub_68678C(&v93, v230, v274, 0x16uLL);
                                              sub_1A5C99C(&v384, v96, &v93);
                                              memset(v150, 0, sizeof(v150));
                                              sub_1A5CA34(v150, v376, &v385, 6uLL);
                                              v15 = 288;
                                              while (1)
                                              {
                                                v91[0] = &v375[v15];
                                                sub_195E3E8(v91);
                                                if (v374[v15 + 23] < 0)
                                                {
                                                  operator delete(*&v374[v15]);
                                                }

                                                v15 -= 48;
                                                if (!v15)
                                                {
                                                  v91[0] = &v93;
                                                  sub_195E3E8(v91);
                                                  v16 = 66;
                                                  while (1)
                                                  {
                                                    if (SHIBYTE(v230[v16 - 1]) < 0)
                                                    {
                                                      operator delete(*&v229[v16 * 8 + 24]);
                                                    }

                                                    v16 -= 3;
                                                    if (!(v16 * 8))
                                                    {
                                                      if (v97 < 0)
                                                      {
                                                        operator delete(v96[0]);
                                                      }

                                                      v230[0] = &v363;
                                                      sub_195E3E8(v230);
                                                      v17 = 0;
                                                      while (1)
                                                      {
                                                        if (v362[v17 + 23] < 0)
                                                        {
                                                          operator delete(*&v362[v17]);
                                                        }

                                                        v17 -= 24;
                                                        if (v17 == -144)
                                                        {
                                                          if (SHIBYTE(v99) < 0)
                                                          {
                                                            operator delete(v98);
                                                          }

                                                          v230[0] = &v100;
                                                          sub_195E3E8(v230);
                                                          if (SHIBYTE(v367) < 0)
                                                          {
                                                            operator delete(v366);
                                                          }

                                                          if (SHIBYTE(v103) < 0)
                                                          {
                                                            operator delete(v102);
                                                          }

                                                          v230[0] = &v368;
                                                          sub_195E3E8(v230);
                                                          v18 = 39;
                                                          while (1)
                                                          {
                                                            if (SHIBYTE(v212[v18 - 1]) < 0)
                                                            {
                                                              operator delete(*&v211[v18 * 8]);
                                                            }

                                                            v18 -= 3;
                                                            if (!(v18 * 8))
                                                            {
                                                              if (SHIBYTE(v191) < 0)
                                                              {
                                                                operator delete(v190);
                                                              }

                                                              v230[0] = &v196;
                                                              sub_195E3E8(v230);
                                                              if (v194 < 0)
                                                              {
                                                                operator delete(v193[0]);
                                                              }

                                                              if (v201 < 0)
                                                              {
                                                                operator delete(v200[0]);
                                                              }

                                                              v230[0] = v207;
                                                              sub_195E3E8(v230);
                                                              v19 = 0;
                                                              while (1)
                                                              {
                                                                if (v375[v19 + 23] < 0)
                                                                {
                                                                  operator delete(*&v375[v19]);
                                                                }

                                                                v19 -= 24;
                                                                if (v19 == -144)
                                                                {
                                                                  if (v210 < 0)
                                                                  {
                                                                    operator delete(v209[0]);
                                                                  }

                                                                  sub_3608D0(v230, "EG");
                                                                  v232 = 0x4058000000000000;
                                                                  sub_3608D0(v233, "CA");
                                                                  v235 = 0x4058000000000000;
                                                                  sub_3608D0(v236, "GB");
                                                                  v238 = 0x4058000000000000;
                                                                  sub_3608D0(v239, "US");
                                                                  v240 = 0x4058000000000000;
                                                                  sub_3608D0(v241, "DE");
                                                                  v243 = 0x4058000000000000;
                                                                  sub_3608D0(v244, "FR");
                                                                  v246 = 0x4058000000000000;
                                                                  sub_3608D0(v247, "BE");
                                                                  v248 = 0x4058000000000000;
                                                                  sub_3608D0(v249, "CH");
                                                                  v251 = 0x4058000000000000;
                                                                  sub_3608D0(v252, "CN");
                                                                  v254 = 0x4058000000000000;
                                                                  sub_3608D0(v255, "AT");
                                                                  v256 = 0x4058000000000000;
                                                                  sub_3608D0(v257, "ES");
                                                                  v259 = 0x4058000000000000;
                                                                  sub_3608D0(v260, "AU");
                                                                  v262 = 0x4058000000000000;
                                                                  sub_3608D0(v263, "NZ");
                                                                  v264 = 0x4058000000000000;
                                                                  sub_3608D0(v265, "IE");
                                                                  v267 = 0x4058000000000000;
                                                                  sub_3608D0(v268, "ZA");
                                                                  v270 = 0x4058000000000000;
                                                                  sub_3608D0(v271, "IT");
                                                                  v272 = 0x4058000000000000;
                                                                  sub_3608D0(v273, "NL");
                                                                  v275 = 0x4058000000000000;
                                                                  sub_3608D0(v276, "PT");
                                                                  v278 = 0x4058000000000000;
                                                                  sub_3608D0(v279, "NO");
                                                                  v280 = 0x4058000000000000;
                                                                  sub_3608D0(v281, "DK");
                                                                  v283 = 0x4058000000000000;
                                                                  sub_3608D0(v284, "FI");
                                                                  v286 = 0x4058000000000000;
                                                                  sub_3608D0(v287, "SE");
                                                                  v288 = 0x4058000000000000;
                                                                  sub_3608D0(v289, "GB");
                                                                  v291 = 0x4058000000000000;
                                                                  sub_3608D0(v292, "JP");
                                                                  v294 = 0x4058000000000000;
                                                                  sub_3608D0(v295, "MO");
                                                                  v296 = 0x4058000000000000;
                                                                  sub_3608D0(v297, "PH");
                                                                  v299 = 0x4058000000000000;
                                                                  sub_3608D0(v300, "MY");
                                                                  v302 = 0x4058000000000000;
                                                                  sub_3608D0(v303, "TW");
                                                                  v304 = 0x4058000000000000;
                                                                  sub_3608D0(v305, "HK");
                                                                  v307 = 0x4058000000000000;
                                                                  sub_3608D0(v308, "AR");
                                                                  v310 = 0x4058000000000000;
                                                                  sub_3608D0(v311, "BR");
                                                                  v312 = 0x4058000000000000;
                                                                  sub_3608D0(v313, "MX");
                                                                  v315 = 0x4058000000000000;
                                                                  sub_3608D0(v316, "CL");
                                                                  v318 = 0x4058000000000000;
                                                                  sub_3608D0(v319, "CZ");
                                                                  v320 = 0x4058000000000000;
                                                                  sub_3608D0(v321, "GR");
                                                                  v323 = 0x4058000000000000;
                                                                  sub_3608D0(v324, "HR");
                                                                  v326 = 0x4058000000000000;
                                                                  sub_3608D0(v327, "HU");
                                                                  v328 = 0x4058000000000000;
                                                                  sub_3608D0(v329, "ID");
                                                                  v331 = 0x4058000000000000;
                                                                  sub_3608D0(v332, "IN");
                                                                  v334 = 0x4058000000000000;
                                                                  sub_3608D0(v335, "PL");
                                                                  v336 = 0x4058000000000000;
                                                                  sub_3608D0(v337, "RO");
                                                                  v338[1] = 0x4058000000000000;
                                                                  sub_3608D0(v339, "SG");
                                                                  v340 = 0x4058000000000000;
                                                                  sub_3608D0(v341, "SK");
                                                                  v342 = 0x4058000000000000;
                                                                  sub_3608D0(v343, "TH");
                                                                  v344 = 0x4058000000000000;
                                                                  sub_3608D0(v345, "TR");
                                                                  v346 = 0x4058000000000000;
                                                                  sub_3608D0(v347, "VN");
                                                                  v348 = 0x4058000000000000;
                                                                  sub_3608D0(v349, "AE");
                                                                  v350 = 0x4058000000000000;
                                                                  sub_3608D0(v351, "IL");
                                                                  v352 = 0x4058000000000000;
                                                                  sub_3608D0(v353, "NG");
                                                                  v354 = 0x4058000000000000;
                                                                  sub_3608D0(v355, "MA");
                                                                  v356 = 0x4058000000000000;
                                                                  sub_1A5CB44(v151, v230, 50);
                                                                  v20 = 1600;
                                                                  while (1)
                                                                  {
                                                                    if (v229[v20 + 39] < 0)
                                                                    {
                                                                      operator delete(*&v229[v20 + 16]);
                                                                    }

                                                                    v20 -= 32;
                                                                    if (!v20)
                                                                    {
                                                                      v151[10] = 5;
                                                                      sub_3608D0(v200, "speller-enus-esus");
                                                                      sub_3608D0(v357, "US");
                                                                      sub_3608D0(v358, "AE");
                                                                      v197 = 0;
                                                                      v196 = 0;
                                                                      v198 = 0;
                                                                      sub_68678C(&v196, v357, v359, 2uLL);
                                                                      sub_1A5C99C(v212, v200, &v196);
                                                                      sub_3608D0(v193, "speller-GB");
                                                                      sub_3608D0(&v368, "GB");
                                                                      v190 = 0uLL;
                                                                      v191 = 0;
                                                                      sub_68678C(&v190, &v368, v370, 1uLL);
                                                                      sub_1A5C99C(v215, v193, &v190);
                                                                      sub_3608D0(&v102, "speller-AU");
                                                                      sub_3608D0(v209, "AU");
                                                                      sub_3608D0(v211, "NZ");
                                                                      v100 = 0uLL;
                                                                      v101 = 0;
                                                                      sub_68678C(&v100, v209, v212, 2uLL);
                                                                      sub_1A5C99C(v217, &v102, &v100);
                                                                      sub_3608D0(&v366, "speller-CA");
                                                                      sub_3608D0(&v363, "CA");
                                                                      v98 = 0uLL;
                                                                      v99 = 0;
                                                                      sub_68678C(&v98, &v363, &v366, 1uLL);
                                                                      sub_1A5C99C(v219, &v366, &v98);
                                                                      sub_3608D0(v96, "speller-EU");
                                                                      sub_3608D0(v376, "ES");
                                                                      sub_3608D0(v378, "IT");
                                                                      sub_3608D0(v379, "NL");
                                                                      v94 = 0;
                                                                      v93 = 0;
                                                                      v95 = 0;
                                                                      sub_68678C(&v93, v376, &v380, 3uLL);
                                                                      sub_1A5C99C(v221, v96, &v93);
                                                                      sub_3608D0(v91, "speller-FR-DE");
                                                                      sub_3608D0(v207, "FR");
                                                                      sub_3608D0(v208, "DE");
                                                                      v89 = 0;
                                                                      v88 = 0;
                                                                      v90 = 0;
                                                                      sub_68678C(&v88, v207, v209, 2uLL);
                                                                      sub_1A5C99C(v223, v91, &v88);
                                                                      sub_3608D0(v86, "speller-EU-offline-mixed-reduced");
                                                                      sub_3608D0(v370, "AT");
                                                                      sub_3608D0(v371, "CH");
                                                                      sub_3608D0(v372, "BE");
                                                                      v83 = 0;
                                                                      v84 = 0;
                                                                      v85 = 0;
                                                                      sub_68678C(&v83, v370, v373, 3uLL);
                                                                      sub_1A5C99C(v225, v86, &v83);
                                                                      sub_3608D0(v81, "speller-GR");
                                                                      sub_3608D0(v205, "GR");
                                                                      v78 = 0;
                                                                      v79 = 0;
                                                                      v80 = 0;
                                                                      sub_68678C(&v78, v205, v207, 1uLL);
                                                                      sub_1A5C99C(&v227, v81, &v78);
                                                                      sub_3608D0(&v76, "speller-JP");
                                                                      sub_3608D0(v203, "JP");
                                                                      v74 = 0uLL;
                                                                      v75 = 0;
                                                                      sub_68678C(&v74, v203, v205, 1uLL);
                                                                      sub_1A5C99C(&v228, &v76, &v74);
                                                                      sub_3608D0(v72, "speller-ROW");
                                                                      sub_3608D0(v230, "IN");
                                                                      sub_3608D0(&v232, "PT");
                                                                      sub_3608D0(v234, "FI");
                                                                      sub_3608D0(v237, "SE");
                                                                      sub_3608D0(v239, "AD");
                                                                      sub_3608D0(&v240, "MC");
                                                                      sub_3608D0(v242, "LU");
                                                                      sub_3608D0(v245, "VA");
                                                                      sub_3608D0(v247, "IS");
                                                                      sub_3608D0(&v248, "GL");
                                                                      sub_3608D0(v250, "FO");
                                                                      sub_3608D0(v253, "IE");
                                                                      sub_3608D0(v255, "NO");
                                                                      sub_3608D0(&v256, "DK");
                                                                      sub_3608D0(v258, "AR");
                                                                      sub_3608D0(v261, "BR");
                                                                      sub_3608D0(v263, "MX");
                                                                      sub_3608D0(&v264, "CL");
                                                                      sub_3608D0(v266, "TW");
                                                                      sub_3608D0(v269, "HK");
                                                                      sub_3608D0(v271, "MO");
                                                                      sub_3608D0(&v272, "PL");
                                                                      sub_3608D0(v274, "HR");
                                                                      sub_3608D0(v277, "RO");
                                                                      sub_3608D0(v279, "SK");
                                                                      sub_3608D0(&v280, "CZ");
                                                                      sub_3608D0(v282, "HU");
                                                                      sub_3608D0(v285, "VN");
                                                                      sub_3608D0(v287, "TH");
                                                                      sub_3608D0(&v288, "SG");
                                                                      sub_3608D0(v290, "MY");
                                                                      sub_3608D0(v293, "PH");
                                                                      sub_3608D0(v295, "TR");
                                                                      sub_3608D0(&v296, "AE");
                                                                      sub_3608D0(v298, "IL");
                                                                      sub_3608D0(v301, "SA");
                                                                      sub_3608D0(v303, "NG");
                                                                      sub_3608D0(&v304, "EG");
                                                                      sub_3608D0(v306, "MA");
                                                                      sub_3608D0(v309, "ZA");
                                                                      v69 = 0;
                                                                      v70 = 0;
                                                                      v71 = 0;
                                                                      sub_68678C(&v69, v230, v311, 0x28uLL);
                                                                      sub_1A5C99C(v229, v72, &v69);
                                                                      memset(v152, 0, sizeof(v152));
                                                                      sub_1A5CA34(v152, v212, v230, 0xAuLL);
                                                                      v21 = 480;
                                                                      while (1)
                                                                      {
                                                                        v189 = &v211[v21];
                                                                        sub_195E3E8(&v189);
                                                                        if ((v211[v21 - 1] & 0x80000000) != 0)
                                                                        {
                                                                          operator delete(v209[v21 / 8]);
                                                                        }

                                                                        v21 -= 48;
                                                                        if (!v21)
                                                                        {
                                                                          v189 = &v69;
                                                                          sub_195E3E8(&v189);
                                                                          v22 = 120;
                                                                          while (1)
                                                                          {
                                                                            if (SHIBYTE(v230[v22 - 1]) < 0)
                                                                            {
                                                                              operator delete(*&v229[v22 * 8 + 24]);
                                                                            }

                                                                            v22 -= 3;
                                                                            if (!(v22 * 8))
                                                                            {
                                                                              if (v73 < 0)
                                                                              {
                                                                                operator delete(v72[0]);
                                                                              }

                                                                              v230[0] = &v74;
                                                                              sub_195E3E8(v230);
                                                                              if (SHIBYTE(v204) < 0)
                                                                              {
                                                                                operator delete(v203[0]);
                                                                              }

                                                                              if (SHIBYTE(v77) < 0)
                                                                              {
                                                                                operator delete(v76);
                                                                              }

                                                                              v230[0] = &v78;
                                                                              sub_195E3E8(v230);
                                                                              if (v206 < 0)
                                                                              {
                                                                                operator delete(v205[0]);
                                                                              }

                                                                              if (v82 < 0)
                                                                              {
                                                                                operator delete(v81[0]);
                                                                              }

                                                                              v230[0] = &v83;
                                                                              sub_195E3E8(v230);
                                                                              v23 = 0;
                                                                              while (1)
                                                                              {
                                                                                if (v372[v23 + 23] < 0)
                                                                                {
                                                                                  operator delete(*&v372[v23]);
                                                                                }

                                                                                v23 -= 24;
                                                                                if (v23 == -72)
                                                                                {
                                                                                  if (v87 < 0)
                                                                                  {
                                                                                    operator delete(v86[0]);
                                                                                  }

                                                                                  v230[0] = &v88;
                                                                                  sub_195E3E8(v230);
                                                                                  v24 = 0;
                                                                                  while (1)
                                                                                  {
                                                                                    if (v208[v24 * 8 + 23] < 0)
                                                                                    {
                                                                                      operator delete(v207[v24 + 3]);
                                                                                    }

                                                                                    v24 -= 3;
                                                                                    if (v24 == -6)
                                                                                    {
                                                                                      if (v92 < 0)
                                                                                      {
                                                                                        operator delete(v91[0]);
                                                                                      }

                                                                                      v230[0] = &v93;
                                                                                      sub_195E3E8(v230);
                                                                                      v25 = 0;
                                                                                      while (1)
                                                                                      {
                                                                                        if (v379[v25 + 23] < 0)
                                                                                        {
                                                                                          operator delete(*&v379[v25]);
                                                                                        }

                                                                                        v25 -= 24;
                                                                                        if (v25 == -72)
                                                                                        {
                                                                                          if (v97 < 0)
                                                                                          {
                                                                                            operator delete(v96[0]);
                                                                                          }

                                                                                          v230[0] = &v98;
                                                                                          sub_195E3E8(v230);
                                                                                          if (SHIBYTE(v365) < 0)
                                                                                          {
                                                                                            operator delete(v363);
                                                                                          }

                                                                                          if (SHIBYTE(v367) < 0)
                                                                                          {
                                                                                            operator delete(v366);
                                                                                          }

                                                                                          v230[0] = &v100;
                                                                                          sub_195E3E8(v230);
                                                                                          v26 = 0;
                                                                                          while (1)
                                                                                          {
                                                                                            if (v211[v26 + 23] < 0)
                                                                                            {
                                                                                              operator delete(*&v211[v26]);
                                                                                            }

                                                                                            v26 -= 24;
                                                                                            if (v26 == -48)
                                                                                            {
                                                                                              if (SHIBYTE(v103) < 0)
                                                                                              {
                                                                                                operator delete(v102);
                                                                                              }

                                                                                              v230[0] = &v190;
                                                                                              sub_195E3E8(v230);
                                                                                              if (SHIBYTE(v369) < 0)
                                                                                              {
                                                                                                operator delete(v368);
                                                                                              }

                                                                                              if (v194 < 0)
                                                                                              {
                                                                                                operator delete(v193[0]);
                                                                                              }

                                                                                              v230[0] = &v196;
                                                                                              sub_195E3E8(v230);
                                                                                              v27 = 0;
                                                                                              while (1)
                                                                                              {
                                                                                                if (v358[v27 * 8 + 23] < 0)
                                                                                                {
                                                                                                  operator delete(v357[v27 + 3]);
                                                                                                }

                                                                                                v27 -= 3;
                                                                                                if (v27 == -6)
                                                                                                {
                                                                                                  if (v201 < 0)
                                                                                                  {
                                                                                                    operator delete(v200[0]);
                                                                                                  }

                                                                                                  sub_3608D0(&v368, "speller-enus-esus");
                                                                                                  sub_3608D0(v212, "from_ENUSESUS");
                                                                                                  sub_3608D0(v214, "to_ENUSESUS");
                                                                                                  v102 = 0uLL;
                                                                                                  v103 = 0;
                                                                                                  sub_68678C(&v102, v212, v215, 2uLL);
                                                                                                  sub_1A5C99C(v230, &v368, &v102);
                                                                                                  sub_3608D0(&v100, "speller-GB");
                                                                                                  sub_3608D0(v376, "from_SOURCE");
                                                                                                  sub_3608D0(v378, "to_TARGET");
                                                                                                  v366 = 0uLL;
                                                                                                  v367 = 0;
                                                                                                  sub_68678C(&v366, v376, v379, 2uLL);
                                                                                                  sub_1A5C99C(v234, &v100, &v366);
                                                                                                  sub_3608D0(&v98, "speller-AU");
                                                                                                  sub_3608D0(v370, "from_AU");
                                                                                                  sub_3608D0(v371, "to_AU");
                                                                                                  v364 = 0;
                                                                                                  v363 = 0;
                                                                                                  v365 = 0;
                                                                                                  sub_68678C(&v363, v370, v372, 2uLL);
                                                                                                  sub_1A5C99C(v239, &v98, &v363);
                                                                                                  sub_3608D0(v96, "speller-CA");
                                                                                                  sub_3608D0(v357, "from_CA");
                                                                                                  sub_3608D0(v358, "to_CA");
                                                                                                  v94 = 0;
                                                                                                  v93 = 0;
                                                                                                  v95 = 0;
                                                                                                  sub_68678C(&v93, v357, v359, 2uLL);
                                                                                                  sub_1A5C99C(v242, v96, &v93);
                                                                                                  sub_3608D0(v91, "speller-EU");
                                                                                                  sub_3608D0(v209, "from_EU");
                                                                                                  sub_3608D0(v211, "to_EU");
                                                                                                  v89 = 0;
                                                                                                  v88 = 0;
                                                                                                  v90 = 0;
                                                                                                  sub_68678C(&v88, v209, v212, 2uLL);
                                                                                                  sub_1A5C99C(v247, v91, &v88);
                                                                                                  sub_3608D0(v86, "speller-GR");
                                                                                                  sub_3608D0(v207, "from_SOURCE");
                                                                                                  sub_3608D0(v208, "to_TARGET");
                                                                                                  v83 = 0;
                                                                                                  v84 = 0;
                                                                                                  v85 = 0;
                                                                                                  sub_68678C(&v83, v207, v209, 2uLL);
                                                                                                  sub_1A5C99C(v250, v86, &v83);
                                                                                                  sub_3608D0(v81, "speller-JP");
                                                                                                  sub_3608D0(v200, "from_SOURCE");
                                                                                                  sub_3608D0(v202, "to_TARGET");
                                                                                                  v78 = 0;
                                                                                                  v79 = 0;
                                                                                                  v80 = 0;
                                                                                                  sub_68678C(&v78, v200, v203, 2uLL);
                                                                                                  sub_1A5C99C(v255, v81, &v78);
                                                                                                  sub_3608D0(v205, "speller-FR-DE");
                                                                                                  sub_3608D0(&v196, "from_DEFRAC");
                                                                                                  sub_3608D0(v199, "to_DEFRAC");
                                                                                                  v76 = 0uLL;
                                                                                                  v77 = 0;
                                                                                                  sub_68678C(&v76, &v196, v200, 2uLL);
                                                                                                  sub_1A5C99C(v258, v205, &v76);
                                                                                                  sub_3608D0(&v74, "speller-EU-offline-mixed-reduced");
                                                                                                  sub_3608D0(v193, "from_SOURCE");
                                                                                                  sub_3608D0(v195, "to_TARGET");
                                                                                                  v203[1] = 0;
                                                                                                  v203[0] = 0;
                                                                                                  v204 = 0;
                                                                                                  sub_68678C(v203, v193, &v196, 2uLL);
                                                                                                  sub_1A5C99C(v263, &v74, v203);
                                                                                                  sub_3608D0(v72, "speller-ROW");
                                                                                                  sub_3608D0(&v190, "from_GLOBAL");
                                                                                                  sub_3608D0(v192, "to_GLOBAL");
                                                                                                  v69 = 0;
                                                                                                  v70 = 0;
                                                                                                  v71 = 0;
                                                                                                  sub_68678C(&v69, &v190, v193, 2uLL);
                                                                                                  sub_1A5C99C(v266, v72, &v69);
                                                                                                  memset(v153, 0, sizeof(v153));
                                                                                                  sub_1A5CA34(v153, v230, v271, 0xAuLL);
                                                                                                  v28 = 480;
                                                                                                  while (1)
                                                                                                  {
                                                                                                    v189 = &v229[v28 + 24];
                                                                                                    sub_195E3E8(&v189);
                                                                                                    if (v229[v28 + 23] < 0)
                                                                                                    {
                                                                                                      operator delete(*&v229[v28]);
                                                                                                    }

                                                                                                    v28 -= 48;
                                                                                                    if (!v28)
                                                                                                    {
                                                                                                      v189 = &v69;
                                                                                                      sub_195E3E8(&v189);
                                                                                                      v29 = 0;
                                                                                                      while (1)
                                                                                                      {
                                                                                                        if (v192[v29 + 23] < 0)
                                                                                                        {
                                                                                                          operator delete(*&v192[v29]);
                                                                                                        }

                                                                                                        v29 -= 24;
                                                                                                        if (v29 == -48)
                                                                                                        {
                                                                                                          if (v73 < 0)
                                                                                                          {
                                                                                                            operator delete(v72[0]);
                                                                                                          }

                                                                                                          *&v190 = v203;
                                                                                                          sub_195E3E8(&v190);
                                                                                                          v30 = 0;
                                                                                                          while (1)
                                                                                                          {
                                                                                                            if (v195[v30 + 23] < 0)
                                                                                                            {
                                                                                                              operator delete(*&v195[v30]);
                                                                                                            }

                                                                                                            v30 -= 24;
                                                                                                            if (v30 == -48)
                                                                                                            {
                                                                                                              if (SHIBYTE(v75) < 0)
                                                                                                              {
                                                                                                                operator delete(v74);
                                                                                                              }

                                                                                                              v193[0] = &v76;
                                                                                                              sub_195E3E8(v193);
                                                                                                              v31 = 0;
                                                                                                              while (1)
                                                                                                              {
                                                                                                                if (v199[v31 + 23] < 0)
                                                                                                                {
                                                                                                                  operator delete(*&v199[v31]);
                                                                                                                }

                                                                                                                v31 -= 24;
                                                                                                                if (v31 == -48)
                                                                                                                {
                                                                                                                  if (v206 < 0)
                                                                                                                  {
                                                                                                                    operator delete(v205[0]);
                                                                                                                  }

                                                                                                                  v196 = &v78;
                                                                                                                  sub_195E3E8(&v196);
                                                                                                                  v32 = 0;
                                                                                                                  while (1)
                                                                                                                  {
                                                                                                                    if (v202[v32 + 23] < 0)
                                                                                                                    {
                                                                                                                      operator delete(*&v202[v32]);
                                                                                                                    }

                                                                                                                    v32 -= 24;
                                                                                                                    if (v32 == -48)
                                                                                                                    {
                                                                                                                      if (v82 < 0)
                                                                                                                      {
                                                                                                                        operator delete(v81[0]);
                                                                                                                      }

                                                                                                                      v200[0] = &v83;
                                                                                                                      sub_195E3E8(v200);
                                                                                                                      v33 = 0;
                                                                                                                      while (1)
                                                                                                                      {
                                                                                                                        if (v208[v33 * 8 + 23] < 0)
                                                                                                                        {
                                                                                                                          operator delete(v207[v33 + 3]);
                                                                                                                        }

                                                                                                                        v33 -= 3;
                                                                                                                        if (v33 == -6)
                                                                                                                        {
                                                                                                                          if (v87 < 0)
                                                                                                                          {
                                                                                                                            operator delete(v86[0]);
                                                                                                                          }

                                                                                                                          v207[0] = &v88;
                                                                                                                          sub_195E3E8(v207);
                                                                                                                          v34 = 0;
                                                                                                                          while (1)
                                                                                                                          {
                                                                                                                            if (v211[v34 + 23] < 0)
                                                                                                                            {
                                                                                                                              operator delete(*&v211[v34]);
                                                                                                                            }

                                                                                                                            v34 -= 24;
                                                                                                                            if (v34 == -48)
                                                                                                                            {
                                                                                                                              if (v92 < 0)
                                                                                                                              {
                                                                                                                                operator delete(v91[0]);
                                                                                                                              }

                                                                                                                              v209[0] = &v93;
                                                                                                                              sub_195E3E8(v209);
                                                                                                                              v35 = 0;
                                                                                                                              while (1)
                                                                                                                              {
                                                                                                                                if (v358[v35 * 8 + 23] < 0)
                                                                                                                                {
                                                                                                                                  operator delete(v357[v35 + 3]);
                                                                                                                                }

                                                                                                                                v35 -= 3;
                                                                                                                                if (v35 == -6)
                                                                                                                                {
                                                                                                                                  if (v97 < 0)
                                                                                                                                  {
                                                                                                                                    operator delete(v96[0]);
                                                                                                                                  }

                                                                                                                                  v357[0] = &v363;
                                                                                                                                  sub_195E3E8(v357);
                                                                                                                                  v36 = 0;
                                                                                                                                  while (1)
                                                                                                                                  {
                                                                                                                                    if (v371[v36 * 8 + 23] < 0)
                                                                                                                                    {
                                                                                                                                      operator delete(v370[v36 + 3]);
                                                                                                                                    }

                                                                                                                                    v36 -= 3;
                                                                                                                                    if (v36 == -6)
                                                                                                                                    {
                                                                                                                                      if (SHIBYTE(v99) < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(v98);
                                                                                                                                      }

                                                                                                                                      v370[0] = &v366;
                                                                                                                                      sub_195E3E8(v370);
                                                                                                                                      v37 = 0;
                                                                                                                                      while (1)
                                                                                                                                      {
                                                                                                                                        if (v378[v37 + 23] < 0)
                                                                                                                                        {
                                                                                                                                          operator delete(*&v378[v37]);
                                                                                                                                        }

                                                                                                                                        v37 -= 24;
                                                                                                                                        if (v37 == -48)
                                                                                                                                        {
                                                                                                                                          if (SHIBYTE(v101) < 0)
                                                                                                                                          {
                                                                                                                                            operator delete(v100);
                                                                                                                                          }

                                                                                                                                          v376[0] = &v102;
                                                                                                                                          sub_195E3E8(v376);
                                                                                                                                          v38 = 0;
                                                                                                                                          while (1)
                                                                                                                                          {
                                                                                                                                            if (v214[v38 + 23] < 0)
                                                                                                                                            {
                                                                                                                                              operator delete(*&v214[v38]);
                                                                                                                                            }

                                                                                                                                            v38 -= 24;
                                                                                                                                            if (v38 == -48)
                                                                                                                                            {
                                                                                                                                              if (SHIBYTE(v369) < 0)
                                                                                                                                              {
                                                                                                                                                operator delete(v368);
                                                                                                                                              }

                                                                                                                                              sub_3608D0(v230, "HK");
                                                                                                                                              sub_3608D0(&v232, "JP");
                                                                                                                                              sub_3608D0(v234, "MO");
                                                                                                                                              sub_3608D0(v237, "TW");
                                                                                                                                              memset(v154, 0, sizeof(v154));
                                                                                                                                              sub_68678C(v154, v230, v239, 4uLL);
                                                                                                                                              v39 = 0;
                                                                                                                                              while (1)
                                                                                                                                              {
                                                                                                                                                if (v239[v39 - 1] < 0)
                                                                                                                                                {
                                                                                                                                                  operator delete(*&v237[v39]);
                                                                                                                                                }

                                                                                                                                                v39 -= 24;
                                                                                                                                                if (v39 == -96)
                                                                                                                                                {
                                                                                                                                                  sub_3608D0(v376, "geotagger_en_us_model");
                                                                                                                                                  sub_3608D0(v230, "US");
                                                                                                                                                  sub_3608D0(&v232, "CA");
                                                                                                                                                  sub_3608D0(v234, "GB");
                                                                                                                                                  sub_3608D0(v237, "AU");
                                                                                                                                                  sub_3608D0(v239, "NZ");
                                                                                                                                                  sub_3608D0(&v240, "IE");
                                                                                                                                                  sub_3608D0(v242, "ZA");
                                                                                                                                                  memset(v370, 0, sizeof(v370));
                                                                                                                                                  sub_68678C(v370, v230, v245, 7uLL);
                                                                                                                                                  sub_1A5C99C(v212, v376, v370);
                                                                                                                                                  memset(v155, 0, sizeof(v155));
                                                                                                                                                  sub_1A5CA34(v155, v212, v215, 1uLL);
                                                                                                                                                  v357[0] = v214;
                                                                                                                                                  sub_195E3E8(v357);
                                                                                                                                                  if (SHIBYTE(v213) < 0)
                                                                                                                                                  {
                                                                                                                                                    operator delete(v212[0]);
                                                                                                                                                  }

                                                                                                                                                  v357[0] = v370;
                                                                                                                                                  sub_195E3E8(v357);
                                                                                                                                                  v40 = 0;
                                                                                                                                                  while (1)
                                                                                                                                                  {
                                                                                                                                                    if (v244[v40 + 7] < 0)
                                                                                                                                                    {
                                                                                                                                                      operator delete(*&v242[v40]);
                                                                                                                                                    }

                                                                                                                                                    v40 -= 24;
                                                                                                                                                    if (v40 == -168)
                                                                                                                                                    {
                                                                                                                                                      if (v377 < 0)
                                                                                                                                                      {
                                                                                                                                                        operator delete(v376[0]);
                                                                                                                                                      }

                                                                                                                                                      v156 = 16842753;
                                                                                                                                                      v157 = xmmword_23684E0;
                                                                                                                                                      v158 = 1;
                                                                                                                                                      v159 = 0x6400000001;
                                                                                                                                                      v160 = 10;
                                                                                                                                                      sub_3608D0(v230, "AD");
                                                                                                                                                      sub_3608D0(&v232, "AR");
                                                                                                                                                      sub_3608D0(v234, "AT");
                                                                                                                                                      sub_3608D0(v237, "BE");
                                                                                                                                                      sub_3608D0(v239, "BO");
                                                                                                                                                      sub_3608D0(&v240, "BR");
                                                                                                                                                      sub_3608D0(v242, "CH");
                                                                                                                                                      sub_3608D0(v245, "CL");
                                                                                                                                                      sub_3608D0(v247, "CO");
                                                                                                                                                      sub_3608D0(&v248, "CR");
                                                                                                                                                      sub_3608D0(v250, "CU");
                                                                                                                                                      sub_3608D0(v253, "DE");
                                                                                                                                                      sub_3608D0(v255, "DK");
                                                                                                                                                      sub_3608D0(&v256, "DO");
                                                                                                                                                      sub_3608D0(v258, "EC");
                                                                                                                                                      sub_3608D0(v261, "ES");
                                                                                                                                                      sub_3608D0(v263, "FI");
                                                                                                                                                      sub_3608D0(&v264, "GL");
                                                                                                                                                      sub_3608D0(v266, "GQ");
                                                                                                                                                      sub_3608D0(v269, "GR");
                                                                                                                                                      sub_3608D0(v271, "GT");
                                                                                                                                                      sub_3608D0(&v272, "HN");
                                                                                                                                                      sub_3608D0(v274, "ID");
                                                                                                                                                      sub_3608D0(v277, "IS");
                                                                                                                                                      sub_3608D0(v279, "IT");
                                                                                                                                                      sub_3608D0(&v280, "JP");
                                                                                                                                                      sub_3608D0(v282, "LI");
                                                                                                                                                      sub_3608D0(v285, "MX");
                                                                                                                                                      sub_3608D0(v287, "NI");
                                                                                                                                                      sub_3608D0(&v288, "NL");
                                                                                                                                                      sub_3608D0(v290, "NO");
                                                                                                                                                      sub_3608D0(v293, "PA");
                                                                                                                                                      sub_3608D0(v295, "PE");
                                                                                                                                                      sub_3608D0(&v296, "PT");
                                                                                                                                                      sub_3608D0(v298, "PY");
                                                                                                                                                      sub_3608D0(v301, "RO");
                                                                                                                                                      sub_3608D0(v303, "SE");
                                                                                                                                                      sub_3608D0(&v304, "SM");
                                                                                                                                                      sub_3608D0(v306, "SR");
                                                                                                                                                      sub_3608D0(v309, "SV");
                                                                                                                                                      sub_3608D0(v311, "TR");
                                                                                                                                                      sub_3608D0(&v312, "UY");
                                                                                                                                                      sub_3608D0(v314, "VA");
                                                                                                                                                      sub_3608D0(v317, "VE");
                                                                                                                                                      memset(v161, 0, sizeof(v161));
                                                                                                                                                      sub_68678C(v161, v230, v319, 0x2CuLL);
                                                                                                                                                      v41 = 132;
                                                                                                                                                      while (1)
                                                                                                                                                      {
                                                                                                                                                        if (SHIBYTE(v230[v41 - 1]) < 0)
                                                                                                                                                        {
                                                                                                                                                          operator delete(*&v229[v41 * 8 + 24]);
                                                                                                                                                        }

                                                                                                                                                        v41 -= 3;
                                                                                                                                                        if (!(v41 * 8))
                                                                                                                                                        {
                                                                                                                                                          v162 = 35;
                                                                                                                                                          v163 = 1;
                                                                                                                                                          v164 = 1;
                                                                                                                                                          v165 = 1;
                                                                                                                                                          sub_1A5CBBC(v230, "zh", "位置");
                                                                                                                                                          sub_1A5CC10(v234, "en", "Location");
                                                                                                                                                          memset(v166, 0, sizeof(v166));
                                                                                                                                                          sub_1A5CC64(v166, v230, v239, 2uLL);
                                                                                                                                                          v42 = 0;
                                                                                                                                                          while (1)
                                                                                                                                                          {
                                                                                                                                                            v43 = &v230[v42];
                                                                                                                                                            if (v239[v42 * 8 - 1] < 0)
                                                                                                                                                            {
                                                                                                                                                              operator delete(v43[9]);
                                                                                                                                                            }

                                                                                                                                                            if (*(v43 + 71) < 0)
                                                                                                                                                            {
                                                                                                                                                              operator delete(v43[6]);
                                                                                                                                                            }

                                                                                                                                                            v42 -= 6;
                                                                                                                                                            if (v42 == -12)
                                                                                                                                                            {
                                                                                                                                                              sub_3608D0(v230, "SK");
                                                                                                                                                              sub_3608D0(&v232, "CZ");
                                                                                                                                                              sub_3608D0(v234, "SA");
                                                                                                                                                              memset(v167, 0, sizeof(v167));
                                                                                                                                                              sub_68678C(v167, v230, v237, 3uLL);
                                                                                                                                                              v44 = 0;
                                                                                                                                                              while (1)
                                                                                                                                                              {
                                                                                                                                                                if (v236[v44 + 7] < 0)
                                                                                                                                                                {
                                                                                                                                                                  operator delete(*&v234[v44]);
                                                                                                                                                                }

                                                                                                                                                                v44 -= 24;
                                                                                                                                                                if (v44 == -72)
                                                                                                                                                                {
                                                                                                                                                                  sub_3608D0(v230, "a");
                                                                                                                                                                  sub_3608D0(&v232, "asda");
                                                                                                                                                                  sub_3608D0(v234, "das");
                                                                                                                                                                  sub_3608D0(v237, "de");
                                                                                                                                                                  sub_3608D0(v239, "del");
                                                                                                                                                                  sub_3608D0(&v240, "des");
                                                                                                                                                                  sub_3608D0(v242, "do");
                                                                                                                                                                  sub_3608D0(v245, "dos");
                                                                                                                                                                  sub_3608D0(v247, "dueli");
                                                                                                                                                                  sub_3608D0(&v248, "ill");
                                                                                                                                                                  sub_3608D0(v250, "la");
                                                                                                                                                                  sub_3608D0(v253, "le");
                                                                                                                                                                  sub_3608D0(v255, "o");
                                                                                                                                                                  sub_3608D0(&v256, "of");
                                                                                                                                                                  sub_3608D0(v258, "os");
                                                                                                                                                                  sub_3608D0(v261, "the");
                                                                                                                                                                  sub_1A5C918(&v168, v230, 16);
                                                                                                                                                                  v45 = 48;
                                                                                                                                                                  while (1)
                                                                                                                                                                  {
                                                                                                                                                                    if (SHIBYTE(v230[v45 - 1]) < 0)
                                                                                                                                                                    {
                                                                                                                                                                      operator delete(*&v229[v45 * 8 + 24]);
                                                                                                                                                                    }

                                                                                                                                                                    v45 -= 3;
                                                                                                                                                                    if (!(v45 * 8))
                                                                                                                                                                    {
                                                                                                                                                                      sub_3608D0(v230, "block");
                                                                                                                                                                      sub_3608D0(&v232, "blk");
                                                                                                                                                                      sub_1A5C918(v169, v230, 2);
                                                                                                                                                                      v46 = 0;
                                                                                                                                                                      while (1)
                                                                                                                                                                      {
                                                                                                                                                                        if (v233[v46 + 15] < 0)
                                                                                                                                                                        {
                                                                                                                                                                          operator delete(*&v233[v46 - 8]);
                                                                                                                                                                        }

                                                                                                                                                                        v46 -= 24;
                                                                                                                                                                        if (v46 == -48)
                                                                                                                                                                        {
                                                                                                                                                                          v169[24] = 0;
                                                                                                                                                                          *v230 = xmmword_23684F0;
                                                                                                                                                                          memset(v170, 0, sizeof(v170));
                                                                                                                                                                          sub_1A5CCEC(v170, v230, &v231, 2uLL);
                                                                                                                                                                          sub_3608D0(v230, "JP");
                                                                                                                                                                          sub_3608D0(&v232, "TW");
                                                                                                                                                                          sub_3608D0(v234, "HK");
                                                                                                                                                                          sub_3608D0(v237, "MO");
                                                                                                                                                                          memset(v171, 0, sizeof(v171));
                                                                                                                                                                          sub_68678C(v171, v230, v239, 4uLL);
                                                                                                                                                                          v47 = 0;
                                                                                                                                                                          while (1)
                                                                                                                                                                          {
                                                                                                                                                                            if (v239[v47 - 1] < 0)
                                                                                                                                                                            {
                                                                                                                                                                              operator delete(*&v237[v47]);
                                                                                                                                                                            }

                                                                                                                                                                            v47 -= 24;
                                                                                                                                                                            if (v47 == -96)
                                                                                                                                                                            {
                                                                                                                                                                              sub_3608D0(v230, "JP");
                                                                                                                                                                              sub_3608D0(&v232, "VN");
                                                                                                                                                                              memset(v172, 0, 24);
                                                                                                                                                                              sub_68678C(v172, v230, v234, 2uLL);
                                                                                                                                                                              v48 = 0;
                                                                                                                                                                              while (1)
                                                                                                                                                                              {
                                                                                                                                                                                if (v233[v48 + 15] < 0)
                                                                                                                                                                                {
                                                                                                                                                                                  operator delete(*&v233[v48 - 8]);
                                                                                                                                                                                }

                                                                                                                                                                                v48 -= 24;
                                                                                                                                                                                if (v48 == -48)
                                                                                                                                                                                {
                                                                                                                                                                                  v172[24] = 1;
                                                                                                                                                                                  v173 = 0x4024000000000000;
                                                                                                                                                                                  v174 = xmmword_2368500;
                                                                                                                                                                                  v175 = 1000000;
                                                                                                                                                                                  sub_3608D0(v230, "JP");
                                                                                                                                                                                  sub_23898(v176, v230, 1);
                                                                                                                                                                                  if (SHIBYTE(v231) < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v230[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  v176[5] = 0x64000003E8;
                                                                                                                                                                                  v176[6] = 0x3FE0000000000000;
                                                                                                                                                                                  v177 = 1;
                                                                                                                                                                                  sub_3608D0(v230, "NG");
                                                                                                                                                                                  sub_1A5C918(v178, v230, 1);
                                                                                                                                                                                  if (SHIBYTE(v231) < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v230[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  v178[24] = 1;
                                                                                                                                                                                  v67 = 0;
                                                                                                                                                                                  v68 = 0;
                                                                                                                                                                                  memset(v65, 0, sizeof(v65));
                                                                                                                                                                                  v66 = 1065353216;
                                                                                                                                                                                  v212[1] = 0;
                                                                                                                                                                                  v212[0] = 0;
                                                                                                                                                                                  v213 = 0;
                                                                                                                                                                                  LOBYTE(v230[0]) = 0;
                                                                                                                                                                                  v233[0] = 0;
                                                                                                                                                                                  v60[0] = 0;
                                                                                                                                                                                  v62 = 0;
                                                                                                                                                                                  v63 = 0;
                                                                                                                                                                                  v64 = 0;
                                                                                                                                                                                  v55[0] = 0;
                                                                                                                                                                                  v57 = 0;
                                                                                                                                                                                  v58 = 0;
                                                                                                                                                                                  v59 = 0;
                                                                                                                                                                                  v50[0] = 0;
                                                                                                                                                                                  v52 = 0;
                                                                                                                                                                                  v53 = 0;
                                                                                                                                                                                  v54 = 0;
                                                                                                                                                                                  sub_1A5E4D8(&v385, 0, v104, &v67, v65, &v188, 0, v212, 0, v230, v60, v55, v50);
                                                                                                                                                                                  if (v54)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v54);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (v52 == 1 && v51)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v51);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (v59)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v59);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (v57 == 1 && v56)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v56);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (v64)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v64);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (v62 == 1 && v61)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v61);
                                                                                                                                                                                  }

                                                                                                                                                                                  v230[0] = v212;
                                                                                                                                                                                  sub_1962638(v230);
                                                                                                                                                                                  sub_1965BCC(v65);
                                                                                                                                                                                  if (v68)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v68);
                                                                                                                                                                                  }

                                                                                                                                                                                  sub_1965ECC(v104);
                                                                                                                                                                                  v387[202] = v49;
                                                                                                                                                                                  sub_1D22FDC();
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
        }
      }
    }
  }
}

void sub_1E76894(_Unwind_Exception *a1)
{
  STACK[0x9F0] = &STACK[0x7C0];
  sub_195E3E8(&STACK[0x9F0]);
  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  STACK[0xBD0] = &STACK[0x7D8];
  sub_195E3E8(&STACK[0xBD0]);
  if (*(v1 + 23) < 0)
  {
    operator delete(STACK[0x14A0]);
  }

  _Unwind_Resume(a1);
}

void sub_1E78420()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xBD0])
    {
      JUMPOUT(0x1E78410);
    }
  }
}

void sub_1E78580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = v19 - 64;
  sub_19A2570(&a19);
  _Unwind_Resume(a1);
}

void sub_1E786AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_195E3E8(&a12);
  _Unwind_Resume(a1);
}

void sub_1E78804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = v19 - 64;
  sub_19A2570(&a19);
  _Unwind_Resume(a1);
}

std::string *sub_1E78868(std::string *this)
{
  v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = v2;
  v4 = this->__r_.__value_.__r.__words[0];
  size = this->__r_.__value_.__l.__size_;
  if ((v2 & 0x80u) == 0)
  {
    v6 = (this + v2);
  }

  else
  {
    v6 = (this->__r_.__value_.__r.__words[0] + size);
  }

  if ((v2 & 0x80u) == 0)
  {
    v7 = this;
  }

  else
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  if (v7 != v6)
  {
    do
    {
      v7->__r_.__value_.__s.__data_[0] = __tolower(v7->__r_.__value_.__s.__data_[0]);
      v7 = (v7 + 1);
    }

    while (v7 != v6);
    v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    v4 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
    v3 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v3 >= 0)
  {
    v8 = this;
  }

  else
  {
    v8 = v4;
  }

  if (v3 >= 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = size;
  }

  v10 = (v8 + v9);
  if (v9)
  {
    v11 = v9 - 1;
    while (1)
    {
      v12 = v8->__r_.__value_.__s.__data_[0];
      if (v12 == 39 || v12 == 44)
      {
        break;
      }

      v8 = (v8 + 1);
      --v11;
      if (v8 == v10)
      {
        goto LABEL_31;
      }
    }

    if (v8 == v10 || (&v8->__r_.__value_.__l.__data_ + 1) == v10)
    {
      v10 = v8;
    }

    else
    {
      v13 = 1;
      v10 = v8;
      do
      {
        v14 = v8->__r_.__value_.__s.__data_[v13];
        if (v14 != 39 && v14 != 44)
        {
          v10->__r_.__value_.__s.__data_[0] = v14;
          v10 = (v10 + 1);
        }

        ++v13;
        --v11;
      }

      while (v11);
      v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      v4 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v3 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }
  }

LABEL_31:
  v15 = v4 + size;
  v16 = this + v2;
  if (v3 >= 0)
  {
    v4 = this;
  }

  else
  {
    v16 = v15;
  }

  return std::string::erase(this, v10 - v4, v16 - v10);
}

void sub_1E789A4(void **a1, uint64_t a2)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 < 0)
  {
    v3 = a1[1];
  }

  __p[0] = v4;
  __p[1] = v3;
  sub_19AD89C(__p, 32, &v22);
  v5 = v22;
  if (v23 != v22)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = (v5 + v6);
      sub_1E78868((v5 + v6));
      v10 = *(v5 + v6 + 23);
      if (v10 < 0)
      {
        v10 = *(v5 + v6 + 8);
        sub_325C(v14, *(v5 + v6), *(v5 + v6 + 8));
      }

      else
      {
        v11 = *v9;
        v15 = *(v9 + 2);
        *v14 = v11;
      }

      if (SHIBYTE(v15) < 0)
      {
        sub_325C(__p, v14[0], v14[1]);
      }

      else
      {
        *__p = *v14;
        v17 = v15;
      }

      v18 = v8;
      v19 = v8 + v10;
      v21[0] = 0;
      v21[1] = 0;
      v20 = v21;
      v12 = *(a2 + 8);
      if (v12 >= *(a2 + 16))
      {
        v13 = sub_19A1E98(a2, __p);
      }

      else
      {
        sub_19A25E4(*(a2 + 8), __p);
        v13 = v12 + 64;
        *(a2 + 8) = v12 + 64;
      }

      *(a2 + 8) = v13;
      sub_195A77C(&v20, v21[0]);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      v8 += v10 + 1;
      ++v7;
      v5 = v22;
      v6 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3) > v7);
  }

  __p[0] = &v22;
  sub_195E3E8(__p);
}

void sub_1E78B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a16 = &a25;
  sub_195E3E8(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1E78BA4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v14 = sub_3608D0(a1, "en");
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0;
  sub_353184((v14 + 3), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_353184(a1 + 48, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_353184(a1 + 72, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (*(a5 + 23) < 0)
  {
    sub_325C((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v15 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v15;
  }

  if (*(a6 + 23) < 0)
  {
    sub_325C((a1 + 120), *a6, *(a6 + 1));
  }

  else
  {
    v16 = *a6;
    *(a1 + 136) = *(a6 + 2);
    *(a1 + 120) = v16;
  }

  if (*(a7 + 23) < 0)
  {
    sub_325C((a1 + 144), *a7, *(a7 + 1));
  }

  else
  {
    v17 = *a7;
    *(a1 + 160) = *(a7 + 2);
    *(a1 + 144) = v17;
  }

  return a1;
}

void sub_1E78D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 143) < 0)
  {
    operator delete(*(v2 + 120));
  }

  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  sub_195E3E8(va);
  sub_195E3E8(va);
  sub_195E3E8(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1E78D90(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1E78E18(result, a4);
  }

  return result;
}

void sub_1E78DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19A2570(&a9);
  _Unwind_Resume(a1);
}

void sub_1E78E18(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_19A2490(a1, a2);
  }

  sub_1794();
}

void *sub_1E78E64(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_19A22C0(v4, *v6, v6[1], (v6[1] - *v6) >> 6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1E78F18(v8);
  return v4;
}

uint64_t sub_1E78F18(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1E78F50(a1);
  }

  return a1;
}

void sub_1E78F50(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_19A240C(&v3);
  }
}

uint64_t *sub_1E78F9C(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1E79070()
{
  __chkstk_darwin();
  sub_3608D0(&v1245, "AW");
  sub_3608D0(&v1242, "ABW");
  v1244 = 40;
  sub_195E43C(v1247, &v1245, &v1242);
  sub_3608D0(&v1240, "AF");
  sub_3608D0(&v1237, "AFG");
  v1239 = 41;
  sub_195E43C(&v1248, &v1240, &v1237);
  sub_3608D0(&v1235, "AO");
  sub_3608D0(&v1232, "AGO");
  v1234 = 42;
  sub_195E43C(&v1249, &v1235, &v1232);
  sub_3608D0(&v1230, "AI");
  sub_3608D0(&v1227, "AIA");
  v1229 = 43;
  sub_195E43C(&v1250, &v1230, &v1227);
  sub_3608D0(&v1225, "AX");
  sub_3608D0(&v1222, "ALA");
  v1224 = 246;
  sub_195E43C(&v1251, &v1225, &v1222);
  sub_3608D0(&v1220, "AL");
  sub_3608D0(&v1217, "ALB");
  v1219 = 76;
  sub_195E43C(&v1252, &v1220, &v1217);
  sub_3608D0(&v1215, "AD");
  sub_3608D0(&v1212, "AND");
  v1214 = 78;
  sub_195E43C(&v1253, &v1215, &v1212);
  sub_3608D0(&v1210, "AN");
  sub_3608D0(&v1207, "ANT");
  v1209 = 44;
  sub_195E43C(&v1254, &v1210, &v1207);
  sub_3608D0(&v1205, "AE");
  sub_3608D0(&v1202, "ARE");
  v1204 = 2;
  sub_195E43C(&v1255, &v1205, &v1202);
  sub_3608D0(&v1200, "AR");
  sub_3608D0(&v1197, "ARG");
  v1199 = 80;
  sub_195E43C(&v1256, &v1200, &v1197);
  sub_3608D0(&v1195, "AM");
  sub_3608D0(&v1192, "ARM");
  v1194 = 45;
  sub_195E43C(&v1257, &v1195, &v1192);
  sub_3608D0(&v1190, "AS");
  sub_3608D0(&v1187, "ASM");
  v1189 = 77;
  sub_195E43C(&v1258, &v1190, &v1187);
  sub_3608D0(&v1185, "AQ");
  sub_3608D0(&v1182, "ATA");
  v1184 = 46;
  sub_195E43C(&v1259, &v1185, &v1182);
  sub_3608D0(&v1180, "TF");
  sub_3608D0(&v1177, "ATF");
  v1179 = 125;
  sub_195E43C(&v1260, &v1180, &v1177);
  sub_3608D0(&v1175, "AG");
  sub_3608D0(&v1172, "ATG");
  v1174 = 79;
  sub_195E43C(&v1261, &v1175, &v1172);
  sub_3608D0(&v1170, "AU");
  sub_3608D0(&v1167, "AUS");
  v1169 = 22;
  sub_195E43C(&v1262, &v1170, &v1167);
  sub_3608D0(&v1165, "AT");
  sub_3608D0(&v1162, "AUT");
  v1164 = 81;
  sub_195E43C(&v1263, &v1165, &v1162);
  sub_3608D0(&v1160, "AZ");
  sub_3608D0(&v1157, "AZE");
  v1159 = 82;
  sub_195E43C(&v1264, &v1160, &v1157);
  sub_3608D0(&v1155, "BI");
  sub_3608D0(&v1152, "BDI");
  v1154 = 96;
  sub_195E43C(&v1265, &v1155, &v1152);
  sub_3608D0(&v1150, "BE");
  sub_3608D0(&v1147, "BEL");
  v1149 = 87;
  sub_195E43C(&v1266, &v1150, &v1147);
  sub_3608D0(&v1145, "BJ");
  sub_3608D0(&v1142, "BEN");
  v1144 = 3;
  sub_195E43C(&v1267, &v1145, &v1142);
  sub_3608D0(&v1140, "BQ");
  sub_3608D0(&v1137, "BES");
  v1139 = 248;
  sub_195E43C(&v1268, &v1140, &v1137);
  sub_3608D0(&v1135, "BF");
  sub_3608D0(&v1132, "BFA");
  v1134 = 11;
  sub_195E43C(&v1269, &v1135, &v1132);
  sub_3608D0(&v1130, "BD");
  sub_3608D0(&v1127, "BGD");
  v1129 = 84;
  sub_195E43C(&v1270, &v1130, &v1127);
  sub_3608D0(&v1125, "BG");
  sub_3608D0(&v1122, "BGR");
  v1124 = 95;
  sub_195E43C(&v1271, &v1125, &v1122);
  sub_3608D0(&v1120, "BH");
  sub_3608D0(&v1117, "BHR");
  v1119 = 12;
  sub_195E43C(&v1272, &v1120, &v1117);
  sub_3608D0(&v1115, "BS");
  sub_3608D0(&v1112, "BHS");
  v1114 = 83;
  sub_195E43C(&v1273, &v1115, &v1112);
  sub_3608D0(&v1110, "BA");
  sub_3608D0(&v1107, "BIH");
  v1109 = 92;
  sub_195E43C(&v1274, &v1110, &v1107);
  sub_3608D0(&v1105, "BL");
  sub_3608D0(&v1102, "BLM");
  v1104 = 237;
  sub_195E43C(&v1275, &v1105, &v1102);
  sub_3608D0(&v1100, "BY");
  sub_3608D0(&v1097, "BLR");
  v1099 = 86;
  sub_195E43C(&v1276, &v1100, &v1097);
  sub_3608D0(&v1095, "BZ");
  sub_3608D0(&v1092, "BLZ");
  v1094 = 88;
  sub_195E43C(&v1277, &v1095, &v1092);
  sub_3608D0(&v1090, "BM");
  sub_3608D0(&v1087, "BMU");
  v1089 = 89;
  sub_195E43C(&v1278, &v1090, &v1087);
  sub_3608D0(&v1085, "BO");
  sub_3608D0(&v1082, "BOL");
  v1084 = 91;
  sub_195E43C(&v1279, &v1085, &v1082);
  sub_3608D0(&v1080, "BR");
  sub_3608D0(&v1077, "BRA");
  v1079 = 25;
  sub_195E43C(&v1280, &v1080, &v1077);
  sub_3608D0(&v1075, "BB");
  sub_3608D0(&v1072, "BRB");
  v1074 = 85;
  sub_195E43C(&v1281, &v1075, &v1072);
  sub_3608D0(&v1070, "BN");
  sub_3608D0(&v1067, "BRN");
  v1069 = 94;
  sub_195E43C(&v1282, &v1070, &v1067);
  sub_3608D0(&v1065, "BT");
  sub_3608D0(&v1062, "BTN");
  v1064 = 90;
  sub_195E43C(&v1283, &v1065, &v1062);
  sub_3608D0(&v1060, "BV");
  sub_3608D0(&v1057, "BVT");
  v1059 = 245;
  sub_195E43C(&v1284, &v1060, &v1057);
  sub_3608D0(&v1055, "BW");
  sub_3608D0(&v1052, "BWA");
  v1054 = 93;
  sub_195E43C(&v1285, &v1055, &v1052);
  sub_3608D0(&v1050, "CF");
  sub_3608D0(&v1047, "CAF");
  v1049 = 63;
  sub_195E43C(&v1286, &v1050, &v1047);
  sub_3608D0(&v1045, "CA");
  sub_3608D0(&v1042, "CAN");
  v1044 = 98;
  sub_195E43C(&v1287, &v1045, &v1042);
  sub_3608D0(&v1040, "CC");
  sub_3608D0(&v1037, "CCK");
  v1039 = 47;
  sub_195E43C(&v1288, &v1040, &v1037);
  sub_3608D0(&v1035, "CH");
  sub_3608D0(&v1032, "CHE");
  v1034 = 211;
  sub_195E43C(&v1289, &v1035, &v1032);
  sub_3608D0(&v1030, "CL");
  sub_3608D0(&v1027, "CHL");
  v1029 = 102;
  sub_195E43C(&v1290, &v1030, &v1027);
  sub_3608D0(&v1025, "CN");
  sub_3608D0(&v1022, "CHN");
  v1024 = 4;
  sub_195E43C(&v1291, &v1025, &v1022);
  sub_3608D0(&v1020, "CI");
  sub_3608D0(&v1017, "CIV");
  v1019 = 26;
  sub_195E43C(&v1292, &v1020, &v1017);
  sub_3608D0(&v1015, "CM");
  sub_3608D0(&v1012, "CMR");
  v1014 = 27;
  sub_195E43C(&v1293, &v1015, &v1012);
  sub_3608D0(&v1010, "CD");
  sub_3608D0(&v1007, "COD");
  v1009 = 106;
  sub_195E43C(&v1294, &v1010, &v1007);
  sub_3608D0(&v1005, "CG");
  sub_3608D0(&v1002, "COG");
  v1004 = 105;
  sub_195E43C(&v1295, &v1005, &v1002);
  sub_3608D0(&v1000, "CK");
  sub_3608D0(&v997, "COK");
  v999 = 107;
  sub_195E43C(&v1296, &v1000, &v997);
  sub_3608D0(&v995, "CO");
  sub_3608D0(&v992, "COL");
  v994 = 28;
  sub_195E43C(&v1297, &v995, &v992);
  sub_3608D0(&v990, "KM");
  sub_3608D0(&v987, "COM");
  v989 = 104;
  sub_195E43C(&v1298, &v990, &v987);
  sub_3608D0(&v985, "CV");
  sub_3608D0(&v982, "CPV");
  v984 = 99;
  sub_195E43C(&v1299, &v985, &v982);
  sub_3608D0(&v980, "CR");
  sub_3608D0(&v977, "CRI");
  v979 = 13;
  sub_195E43C(&v1300, &v980, &v977);
  sub_3608D0(&v975, "CU");
  sub_3608D0(&v972, "CUB");
  v974 = 109;
  sub_195E43C(&v1301, &v975, &v972);
  sub_3608D0(&v970, "CW");
  sub_3608D0(&v967, "CUW");
  v969 = 247;
  sub_195E43C(&v1302, &v970, &v967);
  sub_3608D0(&v965, "CX");
  sub_3608D0(&v962, "CXR");
  v964 = 103;
  sub_195E43C(&v1303, &v965, &v962);
  sub_3608D0(&v960, "KY");
  sub_3608D0(&v957, "CYM");
  v959 = 100;
  sub_195E43C(&v1304, &v960, &v957);
  sub_3608D0(&v955, "CY");
  sub_3608D0(&v952, "CYP");
  v954 = 110;
  sub_195E43C(&v1305, &v955, &v952);
  sub_3608D0(&v950, "CZ");
  sub_3608D0(&v947, "CZE");
  v949 = 111;
  sub_195E43C(&v1306, &v950, &v947);
  sub_3608D0(&v945, "DE");
  sub_3608D0(&v942, "DEU");
  v944 = 129;
  sub_195E43C(&v1307, &v945, &v942);
  sub_3608D0(&v940, "DJ");
  sub_3608D0(&v937, "DJI");
  v939 = 113;
  sub_195E43C(&v1308, &v940, &v937);
  sub_3608D0(&v935, "DM");
  sub_3608D0(&v932, "DMA");
  v934 = 114;
  sub_195E43C(&v1309, &v935, &v932);
  sub_3608D0(&v930, "DK");
  sub_3608D0(&v927, "DNK");
  v929 = 112;
  sub_195E43C(&v1310, &v930, &v927);
  sub_3608D0(&v925, "DO");
  sub_3608D0(&v922, "DOM");
  v924 = 29;
  sub_195E43C(&v1311, &v925, &v922);
  sub_3608D0(&v920, "DZ");
  sub_3608D0(&v917, "DZA");
  v919 = 0;
  sub_195E43C(&v1312, &v920, &v917);
  sub_3608D0(&v915, "EC");
  sub_3608D0(&v912, "ECU");
  v914 = 30;
  sub_195E43C(&v1313, &v915, &v912);
  sub_3608D0(&v910, "EG");
  sub_3608D0(&v907, "EGY");
  v909 = 64;
  sub_195E43C(&v1314, &v910, &v907);
  sub_3608D0(&v905, "ER");
  sub_3608D0(&v902, "ERI");
  v904 = 116;
  sub_195E43C(&v1315, &v905, &v902);
  sub_3608D0(&v900, "EH");
  sub_3608D0(&v897, "ESH");
  v899 = 65;
  sub_195E43C(&v1316, &v900, &v897);
  sub_3608D0(&v895, "ES");
  sub_3608D0(&v892, "ESP");
  v894 = 206;
  sub_195E43C(&v1317, &v895, &v892);
  sub_3608D0(&v890, "EE");
  sub_3608D0(&v887, "EST");
  v889 = 117;
  sub_195E43C(&v1318, &v890, &v887);
  sub_3608D0(&v885, "ET");
  sub_3608D0(&v882, "ETH");
  v884 = 31;
  sub_195E43C(&v1319, &v885, &v882);
  sub_3608D0(&v880, "FI");
  sub_3608D0(&v877, "FIN");
  v879 = 121;
  sub_195E43C(&v1320, &v880, &v877);
  sub_3608D0(&v875, "FJ");
  sub_3608D0(&v872, "FJI");
  v874 = 120;
  sub_195E43C(&v1321, &v875, &v872);
  sub_3608D0(&v870, "FK");
  sub_3608D0(&v867, "FLK");
  v869 = 118;
  sub_195E43C(&v1322, &v870, &v867);
  sub_3608D0(&v865, "FR");
  sub_3608D0(&v862, "FRA");
  v864 = 122;
  sub_195E43C(&v1323, &v865, &v862);
  sub_3608D0(&v860, "FO");
  sub_3608D0(&v857, "FRO");
  v859 = 119;
  sub_195E43C(&v1324, &v860, &v857);
  sub_3608D0(&v855, "FM");
  sub_3608D0(&v852, "FSM");
  v854 = 166;
  sub_195E43C(&v1325, &v855, &v852);
  sub_3608D0(&v850, "GA");
  sub_3608D0(&v847, "GAB");
  v849 = 126;
  sub_195E43C(&v1326, &v850, &v847);
  sub_3608D0(&v845, "GB");
  sub_3608D0(&v842, "GBR");
  v844 = 225;
  sub_195E43C(&v1327, &v845, &v842);
  sub_3608D0(&v840, "GE");
  sub_3608D0(&v837, "GEO");
  v839 = 128;
  sub_195E43C(&v1328, &v840, &v837);
  sub_3608D0(&v835, "GG");
  sub_3608D0(&v832, "GGY");
  v834 = 256;
  sub_195E43C(&v1329, &v835, &v832);
  sub_3608D0(&v830, "GH");
  sub_3608D0(&v827, "GHA");
  v829 = 66;
  sub_195E43C(&v1330, &v830, &v827);
  sub_3608D0(&v825, "GI");
  sub_3608D0(&v822, "GIB");
  v824 = 67;
  sub_195E43C(&v1331, &v825, &v822);
  sub_3608D0(&v820, "GN");
  sub_3608D0(&v817, "GIN");
  v819 = 135;
  sub_195E43C(&v1332, &v820, &v817);
  sub_3608D0(&v815, "GP");
  sub_3608D0(&v812, "GLP");
  v814 = 133;
  sub_195E43C(&v1333, &v815, &v812);
  sub_3608D0(&v810, "GM");
  sub_3608D0(&v807, "GMB");
  v809 = 127;
  sub_195E43C(&v1334, &v810, &v807);
  sub_3608D0(&v805, "GW");
  sub_3608D0(&v802, "GNB");
  v804 = 68;
  sub_195E43C(&v1335, &v805, &v802);
  sub_3608D0(&v800, "GQ");
  sub_3608D0(&v797, "GNQ");
  v799 = 115;
  sub_195E43C(&v1336, &v800, &v797);
  sub_3608D0(&v795, "GR");
  sub_3608D0(&v792, "GRC");
  v794 = 130;
  sub_195E43C(&v1337, &v795, &v792);
  sub_3608D0(&v790, "GD");
  sub_3608D0(&v787, "GRD");
  v789 = 132;
  sub_195E43C(&v1338, &v790, &v787);
  sub_3608D0(&v785, "GL");
  sub_3608D0(&v782, "GRL");
  v784 = 131;
  sub_195E43C(&v1339, &v785, &v782);
  sub_3608D0(&v780, "GT");
  sub_3608D0(&v777, "GTM");
  v779 = 32;
  sub_195E43C(&v1340, &v780, &v777);
  sub_3608D0(&v775, "GF");
  sub_3608D0(&v772, "GUF");
  v774 = 123;
  sub_195E43C(&v1341, &v775, &v772);
  sub_3608D0(&v770, "GU");
  sub_3608D0(&v767, "GUM");
  v769 = 134;
  sub_195E43C(&v1342, &v770, &v767);
  sub_3608D0(&v765, "GY");
  sub_3608D0(&v762, "GUY");
  v764 = 136;
  sub_195E43C(&v1343, &v765, &v762);
  sub_3608D0(&v760, "HK");
  sub_3608D0(&v757, "HKG");
  v759 = 5;
  sub_195E43C(&v1344, &v760, &v757);
  sub_3608D0(&v755, "HM");
  sub_3608D0(&v752, "HMD");
  v754 = 240;
  sub_195E43C(&v1345, &v755, &v752);
  sub_3608D0(&v750, "HN");
  sub_3608D0(&v747, "HND");
  v749 = 14;
  sub_195E43C(&v1346, &v750, &v747);
  sub_3608D0(&v745, "HR");
  sub_3608D0(&v742, "HRV");
  v744 = 108;
  sub_195E43C(&v1347, &v745, &v742);
  sub_3608D0(&v740, "HT");
  sub_3608D0(&v737, "HTI");
  v739 = 137;
  sub_195E43C(&v1348, &v740, &v737);
  sub_3608D0(&v735, "HU");
  sub_3608D0(&v732, "HUN");
  v734 = 138;
  sub_195E43C(&v1349, &v735, &v732);
  sub_3608D0(&v730, "ID");
  sub_3608D0(&v727, "IDN");
  v729 = 69;
  sub_195E43C(&v1350, &v730, &v727);
  sub_3608D0(&v725, "IM");
  sub_3608D0(&v722, "IMN");
  v724 = 255;
  sub_195E43C(&v1351, &v725, &v722);
  sub_3608D0(&v720, "IN");
  sub_3608D0(&v717, "IND");
  v719 = 140;
  sub_195E43C(&v1352, &v720, &v717);
  sub_3608D0(&v715, "IO");
  sub_3608D0(&v712, "IOT");
  v714 = 48;
  sub_195E43C(&v1353, &v715, &v712);
  sub_3608D0(&v710, "IE");
  sub_3608D0(&v707, "IRL");
  v709 = 143;
  sub_195E43C(&v1354, &v710, &v707);
  sub_3608D0(&v705, "IR");
  sub_3608D0(&v702, "IRN");
  v704 = 141;
  sub_195E43C(&v1355, &v705, &v702);
  sub_3608D0(&v700, "IQ");
  sub_3608D0(&v697, "IRQ");
  v699 = 142;
  sub_195E43C(&v1356, &v700, &v697);
  sub_3608D0(&v695, "IS");
  sub_3608D0(&v692, "ISL");
  v694 = 139;
  sub_195E43C(&v1357, &v695, &v692);
  sub_3608D0(&v690, "IL");
  sub_3608D0(&v687, "ISR");
  v689 = 75;
  sub_195E43C(&v1358, &v690, &v687);
  sub_3608D0(&v685, "IT");
  sub_3608D0(&v682, "ITA");
  v684 = 144;
  sub_195E43C(&v1359, &v685, &v682);
  sub_3608D0(&v680, "JM");
  sub_3608D0(&v677, "JAM");
  v679 = 15;
  sub_195E43C(&v1360, &v680, &v677);
  sub_3608D0(&v675, "JE");
  sub_3608D0(&v672, "JEY");
  v674 = 254;
  sub_195E43C(&v1361, &v675, &v672);
  sub_3608D0(&v670, "JO");
  sub_3608D0(&v667, "JOR");
  v669 = 33;
  sub_195E43C(&v1362, &v670, &v667);
  sub_3608D0(&v665, "JP");
  sub_3608D0(&v662, "JPN");
  v664 = 10;
  sub_195E43C(&v1363, &v665, &v662);
  sub_3608D0(&v660, "KZ");
  sub_3608D0(&v657, "KAZ");
  v659 = 145;
  sub_195E43C(&v1364, &v660, &v657);
  sub_3608D0(&v655, "KE");
  sub_3608D0(&v652, "KEN");
  v654 = 34;
  sub_195E43C(&v1365, &v655, &v652);
  sub_3608D0(&v650, "KG");
  sub_3608D0(&v647, "KGZ");
  v649 = 149;
  sub_195E43C(&v1366, &v650, &v647);
  sub_3608D0(&v645, "KH");
  sub_3608D0(&v642, "KHM");
  v644 = 97;
  sub_195E43C(&v1367, &v645, &v642);
  sub_3608D0(&v640, "KI");
  sub_3608D0(&v637, "KIR");
  v639 = 146;
  sub_195E43C(&v1368, &v640, &v637);
  sub_3608D0(&v635, "KN");
  sub_3608D0(&v632, "KNA");
  v634 = 193;
  sub_195E43C(&v1369, &v635, &v632);
  sub_3608D0(&v630, "KR");
  sub_3608D0(&v627, "KOR");
  v629 = 148;
  sub_195E43C(&v1370, &v630, &v627);
  sub_3608D0(&v625, "KW");
  sub_3608D0(&v622, "KWT");
  v624 = 16;
  sub_195E43C(&v1371, &v625, &v622);
  sub_3608D0(&v620, "LA");
  sub_3608D0(&v617, "LAO");
  v619 = 150;
  sub_195E43C(&v1372, &v620, &v617);
  sub_3608D0(&v615, "LB");
  sub_3608D0(&v612, "LBN");
  v614 = 152;
  sub_195E43C(&v1373, &v615, &v612);
  sub_3608D0(&v610, "LR");
  sub_3608D0(&v607, "LBR");
  v609 = 153;
  sub_195E43C(&v1374, &v610, &v607);
  sub_3608D0(&v605, "LY");
  sub_3608D0(&v602, "LBY");
  v604 = 154;
  sub_195E43C(&v1375, &v605, &v602);
  sub_3608D0(&v600, "LC");
  sub_3608D0(&v597, "LCA");
  v599 = 194;
  sub_195E43C(&v1376, &v600, &v597);
  sub_3608D0(&v595, "LI");
  sub_3608D0(&v592, "LIE");
  v594 = 70;
  sub_195E43C(&v1377, &v595, &v592);
  sub_3608D0(&v590, "LK");
  sub_3608D0(&v587, "LKA");
  v589 = 207;
  sub_195E43C(&v1378, &v590, &v587);
  sub_3608D0(&v585, "LS");
  sub_3608D0(&v582, "LSO");
  v584 = 49;
  sub_195E43C(&v1379, &v585, &v582);
  sub_3608D0(&v580, "LT");
  sub_3608D0(&v577, "LTU");
  v579 = 155;
  sub_195E43C(&v1380, &v580, &v577);
  sub_3608D0(&v575, "LU");
  sub_3608D0(&v572, "LUX");
  v574 = 156;
  sub_195E43C(&v1381, &v575, &v572);
  sub_3608D0(&v570, "LV");
  sub_3608D0(&v567, "LVA");
  v569 = 151;
  sub_195E43C(&v1382, &v570, &v567);
  sub_3608D0(&v565, "MO");
  sub_3608D0(&v562, "MAC");
  v564 = 157;
  sub_195E43C(&v1383, &v565, &v562);
  sub_3608D0(&v560, "MF");
  sub_3608D0(&v557, "MAF");
  v559 = 236;
  sub_195E43C(&v1384, &v560, &v557);
  sub_3608D0(&v555, "MA");
  sub_3608D0(&v552, "MAR");
  v554 = 171;
  sub_195E43C(&v1385, &v555, &v552);
  sub_3608D0(&v550, "MC");
  sub_3608D0(&v547, "MCO");
  v549 = 71;
  sub_195E43C(&v1386, &v550, &v547);
  sub_3608D0(&v545, "MD");
  sub_3608D0(&v542, "MDA");
  v544 = 167;
  sub_195E43C(&v1387, &v545, &v542);
  sub_3608D0(&v540, "MG");
  sub_3608D0(&v537, "MDG");
  v539 = 159;
  sub_195E43C(&v1388, &v540, &v537);
  sub_3608D0(&v535, "MV");
  sub_3608D0(&v532, "MDV");
  v534 = 50;
  sub_195E43C(&v1389, &v535, &v532);
  sub_3608D0(&v530, "MX");
  sub_3608D0(&v527, "MEX");
  v529 = 165;
  sub_195E43C(&v1390, &v530, &v527);
  sub_3608D0(&v525, "MH");
  sub_3608D0(&v522, "MHL");
  v524 = 51;
  sub_195E43C(&v1391, &v525, &v522);
  sub_3608D0(&v520, "MK");
  sub_3608D0(&v517, "MKD");
  v519 = 158;
  sub_195E43C(&v1392, &v520, &v517);
  sub_3608D0(&v515, "ML");
  sub_3608D0(&v512, "MLI");
  v514 = 17;
  sub_195E43C(&v1393, &v515, &v512);
  sub_3608D0(&v510, "MT");
  sub_3608D0(&v507, "MLT");
  v509 = 162;
  sub_195E43C(&v1394, &v510, &v507);
  sub_3608D0(&v505, "MM");
  sub_3608D0(&v502, "MMR");
  v504 = 173;
  sub_195E43C(&v1395, &v505, &v502);
  sub_3608D0(&v500, "ME");
  sub_3608D0(&v497, "MNE");
  v499 = 169;
  sub_195E43C(&v1396, &v500, &v497);
  sub_3608D0(&v495, "MN");
  sub_3608D0(&v492, "MNG");
  v494 = 168;
  sub_195E43C(&v1397, &v495, &v492);
  sub_3608D0(&v490, "MP");
  sub_3608D0(&v487, "MNP");
  v489 = 179;
  sub_195E43C(&v1398, &v490, &v487);
  sub_3608D0(&v485, "MZ");
  sub_3608D0(&v482, "MOZ");
  v484 = 172;
  sub_195E43C(&v1399, &v485, &v482);
  sub_3608D0(&v480, "MR");
  sub_3608D0(&v477, "MRT");
  v479 = 163;
  sub_195E43C(&v1400, &v480, &v477);
  sub_3608D0(&v475, "MS");
  sub_3608D0(&v472, "MSR");
  v474 = 170;
  sub_195E43C(&v1401, &v475, &v472);
  sub_3608D0(&v470, "MQ");
  sub_3608D0(&v467, "MTQ");
  v469 = 52;
  sub_195E43C(&v1402, &v470, &v467);
  sub_3608D0(&v465, "MU");
  sub_3608D0(&v462, "MUS");
  v464 = 164;
  sub_195E43C(&v1403, &v465, &v462);
  sub_3608D0(&v460, "MW");
  sub_3608D0(&v457, "MWI");
  v459 = 160;
  sub_195E43C(&v1404, &v460, &v457);
  sub_3608D0(&v455, "MY");
  sub_3608D0(&v452, "MYS");
  v454 = 161;
  sub_195E43C(&v1405, &v455, &v452);
  sub_3608D0(&v450, "YT");
  sub_3608D0(&v447, "MYT");
  v449 = 53;
  sub_195E43C(&v1406, &v450, &v447);
  sub_3608D0(&v445, "NA");
  sub_3608D0(&v442, "NAM");
  v444 = 174;
  sub_195E43C(&v1407, &v445, &v442);
  sub_3608D0(&v440, "NC");
  sub_3608D0(&v437, "NCL");
  v439 = 177;
  sub_195E43C(&v1408, &v440, &v437);
  sub_3608D0(&v435, "NE");
  sub_3608D0(&v432, "NER");
  v434 = 35;
  sub_195E43C(&v1409, &v435, &v432);
  sub_3608D0(&v430, "NF");
  sub_3608D0(&v427, "NFK");
  v429 = 23;
  sub_195E43C(&v1410, &v430, &v427);
  sub_3608D0(&v425, "NG");
  sub_3608D0(&v422, "NGA");
  v424 = 6;
  sub_195E43C(&v1411, &v425, &v422);
  sub_3608D0(&v420, "NI");
  sub_3608D0(&v417, "NIC");
  v419 = 18;
  sub_195E43C(&v1412, &v420, &v417);
  sub_3608D0(&v415, "NU");
  sub_3608D0(&v412, "NIU");
  v414 = 178;
  sub_195E43C(&v1413, &v415, &v412);
  sub_3608D0(&v410, "NL");
  sub_3608D0(&v407, "NLD");
  v409 = 176;
  sub_195E43C(&v1414, &v410, &v407);
  sub_3608D0(&v405, "NO");
  sub_3608D0(&v402, "NOR");
  v404 = 180;
  sub_195E43C(&v1415, &v405, &v402);
  sub_3608D0(&v400, "NP");
  sub_3608D0(&v397, "NPL");
  v399 = 175;
  sub_195E43C(&v1416, &v400, &v397);
  sub_3608D0(&v395, "NR");
  sub_3608D0(&v392, "NRU");
  v394 = 54;
  sub_195E43C(&v1417, &v395, &v392);
  sub_3608D0(&v390, "NZ");
  sub_3608D0(&v387, "NZL");
  v389 = 24;
  sub_195E43C(&v1418, &v390, &v387);
  sub_3608D0(&v385, "OM");
  sub_3608D0(&v382, "OMN");
  v384 = 7;
  sub_195E43C(&v1419, &v385, &v382);
  sub_3608D0(&v380, "PA");
  sub_3608D0(&v377, "PAN");
  v379 = 19;
  sub_195E43C(&v1420, &v380, &v377);
  sub_3608D0(&v375, "PE");
  sub_3608D0(&v372, "PER");
  v374 = 184;
  sub_195E43C(&v1421, &v375, &v372);
  sub_3608D0(&v370, "PF");
  sub_3608D0(&v367, "PYF");
  v369 = 124;
  sub_195E43C(&v1422, &v370, &v367);
  sub_3608D0(&v365, "PG");
  sub_3608D0(&v362, "PNG");
  v364 = 56;
  sub_195E43C(&v1423, &v365, &v362);
  sub_3608D0(&v360, "PH");
  sub_3608D0(&v357, "PHL");
  v359 = 185;
  sub_195E43C(&v1424, &v360, &v357);
  sub_3608D0(&v355, "PK");
  sub_3608D0(&v352, "PAK");
  v354 = 181;
  sub_195E43C(&v1425, &v355, &v352);
  sub_3608D0(&v350, "PL");
  sub_3608D0(&v347, "POL");
  v349 = 186;
  sub_195E43C(&v1426, &v350, &v347);
  sub_3608D0(&v345, "PM");
  sub_3608D0(&v342, "SPM");
  v344 = 241;
  sub_195E43C(&v1427, &v345, &v342);
  sub_3608D0(&v340, "PN");
  sub_3608D0(&v337, "PCN");
  v339 = 55;
  sub_195E43C(&v1428, &v340, &v337);
  sub_3608D0(&v335, "PR");
  sub_3608D0(&v332, "PRI");
  v334 = 253;
  sub_195E43C(&v1429, &v335, &v332);
  sub_3608D0(&v330, "PS");
  sub_3608D0(&v327, "PSE");
  v329 = 36;
  sub_195E43C(&v1430, &v330, &v327);
  sub_3608D0(&v325, "PT");
  sub_3608D0(&v322, "PRT");
  v324 = 187;
  sub_195E43C(&v1431, &v325, &v322);
  sub_3608D0(&v320, "PW");
  sub_3608D0(&v317, "PLW");
  v319 = 182;
  sub_195E43C(&v1432, &v320, &v317);
  sub_3608D0(&v315, "PY");
  sub_3608D0(&v312, "PRY");
  v314 = 183;
  sub_195E43C(&v1433, &v315, &v312);
  sub_3608D0(&v310, "QA");
  sub_3608D0(&v307, "QAT");
  v309 = 8;
  sub_195E43C(&v1434, &v310, &v307);
  sub_3608D0(&v305, "RE");
  sub_3608D0(&v302, "REU");
  v304 = 188;
  sub_195E43C(&v1435, &v305, &v302);
  sub_3608D0(&v300, "RO");
  sub_3608D0(&v297, "ROU");
  v299 = 189;
  sub_195E43C(&v1436, &v300, &v297);
  sub_3608D0(&v295, "RS");
  sub_3608D0(&v292, "SRB");
  v294 = 199;
  sub_195E43C(&v1437, &v295, &v292);
  sub_3608D0(&v290, "RU");
  sub_3608D0(&v287, "RUS");
  v289 = 190;
  sub_195E43C(&v1438, &v290, &v287);
  sub_3608D0(&v285, "RW");
  sub_3608D0(&v282, "RWA");
  v284 = 191;
  sub_195E43C(&v1439, &v285, &v282);
  sub_3608D0(&v280, "SA");
  sub_3608D0(&v277, "SAU");
  v279 = 20;
  sub_195E43C(&v1440, &v280, &v277);
  sub_3608D0(&v275, "SB");
  sub_3608D0(&v272, "SLB");
  v274 = 58;
  sub_195E43C(&v1441, &v275, &v272);
  sub_3608D0(&v270, "SC");
  sub_3608D0(&v267, "SYC");
  v269 = 200;
  sub_195E43C(&v1442, &v270, &v267);
  sub_3608D0(&v265, "SD");
  sub_3608D0(&v262, "SDN");
  v264 = 208;
  sub_195E43C(&v1443, &v265, &v262);
  sub_3608D0(&v260, "SE");
  sub_3608D0(&v257, "SWE");
  v259 = 210;
  sub_195E43C(&v1444, &v260, &v257);
  sub_3608D0(&v255, "SG");
  sub_3608D0(&v252, "SGP");
  v254 = 202;
  sub_195E43C(&v1445, &v255, &v252);
  sub_3608D0(&v250, "SH");
  sub_3608D0(&v247, "SHN");
  v249 = 192;
  sub_195E43C(&v1446, &v250, &v247);
  sub_3608D0(&v245, "SI");
  sub_3608D0(&v242, "SVN");
  v244 = 204;
  sub_195E43C(&v1447, &v245, &v242);
  sub_3608D0(&v240, "SJ");
  sub_3608D0(&v237, "SJM");
  v239 = 72;
  sub_195E43C(&v1448, &v240, &v237);
  sub_3608D0(&v235, "SK");
  sub_3608D0(&v232, "SVK");
  v234 = 203;
  sub_195E43C(&v1449, &v235, &v232);
  sub_3608D0(&v230, "SL");
  sub_3608D0(&v227, "SLE");
  v229 = 201;
  sub_195E43C(&v1450, &v230, &v227);
  sub_3608D0(&v225, "SM");
  sub_3608D0(&v222, "SMR");
  v224 = 197;
  sub_195E43C(&v1451, &v225, &v222);
  sub_3608D0(&v220, "SN");
  sub_3608D0(&v217, "SEN");
  v219 = 37;
  sub_195E43C(&v1452, &v220, &v217);
  sub_3608D0(&v215, "SO");
  sub_3608D0(&v212, "SOM");
  v214 = 205;
  sub_195E43C(&v1453, &v215, &v212);
  sub_3608D0(&v210, "SR");
  sub_3608D0(&v207, "SUR");
  v209 = 209;
  sub_195E43C(&v1454, &v210, &v207);
  sub_3608D0(&v205, "SS");
  sub_3608D0(&v202, "SSD");
  v204 = 243;
  sub_195E43C(&v1455, &v205, &v202);
  sub_3608D0(&v200, "ST");
  sub_3608D0(&v197, "STP");
  v199 = 198;
  sub_195E43C(&v1456, &v200, &v197);
  sub_3608D0(&v195, "SV");
  sub_3608D0(&v192, "SLV");
  v194 = 21;
  sub_195E43C(&v1457, &v195, &v192);
  sub_3608D0(&v190, "SX");
  sub_3608D0(&v187, "SXM");
  v189 = 234;
  sub_195E43C(&v1458, &v190, &v187);
  sub_3608D0(&v185, "SY");
  sub_3608D0(&v182, "SYR");
  v184 = 212;
  sub_195E43C(&v1459, &v185, &v182);
  sub_3608D0(&v180, "SZ");
  sub_3608D0(&v177, "SWZ");
  v179 = 59;
  sub_195E43C(&v1460, &v180, &v177);
  sub_3608D0(&v175, "TC");
  sub_3608D0(&v172, "TCA");
  v174 = 222;
  sub_195E43C(&v1461, &v175, &v172);
  sub_3608D0(&v170, "TD");
  sub_3608D0(&v167, "TCD");
  v169 = 101;
  sub_195E43C(&v1462, &v170, &v167);
  sub_3608D0(&v165, "TF");
  sub_3608D0(&v162, "ATF");
  v164 = 125;
  sub_195E43C(&v1463, &v165, &v162);
  sub_3608D0(&v160, "TG");
  sub_3608D0(&v157, "TGO");
  v159 = 216;
  sub_195E43C(&v1464, &v160, &v157);
  sub_3608D0(&v155, "TH");
  sub_3608D0(&v152, "THA");
  v154 = 214;
  sub_195E43C(&v1465, &v155, &v152);
  sub_3608D0(&v150, "TJ");
  sub_3608D0(&v147, "TJK");
  v149 = 213;
  sub_195E43C(&v1466, &v150, &v147);
  sub_3608D0(&v145, "TK");
  sub_3608D0(&v142, "TKL");
  v144 = 244;
  sub_195E43C(&v1467, &v145, &v142);
  sub_3608D0(&v140, "TL");
  sub_3608D0(&v137, "TLS");
  v139 = 215;
  sub_195E43C(&v1468, &v140, &v137);
  sub_3608D0(&v135, "TM");
  sub_3608D0(&v132, "TKM");
  v134 = 221;
  sub_195E43C(&v1469, &v135, &v132);
  sub_3608D0(&v130, "TN");
  sub_3608D0(&v127, "TUN");
  v129 = 219;
  sub_195E43C(&v1470, &v130, &v127);
  sub_3608D0(&v125, "TO");
  sub_3608D0(&v122, "TON");
  v124 = 217;
  sub_195E43C(&v1471, &v125, &v122);
  sub_3608D0(&v120, "TR");
  sub_3608D0(&v117, "TUR");
  v119 = 220;
  sub_195E43C(&v1472, &v120, &v117);
  sub_3608D0(&v115, "TT");
  sub_3608D0(&v112, "TTO");
  v114 = 218;
  sub_195E43C(&v1473, &v115, &v112);
  sub_3608D0(&v110, "TV");
  sub_3608D0(&v107, "TUV");
  v109 = 60;
  sub_195E43C(&v1474, &v110, &v107);
  sub_3608D0(&v105, "TZ");
  sub_3608D0(&v102, "TZA");
  v104 = 38;
  sub_195E43C(&v1475, &v105, &v102);
  sub_3608D0(&v100, "UA");
  sub_3608D0(&v97, "UKR");
  v99 = 224;
  sub_195E43C(&v1476, &v100, &v97);
  sub_3608D0(&v95, "UG");
  sub_3608D0(&v92, "UGA");
  v94 = 223;
  sub_195E43C(&v1477, &v95, &v92);
  sub_3608D0(&v90, "UM");
  sub_3608D0(&v87, "UMI");
  v89 = 251;
  sub_195E43C(&v1478, &v90, &v87);
  sub_3608D0(&v85, "US");
  sub_3608D0(&v82, "USA");
  v84 = 226;
  sub_195E43C(&v1479, &v85, &v82);
  sub_3608D0(&v80, "UY");
  sub_3608D0(&v77, "URY");
  v79 = 1;
  sub_195E43C(&v1480, &v80, &v77);
  sub_3608D0(&v75, "UZ");
  sub_3608D0(&v72, "UZB");
  v74 = 227;
  sub_195E43C(&v1481, &v75, &v72);
  sub_3608D0(&v70, "VA");
  sub_3608D0(&v67, "VAT");
  v69 = 74;
  sub_195E43C(&v1482, &v70, &v67);
  sub_3608D0(&v65, "VC");
  sub_3608D0(&v62, "VCT");
  v64 = 195;
  sub_195E43C(&v1483, &v65, &v62);
  sub_3608D0(&v60, "VE");
  sub_3608D0(&v57, "VEN");
  v59 = 39;
  sub_195E43C(&v1484, &v60, &v57);
  sub_3608D0(&v55, "VG");
  sub_3608D0(&v52, "VGB");
  v54 = 229;
  sub_195E43C(&v1485, &v55, &v52);
  sub_3608D0(&v50, "VI");
  sub_3608D0(&v47, "VIR");
  v49 = 242;
  sub_195E43C(&v1486, &v50, &v47);
  sub_3608D0(&v45, "VN");
  sub_3608D0(&v42, "VNM");
  v44 = 9;
  sub_195E43C(&v1487, &v45, &v42);
  sub_3608D0(&v40, "VU");
  sub_3608D0(&v37, "VUT");
  v39 = 228;
  sub_195E43C(&v1488, &v40, &v37);
  sub_3608D0(&v35, "WF");
  sub_3608D0(&v32, "WLF");
  v34 = 230;
  sub_195E43C(&v1489, &v35, &v32);
  sub_3608D0(&v30, "WS");
  sub_3608D0(&v27, "WSM");
  v29 = 196;
  sub_195E43C(&v1490, &v30, &v27);
  sub_3608D0(&v25, "YE");
  sub_3608D0(&v22, "YEM");
  v24 = 231;
  sub_195E43C(&v1491, &v25, &v22);
  sub_3608D0(&v20, "YT");
  sub_3608D0(&v17, "MYT");
  v19 = 53;
  sub_195E43C(&v1492, &v20, &v17);
  sub_3608D0(&v15, "ZA");
  sub_3608D0(v12, "ZAF");
  v14 = 62;
  sub_195E43C(&v1493, &v15, v12);
  sub_3608D0(v10, "ZM");
  sub_3608D0(v7, "ZMB");
  v9 = 232;
  sub_195E43C(&v1494, v10, v7);
  sub_3608D0(v5, "ZW");
  sub_3608D0(__p, "ZWE");
  v4 = 233;
  sub_195E43C(&v1495, v5, __p);
  sub_1966280(qword_27F00A0, v1247, 249);
  v0 = &v1496;
  v1 = -13944;
  do
  {
    if (*v0 < 0)
    {
      operator delete(*(v0 - 23));
    }

    if (*(v0 - 24) < 0)
    {
      operator delete(*(v0 - 47));
    }

    v0 -= 56;
    v1 += 56;
  }

  while (v1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v68 < 0)
  {
    operator delete(v67);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v83 < 0)
  {
    operator delete(v82);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v88 < 0)
  {
    operator delete(v87);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v93 < 0)
  {
    operator delete(v92);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v98 < 0)
  {
    operator delete(v97);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v103 < 0)
  {
    operator delete(v102);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v113 < 0)
  {
    operator delete(v112);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v128 < 0)
  {
    operator delete(v127);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v133 < 0)
  {
    operator delete(v132);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v138 < 0)
  {
    operator delete(v137);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v143 < 0)
  {
    operator delete(v142);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v148 < 0)
  {
    operator delete(v147);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v153 < 0)
  {
    operator delete(v152);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v158 < 0)
  {
    operator delete(v157);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v163 < 0)
  {
    operator delete(v162);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v168 < 0)
  {
    operator delete(v167);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v173 < 0)
  {
    operator delete(v172);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v178 < 0)
  {
    operator delete(v177);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v183 < 0)
  {
    operator delete(v182);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v188 < 0)
  {
    operator delete(v187);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v193 < 0)
  {
    operator delete(v192);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v198 < 0)
  {
    operator delete(v197);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v203 < 0)
  {
    operator delete(v202);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v208 < 0)
  {
    operator delete(v207);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v213 < 0)
  {
    operator delete(v212);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v218 < 0)
  {
    operator delete(v217);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v223 < 0)
  {
    operator delete(v222);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v228 < 0)
  {
    operator delete(v227);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v233 < 0)
  {
    operator delete(v232);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v238 < 0)
  {
    operator delete(v237);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v243 < 0)
  {
    operator delete(v242);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v248 < 0)
  {
    operator delete(v247);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v253 < 0)
  {
    operator delete(v252);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v258 < 0)
  {
    operator delete(v257);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v263 < 0)
  {
    operator delete(v262);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v268 < 0)
  {
    operator delete(v267);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v273 < 0)
  {
    operator delete(v272);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v278 < 0)
  {
    operator delete(v277);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v283 < 0)
  {
    operator delete(v282);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v288 < 0)
  {
    operator delete(v287);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v293 < 0)
  {
    operator delete(v292);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v298 < 0)
  {
    operator delete(v297);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v303 < 0)
  {
    operator delete(v302);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v308 < 0)
  {
    operator delete(v307);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v313 < 0)
  {
    operator delete(v312);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v318 < 0)
  {
    operator delete(v317);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v323 < 0)
  {
    operator delete(v322);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v328 < 0)
  {
    operator delete(v327);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v333 < 0)
  {
    operator delete(v332);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v338 < 0)
  {
    operator delete(v337);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v343 < 0)
  {
    operator delete(v342);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v348 < 0)
  {
    operator delete(v347);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v353 < 0)
  {
    operator delete(v352);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v358 < 0)
  {
    operator delete(v357);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v363 < 0)
  {
    operator delete(v362);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v368 < 0)
  {
    operator delete(v367);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v373 < 0)
  {
    operator delete(v372);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v378 < 0)
  {
    operator delete(v377);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v383 < 0)
  {
    operator delete(v382);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v388 < 0)
  {
    operator delete(v387);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v393 < 0)
  {
    operator delete(v392);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v398 < 0)
  {
    operator delete(v397);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v403 < 0)
  {
    operator delete(v402);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v408 < 0)
  {
    operator delete(v407);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v413 < 0)
  {
    operator delete(v412);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v418 < 0)
  {
    operator delete(v417);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v423 < 0)
  {
    operator delete(v422);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v428 < 0)
  {
    operator delete(v427);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v433 < 0)
  {
    operator delete(v432);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v438 < 0)
  {
    operator delete(v437);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v443 < 0)
  {
    operator delete(v442);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v448 < 0)
  {
    operator delete(v447);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v453 < 0)
  {
    operator delete(v452);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v458 < 0)
  {
    operator delete(v457);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v463 < 0)
  {
    operator delete(v462);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v468 < 0)
  {
    operator delete(v467);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v473 < 0)
  {
    operator delete(v472);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v478 < 0)
  {
    operator delete(v477);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v483 < 0)
  {
    operator delete(v482);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v488 < 0)
  {
    operator delete(v487);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v493 < 0)
  {
    operator delete(v492);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v498 < 0)
  {
    operator delete(v497);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v503 < 0)
  {
    operator delete(v502);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v508 < 0)
  {
    operator delete(v507);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v513 < 0)
  {
    operator delete(v512);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v518 < 0)
  {
    operator delete(v517);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v523 < 0)
  {
    operator delete(v522);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v528 < 0)
  {
    operator delete(v527);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v533 < 0)
  {
    operator delete(v532);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v538 < 0)
  {
    operator delete(v537);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v543 < 0)
  {
    operator delete(v542);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v548 < 0)
  {
    operator delete(v547);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v553 < 0)
  {
    operator delete(v552);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v558 < 0)
  {
    operator delete(v557);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v563 < 0)
  {
    operator delete(v562);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v568 < 0)
  {
    operator delete(v567);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v573 < 0)
  {
    operator delete(v572);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v578 < 0)
  {
    operator delete(v577);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v583 < 0)
  {
    operator delete(v582);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v588 < 0)
  {
    operator delete(v587);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v593 < 0)
  {
    operator delete(v592);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v598 < 0)
  {
    operator delete(v597);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v603 < 0)
  {
    operator delete(v602);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v608 < 0)
  {
    operator delete(v607);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v613 < 0)
  {
    operator delete(v612);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v618 < 0)
  {
    operator delete(v617);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v623 < 0)
  {
    operator delete(v622);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v628 < 0)
  {
    operator delete(v627);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v633 < 0)
  {
    operator delete(v632);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v638 < 0)
  {
    operator delete(v637);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v643 < 0)
  {
    operator delete(v642);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v648 < 0)
  {
    operator delete(v647);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v653 < 0)
  {
    operator delete(v652);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v658 < 0)
  {
    operator delete(v657);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v663 < 0)
  {
    operator delete(v662);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v668 < 0)
  {
    operator delete(v667);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v673 < 0)
  {
    operator delete(v672);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v678 < 0)
  {
    operator delete(v677);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v683 < 0)
  {
    operator delete(v682);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v688 < 0)
  {
    operator delete(v687);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v693 < 0)
  {
    operator delete(v692);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v698 < 0)
  {
    operator delete(v697);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v703 < 0)
  {
    operator delete(v702);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v708 < 0)
  {
    operator delete(v707);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v713 < 0)
  {
    operator delete(v712);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v718 < 0)
  {
    operator delete(v717);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v723 < 0)
  {
    operator delete(v722);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v728 < 0)
  {
    operator delete(v727);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v733 < 0)
  {
    operator delete(v732);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v738 < 0)
  {
    operator delete(v737);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v743 < 0)
  {
    operator delete(v742);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v748 < 0)
  {
    operator delete(v747);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v753 < 0)
  {
    operator delete(v752);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v758 < 0)
  {
    operator delete(v757);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v763 < 0)
  {
    operator delete(v762);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v768 < 0)
  {
    operator delete(v767);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v773 < 0)
  {
    operator delete(v772);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v778 < 0)
  {
    operator delete(v777);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v783 < 0)
  {
    operator delete(v782);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v788 < 0)
  {
    operator delete(v787);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v793 < 0)
  {
    operator delete(v792);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v798 < 0)
  {
    operator delete(v797);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v803 < 0)
  {
    operator delete(v802);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v808 < 0)
  {
    operator delete(v807);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v813 < 0)
  {
    operator delete(v812);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v818 < 0)
  {
    operator delete(v817);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v823 < 0)
  {
    operator delete(v822);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v828 < 0)
  {
    operator delete(v827);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v833 < 0)
  {
    operator delete(v832);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v838 < 0)
  {
    operator delete(v837);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v843 < 0)
  {
    operator delete(v842);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v848 < 0)
  {
    operator delete(v847);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v853 < 0)
  {
    operator delete(v852);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v858 < 0)
  {
    operator delete(v857);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v863 < 0)
  {
    operator delete(v862);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v868 < 0)
  {
    operator delete(v867);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v873 < 0)
  {
    operator delete(v872);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v878 < 0)
  {
    operator delete(v877);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v883 < 0)
  {
    operator delete(v882);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v888 < 0)
  {
    operator delete(v887);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v893 < 0)
  {
    operator delete(v892);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v898 < 0)
  {
    operator delete(v897);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v903 < 0)
  {
    operator delete(v902);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v908 < 0)
  {
    operator delete(v907);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v913 < 0)
  {
    operator delete(v912);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v918 < 0)
  {
    operator delete(v917);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v923 < 0)
  {
    operator delete(v922);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v928 < 0)
  {
    operator delete(v927);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v933 < 0)
  {
    operator delete(v932);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v938 < 0)
  {
    operator delete(v937);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v943 < 0)
  {
    operator delete(v942);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v948 < 0)
  {
    operator delete(v947);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v953 < 0)
  {
    operator delete(v952);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v958 < 0)
  {
    operator delete(v957);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v963 < 0)
  {
    operator delete(v962);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v968 < 0)
  {
    operator delete(v967);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v973 < 0)
  {
    operator delete(v972);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v978 < 0)
  {
    operator delete(v977);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v983 < 0)
  {
    operator delete(v982);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v988 < 0)
  {
    operator delete(v987);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v993 < 0)
  {
    operator delete(v992);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v998 < 0)
  {
    operator delete(v997);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1003 < 0)
  {
    operator delete(v1002);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1008 < 0)
  {
    operator delete(v1007);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1013 < 0)
  {
    operator delete(v1012);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1018 < 0)
  {
    operator delete(v1017);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1023 < 0)
  {
    operator delete(v1022);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1028 < 0)
  {
    operator delete(v1027);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1033 < 0)
  {
    operator delete(v1032);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1038 < 0)
  {
    operator delete(v1037);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1043 < 0)
  {
    operator delete(v1042);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1048 < 0)
  {
    operator delete(v1047);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1053 < 0)
  {
    operator delete(v1052);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1058 < 0)
  {
    operator delete(v1057);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1063 < 0)
  {
    operator delete(v1062);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1068 < 0)
  {
    operator delete(v1067);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1073 < 0)
  {
    operator delete(v1072);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1078 < 0)
  {
    operator delete(v1077);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1083 < 0)
  {
    operator delete(v1082);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1088 < 0)
  {
    operator delete(v1087);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1093 < 0)
  {
    operator delete(v1092);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1098 < 0)
  {
    operator delete(v1097);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1103 < 0)
  {
    operator delete(v1102);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1108 < 0)
  {
    operator delete(v1107);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1113 < 0)
  {
    operator delete(v1112);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1118 < 0)
  {
    operator delete(v1117);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1123 < 0)
  {
    operator delete(v1122);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1128 < 0)
  {
    operator delete(v1127);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1133 < 0)
  {
    operator delete(v1132);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1138 < 0)
  {
    operator delete(v1137);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1143 < 0)
  {
    operator delete(v1142);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1148 < 0)
  {
    operator delete(v1147);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1153 < 0)
  {
    operator delete(v1152);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1158 < 0)
  {
    operator delete(v1157);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1163 < 0)
  {
    operator delete(v1162);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1168 < 0)
  {
    operator delete(v1167);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1173 < 0)
  {
    operator delete(v1172);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1178 < 0)
  {
    operator delete(v1177);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1183 < 0)
  {
    operator delete(v1182);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1188 < 0)
  {
    operator delete(v1187);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1193 < 0)
  {
    operator delete(v1192);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1198 < 0)
  {
    operator delete(v1197);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1203 < 0)
  {
    operator delete(v1202);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1208 < 0)
  {
    operator delete(v1207);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1213 < 0)
  {
    operator delete(v1212);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1218 < 0)
  {
    operator delete(v1217);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1223 < 0)
  {
    operator delete(v1222);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1228 < 0)
  {
    operator delete(v1227);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1233 < 0)
  {
    operator delete(v1232);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1238 < 0)
  {
    operator delete(v1237);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1243 < 0)
  {
    operator delete(v1242);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }
}

void sub_1E80058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  v86 = -13944;
  v87 = v80;
  do
  {
    v87 = sub_195CE20(v87) - 56;
    v86 += 56;
  }

  while (v86);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(*(v81 + 32));
  }

  if (a54 < 0)
  {
    operator delete(*(v81 + 56));
  }

  if (a61 < 0)
  {
    operator delete(*(v81 + 88));
  }

  if (a67 < 0)
  {
    operator delete(*(v81 + 112));
  }

  if (a72 < 0)
  {
    operator delete(*(v81 + 144));
  }

  if (a73 < 0)
  {
    operator delete(*(v81 + 168));
  }

  if (a74 < 0)
  {
    operator delete(*(v81 + 200));
  }

  if (a75 < 0)
  {
    operator delete(*(v81 + 224));
  }

  if (a76 < 0)
  {
    operator delete(*(v81 + 256));
  }

  if (a77 < 0)
  {
    operator delete(*(v81 + 280));
  }

  if (a78 < 0)
  {
    operator delete(*(v81 + 312));
  }

  if (a79 < 0)
  {
    operator delete(*(v81 + 336));
  }

  if (a80 < 0)
  {
    operator delete(*(v81 + 368));
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(*(v81 + 392));
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(*(v81 + 424));
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(*(v81 + 448));
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(*(v81 + 480));
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(*(v81 + 504));
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(*(v81 + 536));
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(*(v81 + 560));
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(*(v81 + 592));
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(*(v81 + 616));
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(*(v81 + 648));
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(*(v81 + 672));
  }

  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(*(v81 + 704));
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(*(v81 + 728));
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(*(v81 + 760));
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(*(v81 + 784));
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(*(v81 + 816));
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(*(v81 + 840));
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(*(v81 + 872));
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(*(v81 + 896));
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(*(v81 + 928));
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(*(v81 + 952));
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(*(v81 + 984));
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(*(v81 + 1008));
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(*(v81 + 1040));
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(*(v81 + 1064));
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(*(v81 + 1096));
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(*(v81 + 1120));
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(*(v81 + 1152));
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(*(v81 + 1176));
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(*(v81 + 1208));
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(*(v81 + 1232));
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(*(v81 + 1264));
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(*(v81 + 1288));
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(*(v81 + 1320));
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(*(v81 + 1344));
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(*(v81 + 1376));
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(*(v81 + 1400));
  }

  if (SLOBYTE(STACK[0x627]) < 0)
  {
    operator delete(*(v81 + 1432));
  }

  if (SLOBYTE(STACK[0x63F]) < 0)
  {
    operator delete(*(v81 + 1456));
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(*(v81 + 1488));
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(*(v81 + 1512));
  }

  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(*(v81 + 1544));
  }

  if (SLOBYTE(STACK[0x6AF]) < 0)
  {
    operator delete(*(v81 + 1568));
  }

  if (SLOBYTE(STACK[0x6CF]) < 0)
  {
    operator delete(*(v81 + 1600));
  }

  if (SLOBYTE(STACK[0x6E7]) < 0)
  {
    operator delete(*(v81 + 1624));
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(*(v81 + 1656));
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(*(v81 + 1680));
  }

  if (SLOBYTE(STACK[0x73F]) < 0)
  {
    operator delete(*(v81 + 1712));
  }

  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(*(v81 + 1736));
  }

  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(*(v81 + 1768));
  }

  if (SLOBYTE(STACK[0x78F]) < 0)
  {
    operator delete(*(v81 + 1792));
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(*(v81 + 1824));
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(*(v81 + 1848));
  }

  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(*(v81 + 1880));
  }

  if (SLOBYTE(STACK[0x7FF]) < 0)
  {
    operator delete(*(v81 + 1904));
  }

  if (SLOBYTE(STACK[0x81F]) < 0)
  {
    operator delete(*(v81 + 1936));
  }

  if (SLOBYTE(STACK[0x837]) < 0)
  {
    operator delete(*(v81 + 1960));
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(*(v81 + 1992));
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(*(v81 + 2016));
  }

  if (SLOBYTE(STACK[0x88F]) < 0)
  {
    operator delete(*(v81 + 2048));
  }

  if (SLOBYTE(STACK[0x8A7]) < 0)
  {
    operator delete(*(v81 + 2072));
  }

  if (SLOBYTE(STACK[0x8C7]) < 0)
  {
    operator delete(*(v81 + 2104));
  }

  if (SLOBYTE(STACK[0x8DF]) < 0)
  {
    operator delete(*(v81 + 2128));
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(*(v81 + 2160));
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(*(v81 + 2184));
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(*(v81 + 2216));
  }

  if (SLOBYTE(STACK[0x94F]) < 0)
  {
    operator delete(*(v81 + 2240));
  }

  if (SLOBYTE(STACK[0x96F]) < 0)
  {
    operator delete(*(v81 + 2272));
  }

  if (SLOBYTE(STACK[0x987]) < 0)
  {
    operator delete(*(v81 + 2296));
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(*(v81 + 2328));
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(*(v81 + 2352));
  }

  if (SLOBYTE(STACK[0x9DF]) < 0)
  {
    operator delete(*(v81 + 2384));
  }

  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(*(v81 + 2408));
  }

  if (SLOBYTE(STACK[0xA17]) < 0)
  {
    operator delete(*(v81 + 2440));
  }

  if (SLOBYTE(STACK[0xA2F]) < 0)
  {
    operator delete(*(v81 + 2464));
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(*(v81 + 2496));
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(*(v81 + 2520));
  }

  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(*(v81 + 2552));
  }

  if (SLOBYTE(STACK[0xA9F]) < 0)
  {
    operator delete(*(v81 + 2576));
  }

  if (SLOBYTE(STACK[0xABF]) < 0)
  {
    operator delete(*(v81 + 2608));
  }

  if (SLOBYTE(STACK[0xAD7]) < 0)
  {
    operator delete(*(v81 + 2632));
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(*(v81 + 2664));
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(*(v81 + 2688));
  }

  if (SLOBYTE(STACK[0xB2F]) < 0)
  {
    operator delete(*(v81 + 2720));
  }

  if (SLOBYTE(STACK[0xB47]) < 0)
  {
    operator delete(*(v81 + 2744));
  }

  if (SLOBYTE(STACK[0xB67]) < 0)
  {
    operator delete(*(v81 + 2776));
  }

  if (SLOBYTE(STACK[0xB7F]) < 0)
  {
    operator delete(*(v81 + 2800));
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(*(v81 + 2832));
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(*(v81 + 2856));
  }

  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(*(v81 + 2888));
  }

  if (SLOBYTE(STACK[0xBEF]) < 0)
  {
    operator delete(*(v81 + 2912));
  }

  if (SLOBYTE(STACK[0xC0F]) < 0)
  {
    operator delete(*(v81 + 2944));
  }

  if (SLOBYTE(STACK[0xC27]) < 0)
  {
    operator delete(*(v81 + 2968));
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(*(v81 + 3000));
  }

  if (SLOBYTE(STACK[0xC5F]) < 0)
  {
    operator delete(*(v81 + 3024));
  }

  if (SLOBYTE(STACK[0xC7F]) < 0)
  {
    operator delete(*(v81 + 3056));
  }

  if (SLOBYTE(STACK[0xC97]) < 0)
  {
    operator delete(*(v81 + 3080));
  }

  if (SLOBYTE(STACK[0xCB7]) < 0)
  {
    operator delete(*(v81 + 3112));
  }

  if (SLOBYTE(STACK[0xCCF]) < 0)
  {
    operator delete(*(v81 + 3136));
  }

  if (SLOBYTE(STACK[0xCEF]) < 0)
  {
    operator delete(*(v81 + 3168));
  }

  if (SLOBYTE(STACK[0xD07]) < 0)
  {
    operator delete(*(v81 + 3192));
  }

  if (SLOBYTE(STACK[0xD27]) < 0)
  {
    operator delete(*(v81 + 3224));
  }

  if (SLOBYTE(STACK[0xD3F]) < 0)
  {
    operator delete(*(v81 + 3248));
  }

  if (SLOBYTE(STACK[0xD5F]) < 0)
  {
    operator delete(*(v81 + 3280));
  }

  if (SLOBYTE(STACK[0xD77]) < 0)
  {
    operator delete(*(v81 + 3304));
  }

  if (SLOBYTE(STACK[0xD97]) < 0)
  {
    operator delete(*(v81 + 3336));
  }

  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(*(v81 + 3360));
  }

  if (SLOBYTE(STACK[0xDCF]) < 0)
  {
    operator delete(*(v81 + 3392));
  }

  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(*(v81 + 3416));
  }

  if (SLOBYTE(STACK[0xE07]) < 0)
  {
    operator delete(*(v81 + 3448));
  }

  if (SLOBYTE(STACK[0xE1F]) < 0)
  {
    operator delete(*(v81 + 3472));
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(*(v81 + 3504));
  }

  if (SLOBYTE(STACK[0xE57]) < 0)
  {
    operator delete(*(v81 + 3528));
  }

  if (SLOBYTE(STACK[0xE77]) < 0)
  {
    operator delete(*(v81 + 3560));
  }

  if (SLOBYTE(STACK[0xE8F]) < 0)
  {
    operator delete(*(v81 + 3584));
  }

  if (SLOBYTE(STACK[0xEAF]) < 0)
  {
    operator delete(*(v81 + 3616));
  }

  if (SLOBYTE(STACK[0xEC7]) < 0)
  {
    operator delete(*(v81 + 3640));
  }

  if (SLOBYTE(STACK[0xEE7]) < 0)
  {
    operator delete(*(v81 + 3672));
  }

  if (SLOBYTE(STACK[0xEFF]) < 0)
  {
    operator delete(*(v81 + 3696));
  }

  if (SLOBYTE(STACK[0xF1F]) < 0)
  {
    operator delete(*(v81 + 3728));
  }

  if (SLOBYTE(STACK[0xF37]) < 0)
  {
    operator delete(*(v81 + 3752));
  }

  if (SLOBYTE(STACK[0xF57]) < 0)
  {
    operator delete(*(v81 + 3784));
  }

  if (SLOBYTE(STACK[0xF6F]) < 0)
  {
    operator delete(*(v81 + 3808));
  }

  if (*(v81 + 3863) < 0)
  {
    operator delete(*(v81 + 3840));
  }

  if (*(v81 + 3887) < 0)
  {
    operator delete(*(v81 + 3864));
  }

  if (*(v81 + 3919) < 0)
  {
    operator delete(*(v81 + 3896));
  }

  if (*(v81 + 3943) < 0)
  {
    operator delete(*(v81 + 3920));
  }

  if (*(v81 + 3975) < 0)
  {
    operator delete(*(v81 + 3952));
  }

  if (*(v81 + 3999) < 0)
  {
    operator delete(*(v81 + 3976));
  }

  if (*(v81 + 4031) < 0)
  {
    operator delete(*(v81 + 4008));
  }

  if (*(v81 + 4055) < 0)
  {
    operator delete(*(v81 + 4032));
  }

  if (*(v81 + 4087) < 0)
  {
    operator delete(*(v81 + 4064));
  }

  if (*(v84 + 23) < 0)
  {
    operator delete(*v84);
  }

  if (*(v84 + 55) < 0)
  {
    operator delete(*(v84 + 32));
  }

  if (*(v84 + 79) < 0)
  {
    operator delete(*(v84 + 56));
  }

  if (*(v84 + 111) < 0)
  {
    operator delete(*(v84 + 88));
  }

  if (*(v84 + 135) < 0)
  {
    operator delete(*(v84 + 112));
  }

  if (*(v84 + 167) < 0)
  {
    operator delete(*(v84 + 144));
  }

  if (*(v84 + 191) < 0)
  {
    operator delete(*(v84 + 168));
  }

  if (*(v84 + 223) < 0)
  {
    operator delete(*(v84 + 200));
  }

  if (*(v84 + 247) < 0)
  {
    operator delete(*(v84 + 224));
  }

  if (*(v84 + 279) < 0)
  {
    operator delete(*(v84 + 256));
  }

  if (*(v84 + 303) < 0)
  {
    operator delete(*(v84 + 280));
  }

  if (*(v84 + 335) < 0)
  {
    operator delete(*(v84 + 312));
  }

  if (*(v84 + 359) < 0)
  {
    operator delete(*(v84 + 336));
  }

  if (*(v84 + 391) < 0)
  {
    operator delete(*(v84 + 368));
  }

  if (*(v84 + 415) < 0)
  {
    operator delete(*(v84 + 392));
  }

  if (*(v84 + 447) < 0)
  {
    operator delete(*(v84 + 424));
  }

  if (*(v84 + 471) < 0)
  {
    operator delete(*(v84 + 448));
  }

  if (*(v84 + 503) < 0)
  {
    operator delete(*(v84 + 480));
  }

  if (*(v84 + 527) < 0)
  {
    operator delete(*(v84 + 504));
  }

  if (*(v84 + 559) < 0)
  {
    operator delete(*(v84 + 536));
  }

  if (*(v84 + 583) < 0)
  {
    operator delete(*(v84 + 560));
  }

  if (*(v84 + 615) < 0)
  {
    operator delete(*(v84 + 592));
  }

  if (*(v84 + 639) < 0)
  {
    operator delete(*(v84 + 616));
  }

  if (*(v84 + 671) < 0)
  {
    operator delete(*(v84 + 648));
  }

  if (*(v84 + 695) < 0)
  {
    operator delete(*(v84 + 672));
  }

  if (*(v84 + 727) < 0)
  {
    operator delete(*(v84 + 704));
  }

  if (*(v84 + 751) < 0)
  {
    operator delete(*(v84 + 728));
  }

  if (*(v84 + 783) < 0)
  {
    operator delete(*(v84 + 760));
  }

  if (*(v84 + 807) < 0)
  {
    operator delete(*(v84 + 784));
  }

  if (*(v84 + 839) < 0)
  {
    operator delete(*(v84 + 816));
  }

  if (*(v84 + 863) < 0)
  {
    operator delete(*(v84 + 840));
  }

  if (*(v84 + 895) < 0)
  {
    operator delete(*(v84 + 872));
  }

  if (*(v84 + 919) < 0)
  {
    operator delete(*(v84 + 896));
  }

  if (*(v84 + 951) < 0)
  {
    operator delete(*(v84 + 928));
  }

  if (*(v84 + 975) < 0)
  {
    operator delete(*(v84 + 952));
  }

  if (*(v84 + 1007) < 0)
  {
    operator delete(*(v84 + 984));
  }

  if (*(v84 + 1031) < 0)
  {
    operator delete(*(v84 + 1008));
  }

  if (*(v84 + 1063) < 0)
  {
    operator delete(*(v84 + 1040));
  }

  if (*(v84 + 1087) < 0)
  {
    operator delete(*(v84 + 1064));
  }

  if (*(v84 + 1119) < 0)
  {
    operator delete(*(v84 + 1096));
  }

  if (*(v84 + 1143) < 0)
  {
    operator delete(*(v84 + 1120));
  }

  if (*(v84 + 1175) < 0)
  {
    operator delete(*(v84 + 1152));
  }

  if (*(v84 + 1199) < 0)
  {
    operator delete(*(v84 + 1176));
  }

  if (*(v84 + 1231) < 0)
  {
    operator delete(*(v84 + 1208));
  }

  if (*(v84 + 1255) < 0)
  {
    operator delete(*(v84 + 1232));
  }

  if (*(v84 + 1287) < 0)
  {
    operator delete(*(v84 + 1264));
  }

  if (*(v84 + 1311) < 0)
  {
    operator delete(*(v84 + 1288));
  }

  if (*(v84 + 1343) < 0)
  {
    operator delete(*(v84 + 1320));
  }

  if (*(v84 + 1367) < 0)
  {
    operator delete(*(v84 + 1344));
  }

  if (*(v84 + 1399) < 0)
  {
    operator delete(*(v84 + 1376));
  }

  if (*(v84 + 1423) < 0)
  {
    operator delete(*(v84 + 1400));
  }

  if (*(v84 + 1455) < 0)
  {
    operator delete(*(v84 + 1432));
  }

  if (*(v84 + 1479) < 0)
  {
    operator delete(*(v84 + 1456));
  }

  if (*(v84 + 1511) < 0)
  {
    operator delete(*(v84 + 1488));
  }

  if (*(v84 + 1535) < 0)
  {
    operator delete(*(v84 + 1512));
  }

  if (*(v84 + 1567) < 0)
  {
    operator delete(*(v84 + 1544));
  }

  if (*(v84 + 1591) < 0)
  {
    operator delete(*(v84 + 1568));
  }

  if (*(v84 + 1623) < 0)
  {
    operator delete(*(v84 + 1600));
  }

  if (*(v84 + 1647) < 0)
  {
    operator delete(*(v84 + 1624));
  }

  if (*(v84 + 1679) < 0)
  {
    operator delete(*(v84 + 1656));
  }

  if (*(v84 + 1703) < 0)
  {
    operator delete(*(v84 + 1680));
  }

  if (*(v84 + 1735) < 0)
  {
    operator delete(*(v84 + 1712));
  }

  if (*(v84 + 1759) < 0)
  {
    operator delete(*(v84 + 1736));
  }

  if (*(v84 + 1791) < 0)
  {
    operator delete(*(v84 + 1768));
  }

  if (*(v84 + 1815) < 0)
  {
    operator delete(*(v84 + 1792));
  }

  if (*(v84 + 1847) < 0)
  {
    operator delete(*(v84 + 1824));
  }

  if (*(v84 + 1871) < 0)
  {
    operator delete(*(v84 + 1848));
  }

  if (*(v84 + 1903) < 0)
  {
    operator delete(*(v84 + 1880));
  }

  if (*(v84 + 1927) < 0)
  {
    operator delete(*(v84 + 1904));
  }

  if (*(v84 + 1959) < 0)
  {
    operator delete(*(v84 + 1936));
  }

  if (*(v84 + 1983) < 0)
  {
    operator delete(*(v84 + 1960));
  }

  if (*(v84 + 2015) < 0)
  {
    operator delete(*(v84 + 1992));
  }

  if (*(v84 + 2039) < 0)
  {
    operator delete(*(v84 + 2016));
  }

  if (*(v84 + 2071) < 0)
  {
    operator delete(*(v84 + 2048));
  }

  if (*(v84 + 2095) < 0)
  {
    operator delete(*(v84 + 2072));
  }

  if (*(v84 + 2127) < 0)
  {
    operator delete(*(v84 + 2104));
  }

  if (*(v84 + 2151) < 0)
  {
    operator delete(*(v84 + 2128));
  }

  if (*(v84 + 2183) < 0)
  {
    operator delete(*(v84 + 2160));
  }

  if (*(v84 + 2207) < 0)
  {
    operator delete(*(v84 + 2184));
  }

  if (*(v84 + 2239) < 0)
  {
    operator delete(*(v84 + 2216));
  }

  if (*(v84 + 2263) < 0)
  {
    operator delete(*(v84 + 2240));
  }

  if (*(v84 + 2295) < 0)
  {
    operator delete(*(v84 + 2272));
  }

  if (*(v84 + 2319) < 0)
  {
    operator delete(*(v84 + 2296));
  }

  if (*(v84 + 2351) < 0)
  {
    operator delete(*(v84 + 2328));
  }

  if (*(v84 + 2375) < 0)
  {
    operator delete(*(v84 + 2352));
  }

  if (*(v84 + 2407) < 0)
  {
    operator delete(*(v84 + 2384));
  }

  if (*(v84 + 2431) < 0)
  {
    operator delete(*(v84 + 2408));
  }

  if (*(v84 + 2463) < 0)
  {
    operator delete(*(v84 + 2440));
  }

  if (*(v84 + 2487) < 0)
  {
    operator delete(*(v84 + 2464));
  }

  if (*(v84 + 2519) < 0)
  {
    operator delete(*(v84 + 2496));
  }

  if (*(v84 + 2543) < 0)
  {
    operator delete(*(v84 + 2520));
  }

  if (*(v84 + 2575) < 0)
  {
    operator delete(*(v84 + 2552));
  }

  if (*(v84 + 2599) < 0)
  {
    operator delete(*(v84 + 2576));
  }

  if (*(v84 + 2631) < 0)
  {
    operator delete(*(v84 + 2608));
  }

  if (*(v84 + 2655) < 0)
  {
    operator delete(*(v84 + 2632));
  }

  if (*(v84 + 2687) < 0)
  {
    operator delete(*(v84 + 2664));
  }

  if (*(v84 + 2711) < 0)
  {
    operator delete(*(v84 + 2688));
  }

  if (*(v84 + 2743) < 0)
  {
    operator delete(*(v84 + 2720));
  }

  if (*(v84 + 2767) < 0)
  {
    operator delete(*(v84 + 2744));
  }

  if (*(v84 + 2799) < 0)
  {
    operator delete(*(v84 + 2776));
  }

  if (*(v84 + 2823) < 0)
  {
    operator delete(*(v84 + 2800));
  }

  if (*(v84 + 2855) < 0)
  {
    operator delete(*(v84 + 2832));
  }

  if (*(v84 + 2879) < 0)
  {
    operator delete(*(v84 + 2856));
  }

  if (*(v84 + 2911) < 0)
  {
    operator delete(*(v84 + 2888));
  }

  if (*(v84 + 2935) < 0)
  {
    operator delete(*(v84 + 2912));
  }

  if (*(v84 + 2967) < 0)
  {
    operator delete(*(v84 + 2944));
  }

  if (*(v84 + 2991) < 0)
  {
    operator delete(*(v84 + 2968));
  }

  if (*(v84 + 3023) < 0)
  {
    operator delete(*(v84 + 3000));
  }

  if (*(v84 + 3047) < 0)
  {
    operator delete(*(v84 + 3024));
  }

  if (*(v84 + 3079) < 0)
  {
    operator delete(*(v84 + 3056));
  }

  if (*(v84 + 3103) < 0)
  {
    operator delete(*(v84 + 3080));
  }

  if (*(v84 + 3135) < 0)
  {
    operator delete(*(v84 + 3112));
  }

  if (*(v84 + 3159) < 0)
  {
    operator delete(*(v84 + 3136));
  }

  if (*(v84 + 3191) < 0)
  {
    operator delete(*(v84 + 3168));
  }

  if (*(v84 + 3215) < 0)
  {
    operator delete(*(v84 + 3192));
  }

  if (*(v84 + 3247) < 0)
  {
    operator delete(*(v84 + 3224));
  }

  if (*(v84 + 3271) < 0)
  {
    operator delete(*(v84 + 3248));
  }

  if (*(v84 + 3303) < 0)
  {
    operator delete(*(v84 + 3280));
  }

  if (*(v84 + 3327) < 0)
  {
    operator delete(*(v84 + 3304));
  }

  if (*(v84 + 3359) < 0)
  {
    operator delete(*(v84 + 3336));
  }

  if (*(v84 + 3383) < 0)
  {
    operator delete(*(v84 + 3360));
  }

  if (*(v84 + 3415) < 0)
  {
    operator delete(*(v84 + 3392));
  }

  if (*(v84 + 3439) < 0)
  {
    operator delete(*(v84 + 3416));
  }

  if (*(v84 + 3471) < 0)
  {
    operator delete(*(v84 + 3448));
  }

  if (*(v84 + 3495) < 0)
  {
    operator delete(*(v84 + 3472));
  }

  if (*(v84 + 3527) < 0)
  {
    operator delete(*(v84 + 3504));
  }

  if (*(v84 + 3551) < 0)
  {
    operator delete(*(v84 + 3528));
  }

  if (*(v84 + 3583) < 0)
  {
    operator delete(*(v84 + 3560));
  }

  if (*(v84 + 3607) < 0)
  {
    operator delete(*(v84 + 3584));
  }

  if (*(v84 + 3639) < 0)
  {
    operator delete(*(v84 + 3616));
  }

  if (*(v84 + 3663) < 0)
  {
    operator delete(*(v84 + 3640));
  }

  if (*(v84 + 3695) < 0)
  {
    operator delete(*(v84 + 3672));
  }

  if (*(v84 + 3719) < 0)
  {
    operator delete(*(v84 + 3696));
  }

  if (*(v84 + 3751) < 0)
  {
    operator delete(*(v84 + 3728));
  }

  if (*(v84 + 3775) < 0)
  {
    operator delete(*(v84 + 3752));
  }

  if (*(v84 + 3807) < 0)
  {
    operator delete(*(v84 + 3784));
  }

  if (*(v84 + 3831) < 0)
  {
    operator delete(*(v84 + 3808));
  }

  if (*(v84 + 3863) < 0)
  {
    operator delete(*(v84 + 3840));
  }

  if (*(v84 + 3887) < 0)
  {
    operator delete(*(v84 + 3864));
  }

  if (*(v84 + 3919) < 0)
  {
    operator delete(*(v84 + 3896));
  }

  if (*(v84 + 3943) < 0)
  {
    operator delete(*(v84 + 3920));
  }

  if (*(v84 + 3975) < 0)
  {
    operator delete(*(v84 + 3952));
  }

  if (*(v84 + 3999) < 0)
  {
    operator delete(*(v84 + 3976));
  }

  if (*(v84 + 4031) < 0)
  {
    operator delete(*(v84 + 4008));
  }

  if (*(v84 + 4055) < 0)
  {
    operator delete(*(v84 + 4032));
  }

  if (*(v84 + 4087) < 0)
  {
    operator delete(*(v84 + 4064));
  }

  if (*(v83 + 23) < 0)
  {
    operator delete(*v83);
  }

  if (*(v83 + 55) < 0)
  {
    operator delete(*(v83 + 32));
  }

  if (*(v83 + 79) < 0)
  {
    operator delete(*(v83 + 56));
  }

  if (*(v83 + 111) < 0)
  {
    operator delete(*(v83 + 88));
  }

  if (*(v83 + 135) < 0)
  {
    operator delete(*(v83 + 112));
  }

  if (*(v83 + 167) < 0)
  {
    operator delete(*(v83 + 144));
  }

  if (*(v83 + 191) < 0)
  {
    operator delete(*(v83 + 168));
  }

  if (*(v83 + 223) < 0)
  {
    operator delete(*(v83 + 200));
  }

  if (*(v83 + 247) < 0)
  {
    operator delete(*(v83 + 224));
  }

  if (*(v83 + 279) < 0)
  {
    operator delete(*(v83 + 256));
  }

  if (*(v83 + 303) < 0)
  {
    operator delete(*(v83 + 280));
  }

  if (*(v83 + 335) < 0)
  {
    operator delete(*(v83 + 312));
  }

  if (*(v83 + 359) < 0)
  {
    operator delete(*(v83 + 336));
  }

  if (*(v83 + 391) < 0)
  {
    operator delete(*(v83 + 368));
  }

  if (*(v83 + 415) < 0)
  {
    operator delete(*(v83 + 392));
  }

  if (*(v83 + 447) < 0)
  {
    operator delete(*(v83 + 424));
  }

  if (*(v83 + 471) < 0)
  {
    operator delete(*(v83 + 448));
  }

  if (*(v83 + 503) < 0)
  {
    operator delete(*(v83 + 480));
  }

  if (*(v83 + 527) < 0)
  {
    operator delete(*(v83 + 504));
  }

  if (*(v83 + 559) < 0)
  {
    operator delete(*(v83 + 536));
  }

  if (*(v83 + 583) < 0)
  {
    operator delete(*(v83 + 560));
  }

  if (*(v83 + 615) < 0)
  {
    operator delete(*(v83 + 592));
  }

  if (*(v83 + 639) < 0)
  {
    operator delete(*(v83 + 616));
  }

  if (*(v83 + 671) < 0)
  {
    operator delete(*(v83 + 648));
  }

  if (*(v83 + 695) < 0)
  {
    operator delete(*(v83 + 672));
  }

  if (*(v83 + 727) < 0)
  {
    operator delete(*(v83 + 704));
  }

  if (*(v83 + 751) < 0)
  {
    operator delete(*(v83 + 728));
  }

  if (*(v83 + 783) < 0)
  {
    operator delete(*(v83 + 760));
  }

  if (*(v83 + 807) < 0)
  {
    operator delete(*(v83 + 784));
  }

  if (*(v83 + 839) < 0)
  {
    operator delete(*(v83 + 816));
  }

  if (*(v83 + 863) < 0)
  {
    operator delete(*(v83 + 840));
  }

  if (*(v83 + 895) < 0)
  {
    operator delete(*(v83 + 872));
  }

  if (*(v83 + 919) < 0)
  {
    operator delete(*(v83 + 896));
  }

  if (*(v83 + 951) < 0)
  {
    operator delete(*(v83 + 928));
  }

  if (*(v83 + 975) < 0)
  {
    operator delete(*(v83 + 952));
  }

  if (*(v83 + 1007) < 0)
  {
    operator delete(*(v83 + 984));
  }

  if (*(v83 + 1031) < 0)
  {
    operator delete(*(v83 + 1008));
  }

  if (*(v83 + 1063) < 0)
  {
    operator delete(*(v83 + 1040));
  }

  if (*(v83 + 1087) < 0)
  {
    operator delete(*(v83 + 1064));
  }

  if (*(v83 + 1119) < 0)
  {
    operator delete(*(v83 + 1096));
  }

  if (*(v83 + 1143) < 0)
  {
    operator delete(*(v83 + 1120));
  }

  if (*(v83 + 1175) < 0)
  {
    operator delete(*(v83 + 1152));
  }

  if (*(v83 + 1199) < 0)
  {
    operator delete(*(v83 + 1176));
  }

  if (*(v83 + 1231) < 0)
  {
    operator delete(*(v83 + 1208));
  }

  if (*(v83 + 1255) < 0)
  {
    operator delete(*(v83 + 1232));
  }

  if (*(v83 + 1287) < 0)
  {
    operator delete(*(v83 + 1264));
  }

  if (*(v83 + 1311) < 0)
  {
    operator delete(*(v83 + 1288));
  }

  if (*(v83 + 1343) < 0)
  {
    operator delete(*(v83 + 1320));
  }

  if (*(v83 + 1367) < 0)
  {
    operator delete(*(v83 + 1344));
  }

  if (*(v83 + 1399) < 0)
  {
    operator delete(*(v83 + 1376));
  }

  if (*(v83 + 1423) < 0)
  {
    operator delete(*(v83 + 1400));
  }

  if (*(v83 + 1455) < 0)
  {
    operator delete(*(v83 + 1432));
  }

  if (*(v83 + 1479) < 0)
  {
    operator delete(*(v83 + 1456));
  }

  if (*(v83 + 1511) < 0)
  {
    operator delete(*(v83 + 1488));
  }

  if (*(v83 + 1535) < 0)
  {
    operator delete(*(v83 + 1512));
  }

  if (*(v83 + 1567) < 0)
  {
    operator delete(*(v83 + 1544));
  }

  if (*(v83 + 1591) < 0)
  {
    operator delete(*(v83 + 1568));
  }

  if (*(v83 + 1623) < 0)
  {
    operator delete(*(v83 + 1600));
  }

  if (*(v83 + 1647) < 0)
  {
    operator delete(*(v83 + 1624));
  }

  if (*(v83 + 1679) < 0)
  {
    operator delete(*(v83 + 1656));
  }

  if (*(v83 + 1703) < 0)
  {
    operator delete(*(v83 + 1680));
  }

  if (*(v83 + 1735) < 0)
  {
    operator delete(*(v83 + 1712));
  }

  if (*(v83 + 1759) < 0)
  {
    operator delete(*(v83 + 1736));
  }

  if (*(v83 + 1791) < 0)
  {
    operator delete(*(v83 + 1768));
  }

  if (*(v83 + 1815) < 0)
  {
    operator delete(*(v83 + 1792));
  }

  if (*(v83 + 1847) < 0)
  {
    operator delete(*(v83 + 1824));
  }

  if (*(v83 + 1871) < 0)
  {
    operator delete(*(v83 + 1848));
  }

  if (*(v83 + 1903) < 0)
  {
    operator delete(*(v83 + 1880));
  }

  if (*(v83 + 1927) < 0)
  {
    operator delete(*(v83 + 1904));
  }

  if (*(v83 + 1959) < 0)
  {
    operator delete(*(v83 + 1936));
  }

  if (*(v83 + 1983) < 0)
  {
    operator delete(*(v83 + 1960));
  }

  if (*(v83 + 2015) < 0)
  {
    operator delete(*(v83 + 1992));
  }

  if (*(v83 + 2039) < 0)
  {
    operator delete(*(v83 + 2016));
  }

  if (*(v83 + 2071) < 0)
  {
    operator delete(*(v83 + 2048));
  }

  if (*(v83 + 2095) < 0)
  {
    operator delete(*(v83 + 2072));
  }

  if (*(v83 + 2127) < 0)
  {
    operator delete(*(v83 + 2104));
  }

  if (*(v83 + 2151) < 0)
  {
    operator delete(*(v83 + 2128));
  }

  if (*(v83 + 2183) < 0)
  {
    operator delete(*(v83 + 2160));
  }

  if (*(v83 + 2207) < 0)
  {
    operator delete(*(v83 + 2184));
  }

  if (*(v83 + 2239) < 0)
  {
    operator delete(*(v83 + 2216));
  }

  if (*(v83 + 2263) < 0)
  {
    operator delete(*(v83 + 2240));
  }

  if (*(v83 + 2295) < 0)
  {
    operator delete(*(v83 + 2272));
  }

  if (*(v83 + 2319) < 0)
  {
    operator delete(*(v83 + 2296));
  }

  if (*(v83 + 2351) < 0)
  {
    operator delete(*(v83 + 2328));
  }

  if (*(v83 + 2375) < 0)
  {
    operator delete(*(v83 + 2352));
  }

  if (*(v83 + 2407) < 0)
  {
    operator delete(*(v83 + 2384));
  }

  if (*(v83 + 2431) < 0)
  {
    operator delete(*(v83 + 2408));
  }

  if (*(v83 + 2463) < 0)
  {
    operator delete(*(v83 + 2440));
  }

  if (*(v83 + 2487) < 0)
  {
    operator delete(*(v83 + 2464));
  }

  if (*(v83 + 2519) < 0)
  {
    operator delete(*(v83 + 2496));
  }

  if (*(v83 + 2543) < 0)
  {
    operator delete(*(v83 + 2520));
  }

  if (*(v83 + 2575) < 0)
  {
    operator delete(*(v83 + 2552));
  }

  if (*(v83 + 2599) < 0)
  {
    operator delete(*(v83 + 2576));
  }

  if (*(v83 + 2631) < 0)
  {
    operator delete(*(v83 + 2608));
  }

  if (*(v83 + 2655) < 0)
  {
    operator delete(*(v83 + 2632));
  }

  if (*(v83 + 2687) < 0)
  {
    operator delete(*(v83 + 2664));
  }

  if (*(v83 + 2711) < 0)
  {
    operator delete(*(v83 + 2688));
  }

  if (*(v83 + 2743) < 0)
  {
    operator delete(*(v83 + 2720));
  }

  if (*(v83 + 2767) < 0)
  {
    operator delete(*(v83 + 2744));
  }

  if (*(v83 + 2799) < 0)
  {
    operator delete(*(v83 + 2776));
  }

  if (*(v83 + 2823) < 0)
  {
    operator delete(*(v83 + 2800));
  }

  if (*(v83 + 2855) < 0)
  {
    operator delete(*(v83 + 2832));
  }

  if (*(v83 + 2879) < 0)
  {
    operator delete(*(v83 + 2856));
  }

  if (*(v83 + 2911) < 0)
  {
    operator delete(*(v83 + 2888));
  }

  if (*(v83 + 2935) < 0)
  {
    operator delete(*(v83 + 2912));
  }

  if (*(v83 + 2967) < 0)
  {
    operator delete(*(v83 + 2944));
  }

  if (*(v83 + 2991) < 0)
  {
    operator delete(*(v83 + 2968));
  }

  if (*(v83 + 3023) < 0)
  {
    operator delete(*(v83 + 3000));
  }

  if (*(v83 + 3047) < 0)
  {
    operator delete(*(v83 + 3024));
  }

  if (*(v83 + 3079) < 0)
  {
    operator delete(*(v83 + 3056));
  }

  if (*(v83 + 3103) < 0)
  {
    operator delete(*(v83 + 3080));
  }

  if (*(v83 + 3135) < 0)
  {
    operator delete(*(v83 + 3112));
  }

  if (*(v83 + 3159) < 0)
  {
    operator delete(*(v83 + 3136));
  }

  if (*(v83 + 3191) < 0)
  {
    operator delete(*(v83 + 3168));
  }

  if (*(v83 + 3215) < 0)
  {
    operator delete(*(v83 + 3192));
  }

  if (*(v83 + 3247) < 0)
  {
    operator delete(*(v83 + 3224));
  }

  if (*(v83 + 3271) < 0)
  {
    operator delete(*(v83 + 3248));
  }

  if (*(v83 + 3303) < 0)
  {
    operator delete(*(v83 + 3280));
  }

  if (*(v83 + 3327) < 0)
  {
    operator delete(*(v83 + 3304));
  }

  if (*(v83 + 3359) < 0)
  {
    operator delete(*(v83 + 3336));
  }

  if (*(v83 + 3383) < 0)
  {
    operator delete(*(v83 + 3360));
  }

  if (*(v83 + 3415) < 0)
  {
    operator delete(*(v83 + 3392));
  }

  if (*(v83 + 3439) < 0)
  {
    operator delete(*(v83 + 3416));
  }

  if (*(v83 + 3471) < 0)
  {
    operator delete(*(v83 + 3448));
  }

  if (*(v83 + 3495) < 0)
  {
    operator delete(*(v83 + 3472));
  }

  if (*(v83 + 3527) < 0)
  {
    operator delete(*(v83 + 3504));
  }

  if (*(v83 + 3551) < 0)
  {
    operator delete(*(v83 + 3528));
  }

  if (*(v83 + 3583) < 0)
  {
    operator delete(*(v83 + 3560));
  }

  if (*(v83 + 3607) < 0)
  {
    operator delete(*(v83 + 3584));
  }

  if (*(v83 + 3639) < 0)
  {
    operator delete(*(v83 + 3616));
  }

  if (*(v83 + 3663) < 0)
  {
    operator delete(*(v83 + 3640));
  }

  if (*(v83 + 3695) < 0)
  {
    operator delete(*(v83 + 3672));
  }

  if (*(v83 + 3719) < 0)
  {
    operator delete(*(v83 + 3696));
  }

  if (*(v83 + 3751) < 0)
  {
    operator delete(*(v83 + 3728));
  }

  if (*(v83 + 3775) < 0)
  {
    operator delete(*(v83 + 3752));
  }

  if (*(v83 + 3807) < 0)
  {
    operator delete(*(v83 + 3784));
  }

  if (*(v83 + 3831) < 0)
  {
    operator delete(*(v83 + 3808));
  }

  if (*(v83 + 3863) < 0)
  {
    operator delete(*(v83 + 3840));
  }

  if (*(v83 + 3887) < 0)
  {
    operator delete(*(v83 + 3864));
  }

  if (*(v83 + 3919) < 0)
  {
    operator delete(*(v83 + 3896));
  }

  if (*(v83 + 3943) < 0)
  {
    operator delete(*(v83 + 3920));
  }

  if (*(v83 + 3975) < 0)
  {
    operator delete(*(v83 + 3952));
  }

  if (*(v83 + 3999) < 0)
  {
    operator delete(*(v83 + 3976));
  }

  if (*(v83 + 4031) < 0)
  {
    operator delete(*(v83 + 4008));
  }

  if (*(v83 + 4055) < 0)
  {
    operator delete(*(v83 + 4032));
  }

  if (*(v83 + 4087) < 0)
  {
    operator delete(*(v83 + 4064));
  }

  if (*(v82 + 23) < 0)
  {
    operator delete(*v82);
  }

  if (*(v82 + 55) < 0)
  {
    operator delete(*(v82 + 32));
  }

  if (*(v82 + 79) < 0)
  {
    operator delete(*(v82 + 56));
  }

  if (*(v82 + 111) < 0)
  {
    operator delete(*(v82 + 88));
  }

  if (*(v82 + 135) < 0)
  {
    operator delete(*(v82 + 112));
  }

  if (*(v82 + 167) < 0)
  {
    operator delete(*(v82 + 144));
  }

  if (*(v82 + 191) < 0)
  {
    operator delete(*(v82 + 168));
  }

  if (*(v82 + 223) < 0)
  {
    operator delete(*(v82 + 200));
  }

  if (*(v82 + 247) < 0)
  {
    operator delete(*(v82 + 224));
  }

  if (*(v82 + 279) < 0)
  {
    operator delete(*(v82 + 256));
  }

  if (*(v82 + 303) < 0)
  {
    operator delete(*(v82 + 280));
  }

  if (*(v82 + 335) < 0)
  {
    operator delete(*(v82 + 312));
  }

  if (*(v82 + 359) < 0)
  {
    operator delete(*(v82 + 336));
  }

  if (*(v82 + 391) < 0)
  {
    operator delete(*(v82 + 368));
  }

  if (*(v82 + 415) < 0)
  {
    operator delete(*(v82 + 392));
  }

  if (*(v82 + 447) < 0)
  {
    operator delete(*(v82 + 424));
  }

  if (*(v82 + 471) < 0)
  {
    operator delete(*(v82 + 448));
  }

  if (*(v82 + 503) < 0)
  {
    operator delete(*(v82 + 480));
  }

  if (*(v82 + 527) < 0)
  {
    operator delete(*(v82 + 504));
  }

  if (*(v82 + 559) < 0)
  {
    operator delete(*(v82 + 536));
  }

  if (*(v82 + 583) < 0)
  {
    operator delete(*(v82 + 560));
  }

  if (*(v82 + 615) < 0)
  {
    operator delete(*(v82 + 592));
  }

  if (*(v82 + 639) < 0)
  {
    operator delete(*(v82 + 616));
  }

  if (*(v82 + 671) < 0)
  {
    operator delete(*(v82 + 648));
  }

  if (*(v82 + 695) < 0)
  {
    operator delete(*(v82 + 672));
  }

  if (*(v82 + 727) < 0)
  {
    operator delete(*(v82 + 704));
  }

  if (*(v82 + 751) < 0)
  {
    operator delete(*(v82 + 728));
  }

  if (*(v82 + 783) < 0)
  {
    operator delete(*(v82 + 760));
  }

  if (*(v82 + 807) < 0)
  {
    operator delete(*(v82 + 784));
  }

  if (*(v82 + 839) < 0)
  {
    operator delete(*(v82 + 816));
  }

  if (*(v82 + 863) < 0)
  {
    operator delete(*(v82 + 840));
  }

  if (*(v82 + 895) < 0)
  {
    operator delete(*(v82 + 872));
  }

  if (*(v82 + 919) < 0)
  {
    operator delete(*(v82 + 896));
  }

  if (*(v82 + 951) < 0)
  {
    operator delete(*(v82 + 928));
  }

  if (*(v82 + 975) < 0)
  {
    operator delete(*(v82 + 952));
  }

  if (*(v82 + 1007) < 0)
  {
    operator delete(*(v82 + 984));
  }

  if (*(v82 + 1031) < 0)
  {
    operator delete(*(v82 + 1008));
  }

  if (*(v82 + 1063) < 0)
  {
    operator delete(*(v82 + 1040));
  }

  if (*(v82 + 1087) < 0)
  {
    operator delete(*(v82 + 1064));
  }

  if (*(v82 + 1119) < 0)
  {
    operator delete(*(v82 + 1096));
  }

  if (*(v82 + 1143) < 0)
  {
    operator delete(*(v82 + 1120));
  }

  if (*(v82 + 1175) < 0)
  {
    operator delete(*(v82 + 1152));
  }

  if (*(v82 + 1199) < 0)
  {
    operator delete(*(v82 + 1176));
  }

  if (*(v82 + 1231) < 0)
  {
    operator delete(*(v82 + 1208));
  }

  if (*(v82 + 1255) < 0)
  {
    operator delete(*(v82 + 1232));
  }

  if (*(v82 + 1287) < 0)
  {
    operator delete(*(v82 + 1264));
  }

  if (*(v82 + 1311) < 0)
  {
    operator delete(*(v82 + 1288));
  }

  if (*(v82 + 1343) < 0)
  {
    operator delete(*(v82 + 1320));
  }

  if (*(v82 + 1367) < 0)
  {
    operator delete(*(v82 + 1344));
  }

  if (*(v82 + 1399) < 0)
  {
    operator delete(*(v82 + 1376));
  }

  if (*(v82 + 1423) < 0)
  {
    operator delete(*(v82 + 1400));
  }

  if (*(v82 + 1455) < 0)
  {
    operator delete(*(v82 + 1432));
  }

  if (*(v82 + 1479) < 0)
  {
    operator delete(*(v82 + 1456));
  }

  if (*(v82 + 1511) < 0)
  {
    operator delete(*(v82 + 1488));
  }

  if (*(v82 + 1535) < 0)
  {
    operator delete(*(v82 + 1512));
  }

  if (*(v82 + 1567) < 0)
  {
    operator delete(*(v82 + 1544));
  }

  _Unwind_Resume(a1);
}

void sub_1E83B2C()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27F0058 = 0;
  unk_27F0060 = 0;
  qword_27F0068 = 0;
  sub_68678C(&qword_27F0058, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27F0070 = 0;
  *algn_27F0078 = 0;
  qword_27F0080 = 0;
  sub_68678C(&qword_27F0070, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27F0088 = 0;
  unk_27F0090 = 0;
  qword_27F0098 = 0;
  sub_68678C(&qword_27F0088, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1E79070();
}

void sub_1E83C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E83C78(uint64_t a1, uint64_t a2)
{
  if (sub_1DED8A4(a2) && *(a1 + 56) >= 1)
  {
    v3 = *(*(a1 + 64) + 8);
    *(v3 + 40) |= 0x4000000u;
    v4 = *(v3 + 272);
    if (!v4)
    {
      v5 = *(v3 + 8);
      v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v5)
      {
        v6 = *v6;
      }

      v4 = sub_1861658(v6);
      *(v3 + 272) = v4;
    }

    v7 = *(v4 + 88);
    if (v7 && (v8 = *(v4 + 80), v8 < *v7))
    {
      *(v4 + 80) = v8 + 1;
      v9 = *&v7[2 * v8 + 2];
    }

    else
    {
      v10 = sub_18615D8(*(v4 + 72));
      v9 = sub_19593CC(v4 + 72, v10);
    }

    *(v9 + 16) |= 2u;
    v11 = *(v9 + 32);
    if (!v11)
    {
      v12 = *(v9 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_1861554(v13);
      *(v9 + 32) = v11;
    }

    *(v11 + 16) |= 0x40u;
    *(v11 + 72) = 1;
    *(v9 + 16) |= 4u;
    *(v9 + 40) = 2;
  }
}

void sub_1E83D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_73EEC(a3);
  sub_1E04C18(v7, &v33);
  v8 = sub_1DED8CC(a3);
  sub_1E04AEC(v8, &v31);
  if (v32[1])
  {
    sub_1964A00(&v33, v31, v32);
  }

  if (*(sub_73EEC(a3) + 16))
  {
    v9 = *(sub_73EEC(a3) + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      sub_325C(&v29, *v9, *(v9 + 8));
    }

    else
    {
      v10 = *v9;
      v30 = *(v9 + 16);
      v29 = v10;
    }
  }

  else
  {
    sub_3608D0(&v29, "US");
  }

  sub_1E054A8(&v33, (a4 + 1216), &v28);
  v11 = sub_73EEC(a3);
  sub_1E05030(v11, &v27);
  v12 = sub_73EEC(a3);
  sub_1E053A0(v12, &v26);
  sub_1D130C4(&v27, &v26);
  sub_3608D0(&__p, "places_category_attribute_0_0_0");
  v13 = sub_19D52D4((a4 + 1216), &__p);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v25[1] = 0;
  v25[0] = 0;
  v24 = v25;
  if (v13 && ((*(*v13[5] + 8))(v13[5]) & 1) == 0)
  {
    v14 = v13[5];
    {
      v15 = v13[6];
      if (v15)
      {
        atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
      }
    }

    sub_1AC3B00(&v27, &__p);
  }

  v21[1] = 0;
  v21[0] = 0;
  v20 = v21;
  sub_1963D78(v19, (a4 + 8));
  v16 = sub_57478(a3);
  v17 = sub_57478(a3);
  v18 = sub_1DED8CC(a3);
  sub_19C478C(&__p, &v28, &v24, &v20, (a4 + 1296), a1, v19, v16, (v17 + 40), v18);
  sub_1965ECC(v19);
  sub_19C5870(&v20, v21[0]);
  sub_206EE48();
}

void sub_1E844E4(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_1220A18(v1);
  }

  sub_19C57C4(&STACK[0xBE8], STACK[0xBF0]);
  sub_7E724(&STACK[0xC00], STACK[0xC08]);
  sub_7E724(&STACK[0xC18], STACK[0xC20]);
  sub_19C5770(&STACK[0xC30]);
  if (*(v2 - 153) < 0)
  {
    operator delete(*(v2 - 176));
  }

  sub_7E724(v2 - 144, *(v2 - 136));
  sub_7E724(v2 - 120, *(v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1E8460C(uint64_t a1)
{
  if (sub_19723E0(a1))
  {

    sub_206F790();
  }

  sub_206F4CC();
}

void sub_1E8466C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*sub_1DED05C(a1) == 3 && *(a2 + 56) >= 1)
  {
    v5 = *(*(a2 + 64) + 8);
    *(v5 + 40) |= 1u;
    v6 = *(v5 + 64);
    if (!v6)
    {
      v7 = *(v5 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      v6 = sub_185D55C(v8);
      *(v5 + 64) = v6;
    }

    sub_3608D0(&v28, "Approximate Location");
    sub_3608D0(&__p, "localization_config");
    v9 = sub_19D52D4((a3 + 1216), &__p.__r_.__value_.__l.__data_);
    v10 = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v10)
      {
        goto LABEL_39;
      }
    }

    else if (!v9)
    {
LABEL_39:
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      return;
    }

    v12 = v10[5];
    v11 = v10 + 5;
    if ((*(*v12 + 8))(v12))
    {
      goto LABEL_39;
    }

    sub_17957B0(v6);
    sub_3608D0(v25, "ApproximateLocation");
    sub_3608D0(v23, "ApproximateLocation");
    sub_2032A7C(v11, a3, v25, v23, &__p);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    sub_3608D0(v23, "ApproximateLocation");
    sub_2032BB4(v11, a3, v23, v25);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__p.__r_.__value_.__l.__size_)
      {
LABEL_23:
        *(v6 + 40) |= 0x40u;
        v13 = *(v6 + 344);
        if (!v13)
        {
          v14 = *(v6 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_16F5A54(v15);
          *(v6 + 344) = v13;
        }

        *(v13 + 4) |= 2u;
        v16 = v13[1];
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        sub_194EA1C(v13 + 4, &v28, v17);
        *(v6 + 40) |= 0x40u;
        v18 = *(v6 + 344);
        if (!v18)
        {
          v19 = *(v6 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_16F5A54(v20);
          *(v6 + 344) = v18;
        }

        *(v18 + 4) |= 1u;
        v21 = v18[1];
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        sub_194EA1C(v18 + 3, v25, v22);
        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_39;
      }
    }

    else if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_23;
    }

    std::string::operator=(&v28, &__p);
    goto LABEL_23;
  }
}

void sub_1E84910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1E849AC()
{
  v0 = __chkstk_darwin();
  v52 = v1;
  v3 = v2;
  v4 = v0;
  v5 = sub_73EBC(v2);
  sub_1E04EA8(v5, &v169);
  sub_73EBC(v3);
  sub_1E054A8(&v169, (v52 + 1216), &v168);
  v166[1] = 0;
  v166[0] = 0;
  v165 = v166;
  v164[1] = 0;
  v164[0] = 0;
  v163 = v164;
  v88[0] = xmmword_2368410;
  v88[1] = xmmword_2368420;
  v88[2] = xmmword_2368430;
  v89 = 16843009;
  v90 = 1;
  v91 = 0;
  v92 = 0;
  v93 = xmmword_2368440;
  v94 = 0x4170000042480000;
  v95 = 8;
  v96 = 1;
  v97 = 0x3FD999999999999ALL;
  v98 = 0x10000003CLL;
  v99 = xmmword_2368450;
  v100 = xmmword_2368460;
  v101 = xmmword_2368470;
  v102 = xmmword_2368480;
  v103 = 16777473;
  sub_3608D0(v211, "en");
  sub_3608D0(&v213, "es");
  sub_3608D0(v215, "de");
  sub_3608D0(v218, "fr");
  sub_3608D0(v220, "it");
  sub_3608D0(&v221, "no");
  sub_3608D0(v223, "nb");
  sub_3608D0(v226, "fi");
  sub_3608D0(v228, "pt");
  sub_3608D0(&v229, "nl");
  sub_3608D0(v231, "sv");
  sub_3608D0(v234, "is");
  sub_3608D0(v236, "da");
  sub_3608D0(&v237, "zh");
  sub_3608D0(v239, "ja");
  sub_3608D0(v242, "vi");
  sub_3608D0(v244, "th");
  sub_3608D0(&v245, "ms");
  sub_3608D0(v247, "tr");
  sub_3608D0(v250, "fil");
  sub_3608D0(v252, "bg");
  sub_3608D0(&v253, "ru");
  sub_3608D0(v255, "ro");
  sub_3608D0(v258, "pl");
  sub_3608D0(v260, "uk");
  sub_3608D0(&v261, "cs");
  sub_3608D0(v263, "el");
  sub_3608D0(v266, "cy");
  sub_3608D0(v268, "hu");
  sub_3608D0(&v269, "sk");
  sub_3608D0(v271, "hr");
  sub_3608D0(v274, "et");
  sub_3608D0(v276, "lt");
  sub_3608D0(&v277, "lv");
  sub_3608D0(v279, "mk");
  sub_3608D0(v282, "ca");
  sub_3608D0(v284, "bs");
  sub_3608D0(&v285, "sr");
  sub_3608D0(v287, "sq");
  sub_3608D0(v290, "hi");
  sub_3608D0(v292, "id");
  sub_3608D0(&v293, "jv");
  sub_3608D0(v295, "fj");
  sub_3608D0(v298, "my");
  sub_3608D0(v300, "km");
  sub_3608D0(&v301, "khm");
  sub_3608D0(v303, "bn");
  sub_3608D0(v306, "ben");
  sub_3608D0(v308, "dz");
  sub_3608D0(&v309, "ne");
  sub_3608D0(v311, "ur");
  sub_3608D0(v314, "kk");
  sub_3608D0(v316, "tk");
  sub_3608D0(&v317, "uz");
  memset(v104, 0, sizeof(v104));
  sub_68678C(v104, v211, v319, 0x36uLL);
  v6 = 162;
  while (1)
  {
    if (SHIBYTE(v211[v6 - 1]) < 0)
    {
      operator delete(*&v210[v6 * 8 + 24]);
    }

    v6 -= 3;
    if (!(v6 * 8))
    {
      sub_3608D0(v211, "IL");
      v51 = v4;
      sub_3608D0(&v213, "TN");
      sub_3608D0(v215, "MA");
      sub_3608D0(v218, "IQ");
      sub_3608D0(v220, "IR");
      sub_3608D0(&v221, "JO");
      sub_3608D0(v223, "LB");
      sub_3608D0(v226, "LY");
      sub_3608D0(v228, "EG");
      sub_3608D0(&v229, "OM");
      sub_3608D0(v231, "YE");
      sub_3608D0(v234, "SA");
      sub_3608D0(v236, "SY");
      sub_3608D0(&v237, "BH");
      sub_3608D0(v239, "QA");
      sub_3608D0(v242, "AE");
      sub_3608D0(v244, "KW");
      sub_3608D0(&v245, "EH");
      sub_3608D0(v247, "NE");
      sub_3608D0(v250, "ML");
      sub_3608D0(v252, "TD");
      sub_3608D0(&v253, "MR");
      sub_3608D0(v255, "SD");
      memset(v105, 0, sizeof(v105));
      sub_68678C(v105, v211, v258, 0x17uLL);
      v7 = 69;
      while (1)
      {
        if (SHIBYTE(v211[v7 - 1]) < 0)
        {
          operator delete(*&v210[v7 * 8 + 24]);
        }

        v7 -= 3;
        if (!(v7 * 8))
        {
          sub_3608D0(v211, "6_7_4");
          sub_3608D0(&v213, "7_7_4");
          sub_3608D0(v215, "8_7_4");
          sub_3608D0(v218, "9_7_4");
          sub_3608D0(v220, "10_7_4");
          sub_3608D0(&v221, "8_8_4");
          sub_3608D0(v223, "9_8_4");
          sub_3608D0(v226, "10_8_4");
          sub_3608D0(v228, "8_9_4");
          sub_3608D0(&v229, "9_9_4");
          sub_3608D0(v231, "10_9_4");
          memset(v106, 0, sizeof(v106));
          sub_68678C(v106, v211, v234, 0xBuLL);
          v8 = 33;
          while (1)
          {
            if (SHIBYTE(v211[v8 - 1]) < 0)
            {
              operator delete(*&v210[v8 * 8 + 24]);
            }

            v8 -= 3;
            if (!(v8 * 8))
            {
              v107 = 15;
              v108 = 1;
              v109 = 0x400000010;
              v110 = 0u;
              v111 = 0u;
              v112 = 0u;
              v113 = 0x4008000000000000;
              v114 = 0x100000014;
              v115 = 10;
              v116 = 257;
              v117 = xmmword_2368490;
              v118 = xmmword_23684A0;
              sub_3608D0(v211, "browse_subcategory_gasstations");
              sub_3608D0(&v213, "browse_subcategory_parking");
              sub_3608D0(v215, "browse_subcategory_restaurants");
              sub_3608D0(v218, "browse_subcategory_coffee_shops");
              sub_3608D0(v220, "browse_subcategory_groceries");
              memset(v119, 0, sizeof(v119));
              sub_68678C(v119, v211, &v221, 5uLL);
              v9 = 0;
              while (1)
              {
                if (v220[v9 + 23] < 0)
                {
                  operator delete(*&v220[v9]);
                }

                v9 -= 24;
                if (v9 == -120)
                {
                  sub_3608D0(v211, "browse_subcategory_gasstations");
                  sub_3608D0(&v213, "browse_subcategory_parking");
                  sub_3608D0(v215, "browse_subcategory_restaurants");
                  sub_3608D0(v218, "browse_subcategory_coffee_shops");
                  sub_3608D0(v220, "browse_subcategory_groceries");
                  memset(v120, 0, sizeof(v120));
                  sub_68678C(v120, v211, &v221, 5uLL);
                  v10 = 0;
                  while (1)
                  {
                    if (v220[v10 + 23] < 0)
                    {
                      operator delete(*&v220[v10]);
                    }

                    v10 -= 24;
                    if (v10 == -120)
                    {
                      sub_3608D0(v211, "browse_subcategory_evcharger_carplay");
                      sub_3608D0(&v213, "browse_subcategory_parking");
                      sub_3608D0(v215, "browse_subcategory_restaurants");
                      sub_3608D0(v218, "browse_subcategory_coffee_shops");
                      sub_3608D0(v220, "browse_subcategory_groceries");
                      memset(v121, 0, sizeof(v121));
                      sub_68678C(v121, v211, &v221, 5uLL);
                      v11 = 0;
                      while (1)
                      {
                        if (v220[v11 + 23] < 0)
                        {
                          operator delete(*&v220[v11]);
                        }

                        v11 -= 24;
                        if (v11 == -120)
                        {
                          sub_3608D0(v211, "browse_subcategory_gasstations");
                          sub_3608D0(&v213, "browse_subcategory_parking");
                          sub_3608D0(v215, "browse_subcategory_restaurants");
                          sub_3608D0(v218, "browse_subcategory_coffee_shops");
                          sub_3608D0(v220, "browse_subcategory_groceries");
                          memset(v122, 0, sizeof(v122));
                          sub_68678C(v122, v211, &v221, 5uLL);
                          v12 = 0;
                          while (1)
                          {
                            if (v220[v12 + 23] < 0)
                            {
                              operator delete(*&v220[v12]);
                            }

                            v12 -= 24;
                            if (v12 == -120)
                            {
                              sub_3608D0(v211, "active.hiking");
                              sub_3608D0(&v213, "active.parks.trailhead");
                              sub_3608D0(v215, "hotelstravel.campgrounds");
                              sub_3608D0(v218, "hotelstravel.visitorcenters");
                              sub_3608D0(v220, "travel_and_leisure.hiking_trail");
                              sub_3608D0(&v221, "travel_and_leisure.hiking_trail.trailhead");
                              sub_3608D0(v223, "travel_and_leisure.campground");
                              sub_3608D0(v226, "travel_and_leisure.visitor_center");
                              sub_1A5C918(&v123, v211, 8);
                              v13 = 0;
                              while (1)
                              {
                                if (v228[v13 - 1] < 0)
                                {
                                  operator delete(*&v226[v13]);
                                }

                                v13 -= 24;
                                if (v13 == -192)
                                {
                                  sub_3608D0(v211, "active");
                                  sub_3608D0(&v213, "emergencyrooms");
                                  sub_3608D0(v215, "hospitals");
                                  sub_3608D0(v218, "urgent_care");
                                  sub_3608D0(v220, "airports");
                                  sub_3608D0(&v221, "skiresorts");
                                  sub_3608D0(v223, "transport");
                                  sub_3608D0(v226, "touristattraction");
                                  sub_3608D0(v228, "physicalfeature");
                                  sub_3608D0(&v229, "travel_and_leisure");
                                  sub_3608D0(v231, "emergency_room");
                                  sub_3608D0(v234, "hospital");
                                  sub_3608D0(v236, "urgent_care_center");
                                  sub_3608D0(&v237, "airport");
                                  sub_3608D0(v239, "ski_resort");
                                  sub_3608D0(v242, "transportation_service");
                                  sub_3608D0(v244, "tourist_attraction");
                                  sub_3608D0(&v245, "physical_feature");
                                  sub_1A5C918(&v124, v211, 18);
                                  v14 = 54;
                                  while (1)
                                  {
                                    if (SHIBYTE(v211[v14 - 1]) < 0)
                                    {
                                      operator delete(*&v210[v14 * 8 + 24]);
                                    }

                                    v14 -= 3;
                                    if (!(v14 * 8))
                                    {
                                      sub_3608D0(v211, "kids_activities");
                                      sub_3608D0(&v213, "parks");
                                      sub_3608D0(v215, "playgrounds");
                                      sub_3608D0(v218, "sportscomplex");
                                      sub_3608D0(v220, "statue");
                                      sub_3608D0(&v221, "zoos");
                                      sub_3608D0(v223, "kids_fun_center");
                                      sub_3608D0(v226, "park");
                                      sub_3608D0(v228, "playground");
                                      sub_3608D0(&v229, "sports_complex");
                                      sub_3608D0(v231, "zoo");
                                      sub_1A5C918(&v125, v211, 11);
                                      v15 = 33;
                                      while (1)
                                      {
                                        if (SHIBYTE(v211[v15 - 1]) < 0)
                                        {
                                          operator delete(*&v210[v15 * 8 + 24]);
                                        }

                                        v15 -= 3;
                                        if (!(v15 * 8))
                                        {
                                          sub_3608D0(v211, "food");
                                          sub_3608D0(&v213, "restaurants");
                                          sub_3608D0(v215, "financialservices");
                                          sub_3608D0(v218, "localservices");
                                          sub_3608D0(v220, "homedecor");
                                          sub_3608D0(&v221, "beautysvc");
                                          sub_3608D0(v223, "officebuilding");
                                          sub_3608D0(v226, "supermarket");
                                          sub_3608D0(v228, "flowers");
                                          sub_3608D0(&v229, "homeandgarden");
                                          sub_3608D0(v231, "servicestations");
                                          sub_3608D0(v234, "parks");
                                          sub_3608D0(v236, "playgrounds");
                                          sub_3608D0(&v237, "sportscomplex");
                                          sub_3608D0(v239, "trainstations");
                                          sub_3608D0(v242, "food_mart");
                                          sub_3608D0(v244, "restaurant");
                                          sub_3608D0(&v245, "financial_service");
                                          sub_3608D0(v247, "local_service");
                                          sub_3608D0(v250, "home_decor_store");
                                          sub_3608D0(v252, "beauty_service");
                                          sub_3608D0(&v253, "office_building");
                                          sub_3608D0(v255, "floral_shop");
                                          sub_3608D0(v258, "home_goods_store");
                                          sub_3608D0(v260, "service_station");
                                          sub_3608D0(&v261, "park");
                                          sub_3608D0(v263, "playground");
                                          sub_3608D0(v266, "sports_complex");
                                          sub_3608D0(v268, "train_station");
                                          sub_1A5C918(v126, v211, 29);
                                          v16 = 87;
                                          while (1)
                                          {
                                            if (SHIBYTE(v211[v16 - 1]) < 0)
                                            {
                                              operator delete(*&v210[v16 * 8 + 24]);
                                            }

                                            v16 -= 3;
                                            if (!(v16 * 8))
                                            {
                                              v126[24] = 1;
                                              v127 = xmmword_23684B0;
                                              v128 = xmmword_23684C0;
                                              v129 = 30;
                                              v130 = 0x4000000000000000;
                                              v131 = xmmword_23684D0;
                                              v132 = 2;
                                              v133 = 257;
                                              sub_3608D0(v190, "ranker_pw_en_model");
                                              sub_3608D0(v351, "CA");
                                              sub_3608D0(v352, "GB");
                                              sub_3608D0(v353, "AU");
                                              sub_3608D0(v354, "NZ");
                                              sub_3608D0(v355, "IE");
                                              sub_3608D0(v356, "ZA");
                                              memset(v188, 0, sizeof(v188));
                                              sub_68678C(v188, v351, &v357, 6uLL);
                                              sub_1A5C99C(&v357, v190, v188);
                                              sub_3608D0(v181, "ranker_pw_us_model");
                                              sub_3608D0(v174, "US");
                                              v178 = 0;
                                              v177 = 0;
                                              v179 = 0;
                                              sub_68678C(&v177, v174, v176, 1uLL);
                                              sub_1A5C99C(v360, v181, &v177);
                                              sub_3608D0(&v171, "ranker_pw_eu_model");
                                              sub_3608D0(v193, "DE");
                                              sub_3608D0(v195, "FR");
                                              sub_3608D0(v196, "BE");
                                              sub_3608D0(v197, "CH");
                                              sub_3608D0(v198, "AT");
                                              sub_3608D0(v199, "ES");
                                              sub_3608D0(v200, "IT");
                                              sub_3608D0(v201, "NL");
                                              sub_3608D0(v202, "PT");
                                              sub_3608D0(v203, "NO");
                                              sub_3608D0(v204, "DK");
                                              sub_3608D0(v205, "FI");
                                              sub_3608D0(v206, "SE");
                                              v349 = 0uLL;
                                              v350 = 0;
                                              sub_68678C(&v349, v193, &v207, 0xDuLL);
                                              sub_1A5C99C(&v362, &v171, &v349);
                                              sub_3608D0(&v86, "ranker_pw_cn_model");
                                              sub_3608D0(&v347, "CN");
                                              v84 = 0uLL;
                                              v85 = 0;
                                              sub_68678C(&v84, &v347, &v349, 1uLL);
                                              sub_1A5C99C(&v363, &v86, &v84);
                                              sub_3608D0(&v82, "ranker_pw_cjk_model");
                                              sub_3608D0(v338, "JP");
                                              sub_3608D0(v339, "MO");
                                              sub_3608D0(v340, "PH");
                                              sub_3608D0(v341, "MY");
                                              sub_3608D0(v342, "TW");
                                              sub_3608D0(v343, "HK");
                                              v345 = 0;
                                              v344 = 0;
                                              v346 = 0;
                                              sub_68678C(&v344, v338, &v344, 6uLL);
                                              sub_1A5C99C(&v364, &v82, &v344);
                                              sub_3608D0(__p, "ranker_pw_row_model");
                                              sub_3608D0(v211, "AR");
                                              sub_3608D0(&v213, "BR");
                                              sub_3608D0(v215, "MX");
                                              sub_3608D0(v218, "CL");
                                              sub_3608D0(v220, "CZ");
                                              sub_3608D0(&v221, "GR");
                                              sub_3608D0(v223, "HR");
                                              sub_3608D0(v226, "HU");
                                              sub_3608D0(v228, "ID");
                                              sub_3608D0(&v229, "IN");
                                              sub_3608D0(v231, "PL");
                                              sub_3608D0(v234, "RO");
                                              sub_3608D0(v236, "SG");
                                              sub_3608D0(&v237, "SK");
                                              sub_3608D0(v239, "TH");
                                              sub_3608D0(v242, "TR");
                                              sub_3608D0(v244, "VN");
                                              sub_3608D0(&v245, "AE");
                                              sub_3608D0(v247, "EG");
                                              sub_3608D0(v250, "IL");
                                              sub_3608D0(v252, "NG");
                                              sub_3608D0(&v253, "MA");
                                              v77 = 0;
                                              v78 = 0;
                                              v79 = 0;
                                              sub_68678C(&v77, v211, v255, 0x16uLL);
                                              sub_1A5C99C(&v365, __p, &v77);
                                              memset(v134, 0, sizeof(v134));
                                              sub_1A5CA34(v134, &v357, v366, 6uLL);
                                              v17 = 288;
                                              while (1)
                                              {
                                                v75[0] = &v356[v17];
                                                sub_195E3E8(v75);
                                                if (v355[v17 + 23] < 0)
                                                {
                                                  operator delete(*&v355[v17]);
                                                }

                                                v17 -= 48;
                                                if (!v17)
                                                {
                                                  v75[0] = &v77;
                                                  sub_195E3E8(v75);
                                                  v18 = 66;
                                                  while (1)
                                                  {
                                                    if (SHIBYTE(v211[v18 - 1]) < 0)
                                                    {
                                                      operator delete(*&v210[v18 * 8 + 24]);
                                                    }

                                                    v18 -= 3;
                                                    if (!(v18 * 8))
                                                    {
                                                      if (v81 < 0)
                                                      {
                                                        operator delete(__p[0]);
                                                      }

                                                      v211[0] = &v344;
                                                      sub_195E3E8(v211);
                                                      v19 = 0;
                                                      while (1)
                                                      {
                                                        if (v343[v19 + 23] < 0)
                                                        {
                                                          operator delete(*&v343[v19]);
                                                        }

                                                        v19 -= 24;
                                                        if (v19 == -144)
                                                        {
                                                          if (SHIBYTE(v83) < 0)
                                                          {
                                                            operator delete(v82);
                                                          }

                                                          v211[0] = &v84;
                                                          sub_195E3E8(v211);
                                                          if (SHIBYTE(v348) < 0)
                                                          {
                                                            operator delete(v347);
                                                          }

                                                          if (SHIBYTE(v87) < 0)
                                                          {
                                                            operator delete(v86);
                                                          }

                                                          v211[0] = &v349;
                                                          sub_195E3E8(v211);
                                                          v20 = 39;
                                                          while (1)
                                                          {
                                                            if (SHIBYTE(v193[v20 - 1]) < 0)
                                                            {
                                                              operator delete(*&v192[v20 * 8]);
                                                            }

                                                            v20 -= 3;
                                                            if (!(v20 * 8))
                                                            {
                                                              if (SHIBYTE(v172) < 0)
                                                              {
                                                                operator delete(v171);
                                                              }

                                                              v211[0] = &v177;
                                                              sub_195E3E8(v211);
                                                              if (v175 < 0)
                                                              {
                                                                operator delete(v174[0]);
                                                              }

                                                              if (v182 < 0)
                                                              {
                                                                operator delete(v181[0]);
                                                              }

                                                              v211[0] = v188;
                                                              sub_195E3E8(v211);
                                                              v21 = 0;
                                                              while (1)
                                                              {
                                                                if (v356[v21 + 23] < 0)
                                                                {
                                                                  operator delete(*&v356[v21]);
                                                                }

                                                                v21 -= 24;
                                                                if (v21 == -144)
                                                                {
                                                                  if (v191 < 0)
                                                                  {
                                                                    operator delete(v190[0]);
                                                                  }

                                                                  sub_3608D0(v211, "EG");
                                                                  v213 = 0x4058000000000000;
                                                                  sub_3608D0(v214, "CA");
                                                                  v216 = 0x4058000000000000;
                                                                  sub_3608D0(v217, "GB");
                                                                  v219 = 0x4058000000000000;
                                                                  sub_3608D0(v220, "US");
                                                                  v221 = 0x4058000000000000;
                                                                  sub_3608D0(v222, "DE");
                                                                  v224 = 0x4058000000000000;
                                                                  sub_3608D0(v225, "FR");
                                                                  v227 = 0x4058000000000000;
                                                                  sub_3608D0(v228, "BE");
                                                                  v229 = 0x4058000000000000;
                                                                  sub_3608D0(v230, "CH");
                                                                  v232 = 0x4058000000000000;
                                                                  sub_3608D0(v233, "CN");
                                                                  v235 = 0x4058000000000000;
                                                                  sub_3608D0(v236, "AT");
                                                                  v237 = 0x4058000000000000;
                                                                  sub_3608D0(v238, "ES");
                                                                  v240 = 0x4058000000000000;
                                                                  sub_3608D0(v241, "AU");
                                                                  v243 = 0x4058000000000000;
                                                                  sub_3608D0(v244, "NZ");
                                                                  v245 = 0x4058000000000000;
                                                                  sub_3608D0(v246, "IE");
                                                                  v248 = 0x4058000000000000;
                                                                  sub_3608D0(v249, "ZA");
                                                                  v251 = 0x4058000000000000;
                                                                  sub_3608D0(v252, "IT");
                                                                  v253 = 0x4058000000000000;
                                                                  sub_3608D0(v254, "NL");
                                                                  v256 = 0x4058000000000000;
                                                                  sub_3608D0(v257, "PT");
                                                                  v259 = 0x4058000000000000;
                                                                  sub_3608D0(v260, "NO");
                                                                  v261 = 0x4058000000000000;
                                                                  sub_3608D0(v262, "DK");
                                                                  v264 = 0x4058000000000000;
                                                                  sub_3608D0(v265, "FI");
                                                                  v267 = 0x4058000000000000;
                                                                  sub_3608D0(v268, "SE");
                                                                  v269 = 0x4058000000000000;
                                                                  sub_3608D0(v270, "GB");
                                                                  v272 = 0x4058000000000000;
                                                                  sub_3608D0(v273, "JP");
                                                                  v275 = 0x4058000000000000;
                                                                  sub_3608D0(v276, "MO");
                                                                  v277 = 0x4058000000000000;
                                                                  sub_3608D0(v278, "PH");
                                                                  v280 = 0x4058000000000000;
                                                                  sub_3608D0(v281, "MY");
                                                                  v283 = 0x4058000000000000;
                                                                  sub_3608D0(v284, "TW");
                                                                  v285 = 0x4058000000000000;
                                                                  sub_3608D0(v286, "HK");
                                                                  v288 = 0x4058000000000000;
                                                                  sub_3608D0(v289, "AR");
                                                                  v291 = 0x4058000000000000;
                                                                  sub_3608D0(v292, "BR");
                                                                  v293 = 0x4058000000000000;
                                                                  sub_3608D0(v294, "MX");
                                                                  v296 = 0x4058000000000000;
                                                                  sub_3608D0(v297, "CL");
                                                                  v299 = 0x4058000000000000;
                                                                  sub_3608D0(v300, "CZ");
                                                                  v301 = 0x4058000000000000;
                                                                  sub_3608D0(v302, "GR");
                                                                  v304 = 0x4058000000000000;
                                                                  sub_3608D0(v305, "HR");
                                                                  v307 = 0x4058000000000000;
                                                                  sub_3608D0(v308, "HU");
                                                                  v309 = 0x4058000000000000;
                                                                  sub_3608D0(v310, "ID");
                                                                  v312 = 0x4058000000000000;
                                                                  sub_3608D0(v313, "IN");
                                                                  v315 = 0x4058000000000000;
                                                                  sub_3608D0(v316, "PL");
                                                                  v317 = 0x4058000000000000;
                                                                  sub_3608D0(v318, "RO");
                                                                  v319[1] = 0x4058000000000000;
                                                                  sub_3608D0(v320, "SG");
                                                                  v321 = 0x4058000000000000;
                                                                  sub_3608D0(v322, "SK");
                                                                  v323 = 0x4058000000000000;
                                                                  sub_3608D0(v324, "TH");
                                                                  v325 = 0x4058000000000000;
                                                                  sub_3608D0(v326, "TR");
                                                                  v327 = 0x4058000000000000;
                                                                  sub_3608D0(v328, "VN");
                                                                  v329 = 0x4058000000000000;
                                                                  sub_3608D0(v330, "AE");
                                                                  v331 = 0x4058000000000000;
                                                                  sub_3608D0(v332, "IL");
                                                                  v333 = 0x4058000000000000;
                                                                  sub_3608D0(v334, "NG");
                                                                  v335 = 0x4058000000000000;
                                                                  sub_3608D0(v336, "MA");
                                                                  v337 = 0x4058000000000000;
                                                                  sub_1A5CB44(v135, v211, 50);
                                                                  v22 = 1600;
                                                                  while (1)
                                                                  {
                                                                    if (v210[v22 + 39] < 0)
                                                                    {
                                                                      operator delete(*&v210[v22 + 16]);
                                                                    }

                                                                    v22 -= 32;
                                                                    if (!v22)
                                                                    {
                                                                      v135[10] = 5;
                                                                      sub_3608D0(v181, "speller-enus-esus");
                                                                      sub_3608D0(v338, "US");
                                                                      sub_3608D0(v339, "AE");
                                                                      v178 = 0;
                                                                      v177 = 0;
                                                                      v179 = 0;
                                                                      sub_68678C(&v177, v338, v340, 2uLL);
                                                                      sub_1A5C99C(v193, v181, &v177);
                                                                      sub_3608D0(v174, "speller-GB");
                                                                      sub_3608D0(&v349, "GB");
                                                                      v171 = 0uLL;
                                                                      v172 = 0;
                                                                      sub_68678C(&v171, &v349, v351, 1uLL);
                                                                      sub_1A5C99C(v196, v174, &v171);
                                                                      sub_3608D0(&v86, "speller-AU");
                                                                      sub_3608D0(v190, "AU");
                                                                      sub_3608D0(v192, "NZ");
                                                                      v84 = 0uLL;
                                                                      v85 = 0;
                                                                      sub_68678C(&v84, v190, v193, 2uLL);
                                                                      sub_1A5C99C(v198, &v86, &v84);
                                                                      sub_3608D0(&v347, "speller-CA");
                                                                      sub_3608D0(&v344, "CA");
                                                                      v82 = 0uLL;
                                                                      v83 = 0;
                                                                      sub_68678C(&v82, &v344, &v347, 1uLL);
                                                                      sub_1A5C99C(v200, &v347, &v82);
                                                                      sub_3608D0(__p, "speller-EU");
                                                                      sub_3608D0(&v357, "ES");
                                                                      sub_3608D0(v359, "IT");
                                                                      sub_3608D0(v360, "NL");
                                                                      v77 = 0;
                                                                      v78 = 0;
                                                                      v79 = 0;
                                                                      sub_68678C(&v77, &v357, &v361, 3uLL);
                                                                      sub_1A5C99C(v202, __p, &v77);
                                                                      sub_3608D0(v75, "speller-FR-DE");
                                                                      sub_3608D0(v188, "FR");
                                                                      sub_3608D0(v189, "DE");
                                                                      v72 = 0;
                                                                      v73 = 0;
                                                                      v74 = 0;
                                                                      sub_68678C(&v72, v188, v190, 2uLL);
                                                                      sub_1A5C99C(v204, v75, &v72);
                                                                      sub_3608D0(v70, "speller-EU-offline-mixed-reduced");
                                                                      sub_3608D0(v351, "AT");
                                                                      sub_3608D0(v352, "CH");
                                                                      sub_3608D0(v353, "BE");
                                                                      v67 = 0;
                                                                      v68 = 0;
                                                                      v69 = 0;
                                                                      sub_68678C(&v67, v351, v354, 3uLL);
                                                                      sub_1A5C99C(v206, v70, &v67);
                                                                      sub_3608D0(v65, "speller-GR");
                                                                      sub_3608D0(v186, "GR");
                                                                      v62 = 0;
                                                                      v63 = 0;
                                                                      v64 = 0;
                                                                      sub_68678C(&v62, v186, v188, 1uLL);
                                                                      sub_1A5C99C(&v208, v65, &v62);
                                                                      sub_3608D0(&v60, "speller-JP");
                                                                      sub_3608D0(v184, "JP");
                                                                      v58 = 0uLL;
                                                                      v59 = 0;
                                                                      sub_68678C(&v58, v184, v186, 1uLL);
                                                                      sub_1A5C99C(&v209, &v60, &v58);
                                                                      sub_3608D0(v56, "speller-ROW");
                                                                      sub_3608D0(v211, "IN");
                                                                      sub_3608D0(&v213, "PT");
                                                                      sub_3608D0(v215, "FI");
                                                                      sub_3608D0(v218, "SE");
                                                                      sub_3608D0(v220, "AD");
                                                                      sub_3608D0(&v221, "MC");
                                                                      sub_3608D0(v223, "LU");
                                                                      sub_3608D0(v226, "VA");
                                                                      sub_3608D0(v228, "IS");
                                                                      sub_3608D0(&v229, "GL");
                                                                      sub_3608D0(v231, "FO");
                                                                      sub_3608D0(v234, "IE");
                                                                      sub_3608D0(v236, "NO");
                                                                      sub_3608D0(&v237, "DK");
                                                                      sub_3608D0(v239, "AR");
                                                                      sub_3608D0(v242, "BR");
                                                                      sub_3608D0(v244, "MX");
                                                                      sub_3608D0(&v245, "CL");
                                                                      sub_3608D0(v247, "TW");
                                                                      sub_3608D0(v250, "HK");
                                                                      sub_3608D0(v252, "MO");
                                                                      sub_3608D0(&v253, "PL");
                                                                      sub_3608D0(v255, "HR");
                                                                      sub_3608D0(v258, "RO");
                                                                      sub_3608D0(v260, "SK");
                                                                      sub_3608D0(&v261, "CZ");
                                                                      sub_3608D0(v263, "HU");
                                                                      sub_3608D0(v266, "VN");
                                                                      sub_3608D0(v268, "TH");
                                                                      sub_3608D0(&v269, "SG");
                                                                      sub_3608D0(v271, "MY");
                                                                      sub_3608D0(v274, "PH");
                                                                      sub_3608D0(v276, "TR");
                                                                      sub_3608D0(&v277, "AE");
                                                                      sub_3608D0(v279, "IL");
                                                                      sub_3608D0(v282, "SA");
                                                                      sub_3608D0(v284, "NG");
                                                                      sub_3608D0(&v285, "EG");
                                                                      sub_3608D0(v287, "MA");
                                                                      sub_3608D0(v290, "ZA");
                                                                      v53 = 0;
                                                                      v54 = 0;
                                                                      v55 = 0;
                                                                      sub_68678C(&v53, v211, v292, 0x28uLL);
                                                                      sub_1A5C99C(v210, v56, &v53);
                                                                      memset(v136, 0, sizeof(v136));
                                                                      sub_1A5CA34(v136, v193, v211, 0xAuLL);
                                                                      v23 = 480;
                                                                      while (1)
                                                                      {
                                                                        v170 = &v192[v23];
                                                                        sub_195E3E8(&v170);
                                                                        if ((v192[v23 - 1] & 0x80000000) != 0)
                                                                        {
                                                                          operator delete(v190[v23 / 8]);
                                                                        }

                                                                        v23 -= 48;
                                                                        if (!v23)
                                                                        {
                                                                          v170 = &v53;
                                                                          sub_195E3E8(&v170);
                                                                          v24 = 120;
                                                                          while (1)
                                                                          {
                                                                            if (SHIBYTE(v211[v24 - 1]) < 0)
                                                                            {
                                                                              operator delete(*&v210[v24 * 8 + 24]);
                                                                            }

                                                                            v24 -= 3;
                                                                            if (!(v24 * 8))
                                                                            {
                                                                              if (v57 < 0)
                                                                              {
                                                                                operator delete(v56[0]);
                                                                              }

                                                                              v211[0] = &v58;
                                                                              sub_195E3E8(v211);
                                                                              if (SHIBYTE(v185) < 0)
                                                                              {
                                                                                operator delete(v184[0]);
                                                                              }

                                                                              if (SHIBYTE(v61) < 0)
                                                                              {
                                                                                operator delete(v60);
                                                                              }

                                                                              v211[0] = &v62;
                                                                              sub_195E3E8(v211);
                                                                              if (v187 < 0)
                                                                              {
                                                                                operator delete(v186[0]);
                                                                              }

                                                                              if (v66 < 0)
                                                                              {
                                                                                operator delete(v65[0]);
                                                                              }

                                                                              v211[0] = &v67;
                                                                              sub_195E3E8(v211);
                                                                              v25 = 0;
                                                                              while (1)
                                                                              {
                                                                                if (v353[v25 + 23] < 0)
                                                                                {
                                                                                  operator delete(*&v353[v25]);
                                                                                }

                                                                                v25 -= 24;
                                                                                if (v25 == -72)
                                                                                {
                                                                                  if (v71 < 0)
                                                                                  {
                                                                                    operator delete(v70[0]);
                                                                                  }

                                                                                  v211[0] = &v72;
                                                                                  sub_195E3E8(v211);
                                                                                  v26 = 0;
                                                                                  while (1)
                                                                                  {
                                                                                    if (v189[v26 * 8 + 23] < 0)
                                                                                    {
                                                                                      operator delete(v188[v26 + 3]);
                                                                                    }

                                                                                    v26 -= 3;
                                                                                    if (v26 == -6)
                                                                                    {
                                                                                      if (v76 < 0)
                                                                                      {
                                                                                        operator delete(v75[0]);
                                                                                      }

                                                                                      v211[0] = &v77;
                                                                                      sub_195E3E8(v211);
                                                                                      v27 = 0;
                                                                                      while (1)
                                                                                      {
                                                                                        if (v360[v27 + 23] < 0)
                                                                                        {
                                                                                          operator delete(*&v360[v27]);
                                                                                        }

                                                                                        v27 -= 24;
                                                                                        if (v27 == -72)
                                                                                        {
                                                                                          if (v81 < 0)
                                                                                          {
                                                                                            operator delete(__p[0]);
                                                                                          }

                                                                                          v211[0] = &v82;
                                                                                          sub_195E3E8(v211);
                                                                                          if (SHIBYTE(v346) < 0)
                                                                                          {
                                                                                            operator delete(v344);
                                                                                          }

                                                                                          if (SHIBYTE(v348) < 0)
                                                                                          {
                                                                                            operator delete(v347);
                                                                                          }

                                                                                          v211[0] = &v84;
                                                                                          sub_195E3E8(v211);
                                                                                          v28 = 0;
                                                                                          while (1)
                                                                                          {
                                                                                            if (v192[v28 + 23] < 0)
                                                                                            {
                                                                                              operator delete(*&v192[v28]);
                                                                                            }

                                                                                            v28 -= 24;
                                                                                            if (v28 == -48)
                                                                                            {
                                                                                              if (SHIBYTE(v87) < 0)
                                                                                              {
                                                                                                operator delete(v86);
                                                                                              }

                                                                                              v211[0] = &v171;
                                                                                              sub_195E3E8(v211);
                                                                                              if (SHIBYTE(v350) < 0)
                                                                                              {
                                                                                                operator delete(v349);
                                                                                              }

                                                                                              if (v175 < 0)
                                                                                              {
                                                                                                operator delete(v174[0]);
                                                                                              }

                                                                                              v211[0] = &v177;
                                                                                              sub_195E3E8(v211);
                                                                                              v29 = 0;
                                                                                              while (1)
                                                                                              {
                                                                                                if (v339[v29 * 8 + 23] < 0)
                                                                                                {
                                                                                                  operator delete(v338[v29 + 3]);
                                                                                                }

                                                                                                v29 -= 3;
                                                                                                if (v29 == -6)
                                                                                                {
                                                                                                  if (v182 < 0)
                                                                                                  {
                                                                                                    operator delete(v181[0]);
                                                                                                  }

                                                                                                  sub_3608D0(&v349, "speller-enus-esus");
                                                                                                  sub_3608D0(v193, "from_ENUSESUS");
                                                                                                  sub_3608D0(v195, "to_ENUSESUS");
                                                                                                  v86 = 0uLL;
                                                                                                  v87 = 0;
                                                                                                  sub_68678C(&v86, v193, v196, 2uLL);
                                                                                                  sub_1A5C99C(v211, &v349, &v86);
                                                                                                  sub_3608D0(&v84, "speller-GB");
                                                                                                  sub_3608D0(&v357, "from_SOURCE");
                                                                                                  sub_3608D0(v359, "to_TARGET");
                                                                                                  v347 = 0uLL;
                                                                                                  v348 = 0;
                                                                                                  sub_68678C(&v347, &v357, v360, 2uLL);
                                                                                                  sub_1A5C99C(v215, &v84, &v347);
                                                                                                  sub_3608D0(&v82, "speller-AU");
                                                                                                  sub_3608D0(v351, "from_AU");
                                                                                                  sub_3608D0(v352, "to_AU");
                                                                                                  v345 = 0;
                                                                                                  v344 = 0;
                                                                                                  v346 = 0;
                                                                                                  sub_68678C(&v344, v351, v353, 2uLL);
                                                                                                  sub_1A5C99C(v220, &v82, &v344);
                                                                                                  sub_3608D0(__p, "speller-CA");
                                                                                                  sub_3608D0(v338, "from_CA");
                                                                                                  sub_3608D0(v339, "to_CA");
                                                                                                  v77 = 0;
                                                                                                  v78 = 0;
                                                                                                  v79 = 0;
                                                                                                  sub_68678C(&v77, v338, v340, 2uLL);
                                                                                                  sub_1A5C99C(v223, __p, &v77);
                                                                                                  sub_3608D0(v75, "speller-EU");
                                                                                                  sub_3608D0(v190, "from_EU");
                                                                                                  sub_3608D0(v192, "to_EU");
                                                                                                  v72 = 0;
                                                                                                  v73 = 0;
                                                                                                  v74 = 0;
                                                                                                  sub_68678C(&v72, v190, v193, 2uLL);
                                                                                                  sub_1A5C99C(v228, v75, &v72);
                                                                                                  sub_3608D0(v70, "speller-GR");
                                                                                                  sub_3608D0(v188, "from_SOURCE");
                                                                                                  sub_3608D0(v189, "to_TARGET");
                                                                                                  v67 = 0;
                                                                                                  v68 = 0;
                                                                                                  v69 = 0;
                                                                                                  sub_68678C(&v67, v188, v190, 2uLL);
                                                                                                  sub_1A5C99C(v231, v70, &v67);
                                                                                                  sub_3608D0(v65, "speller-JP");
                                                                                                  sub_3608D0(v181, "from_SOURCE");
                                                                                                  sub_3608D0(v183, "to_TARGET");
                                                                                                  v62 = 0;
                                                                                                  v63 = 0;
                                                                                                  v64 = 0;
                                                                                                  sub_68678C(&v62, v181, v184, 2uLL);
                                                                                                  sub_1A5C99C(v236, v65, &v62);
                                                                                                  sub_3608D0(v186, "speller-FR-DE");
                                                                                                  sub_3608D0(&v177, "from_DEFRAC");
                                                                                                  sub_3608D0(v180, "to_DEFRAC");
                                                                                                  v60 = 0uLL;
                                                                                                  v61 = 0;
                                                                                                  sub_68678C(&v60, &v177, v181, 2uLL);
                                                                                                  sub_1A5C99C(v239, v186, &v60);
                                                                                                  sub_3608D0(&v58, "speller-EU-offline-mixed-reduced");
                                                                                                  sub_3608D0(v174, "from_SOURCE");
                                                                                                  sub_3608D0(v176, "to_TARGET");
                                                                                                  v184[1] = 0;
                                                                                                  v184[0] = 0;
                                                                                                  v185 = 0;
                                                                                                  sub_68678C(v184, v174, &v177, 2uLL);
                                                                                                  sub_1A5C99C(v244, &v58, v184);
                                                                                                  sub_3608D0(v56, "speller-ROW");
                                                                                                  sub_3608D0(&v171, "from_GLOBAL");
                                                                                                  sub_3608D0(v173, "to_GLOBAL");
                                                                                                  v53 = 0;
                                                                                                  v54 = 0;
                                                                                                  v55 = 0;
                                                                                                  sub_68678C(&v53, &v171, v174, 2uLL);
                                                                                                  sub_1A5C99C(v247, v56, &v53);
                                                                                                  memset(v137, 0, sizeof(v137));
                                                                                                  sub_1A5CA34(v137, v211, v252, 0xAuLL);
                                                                                                  v30 = 480;
                                                                                                  while (1)
                                                                                                  {
                                                                                                    v170 = &v210[v30 + 24];
                                                                                                    sub_195E3E8(&v170);
                                                                                                    if (v210[v30 + 23] < 0)
                                                                                                    {
                                                                                                      operator delete(*&v210[v30]);
                                                                                                    }

                                                                                                    v30 -= 48;
                                                                                                    if (!v30)
                                                                                                    {
                                                                                                      v170 = &v53;
                                                                                                      sub_195E3E8(&v170);
                                                                                                      v31 = 0;
                                                                                                      while (1)
                                                                                                      {
                                                                                                        if (v173[v31 + 23] < 0)
                                                                                                        {
                                                                                                          operator delete(*&v173[v31]);
                                                                                                        }

                                                                                                        v31 -= 24;
                                                                                                        if (v31 == -48)
                                                                                                        {
                                                                                                          if (v57 < 0)
                                                                                                          {
                                                                                                            operator delete(v56[0]);
                                                                                                          }

                                                                                                          *&v171 = v184;
                                                                                                          sub_195E3E8(&v171);
                                                                                                          v32 = 0;
                                                                                                          while (1)
                                                                                                          {
                                                                                                            if (v176[v32 + 23] < 0)
                                                                                                            {
                                                                                                              operator delete(*&v176[v32]);
                                                                                                            }

                                                                                                            v32 -= 24;
                                                                                                            if (v32 == -48)
                                                                                                            {
                                                                                                              if (SHIBYTE(v59) < 0)
                                                                                                              {
                                                                                                                operator delete(v58);
                                                                                                              }

                                                                                                              v174[0] = &v60;
                                                                                                              sub_195E3E8(v174);
                                                                                                              v33 = 0;
                                                                                                              while (1)
                                                                                                              {
                                                                                                                if (v180[v33 + 23] < 0)
                                                                                                                {
                                                                                                                  operator delete(*&v180[v33]);
                                                                                                                }

                                                                                                                v33 -= 24;
                                                                                                                if (v33 == -48)
                                                                                                                {
                                                                                                                  if (v187 < 0)
                                                                                                                  {
                                                                                                                    operator delete(v186[0]);
                                                                                                                  }

                                                                                                                  v177 = &v62;
                                                                                                                  sub_195E3E8(&v177);
                                                                                                                  v34 = 0;
                                                                                                                  while (1)
                                                                                                                  {
                                                                                                                    if (v183[v34 + 23] < 0)
                                                                                                                    {
                                                                                                                      operator delete(*&v183[v34]);
                                                                                                                    }

                                                                                                                    v34 -= 24;
                                                                                                                    if (v34 == -48)
                                                                                                                    {
                                                                                                                      if (v66 < 0)
                                                                                                                      {
                                                                                                                        operator delete(v65[0]);
                                                                                                                      }

                                                                                                                      v181[0] = &v67;
                                                                                                                      sub_195E3E8(v181);
                                                                                                                      v35 = 0;
                                                                                                                      while (1)
                                                                                                                      {
                                                                                                                        if (v189[v35 * 8 + 23] < 0)
                                                                                                                        {
                                                                                                                          operator delete(v188[v35 + 3]);
                                                                                                                        }

                                                                                                                        v35 -= 3;
                                                                                                                        if (v35 == -6)
                                                                                                                        {
                                                                                                                          if (v71 < 0)
                                                                                                                          {
                                                                                                                            operator delete(v70[0]);
                                                                                                                          }

                                                                                                                          v188[0] = &v72;
                                                                                                                          sub_195E3E8(v188);
                                                                                                                          v36 = 0;
                                                                                                                          while (1)
                                                                                                                          {
                                                                                                                            if (v192[v36 + 23] < 0)
                                                                                                                            {
                                                                                                                              operator delete(*&v192[v36]);
                                                                                                                            }

                                                                                                                            v36 -= 24;
                                                                                                                            if (v36 == -48)
                                                                                                                            {
                                                                                                                              if (v76 < 0)
                                                                                                                              {
                                                                                                                                operator delete(v75[0]);
                                                                                                                              }

                                                                                                                              v190[0] = &v77;
                                                                                                                              sub_195E3E8(v190);
                                                                                                                              v37 = 0;
                                                                                                                              while (1)
                                                                                                                              {
                                                                                                                                if (v339[v37 * 8 + 23] < 0)
                                                                                                                                {
                                                                                                                                  operator delete(v338[v37 + 3]);
                                                                                                                                }

                                                                                                                                v37 -= 3;
                                                                                                                                if (v37 == -6)
                                                                                                                                {
                                                                                                                                  if (v81 < 0)
                                                                                                                                  {
                                                                                                                                    operator delete(__p[0]);
                                                                                                                                  }

                                                                                                                                  v338[0] = &v344;
                                                                                                                                  sub_195E3E8(v338);
                                                                                                                                  v38 = 0;
                                                                                                                                  while (1)
                                                                                                                                  {
                                                                                                                                    if (v352[v38 * 8 + 23] < 0)
                                                                                                                                    {
                                                                                                                                      operator delete(v351[v38 + 3]);
                                                                                                                                    }

                                                                                                                                    v38 -= 3;
                                                                                                                                    if (v38 == -6)
                                                                                                                                    {
                                                                                                                                      if (SHIBYTE(v83) < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(v82);
                                                                                                                                      }

                                                                                                                                      v351[0] = &v347;
                                                                                                                                      sub_195E3E8(v351);
                                                                                                                                      v39 = 0;
                                                                                                                                      while (1)
                                                                                                                                      {
                                                                                                                                        if (v359[v39 + 23] < 0)
                                                                                                                                        {
                                                                                                                                          operator delete(*&v359[v39]);
                                                                                                                                        }

                                                                                                                                        v39 -= 24;
                                                                                                                                        if (v39 == -48)
                                                                                                                                        {
                                                                                                                                          if (SHIBYTE(v85) < 0)
                                                                                                                                          {
                                                                                                                                            operator delete(v84);
                                                                                                                                          }

                                                                                                                                          *&v357 = &v86;
                                                                                                                                          sub_195E3E8(&v357);
                                                                                                                                          v40 = 0;
                                                                                                                                          while (1)
                                                                                                                                          {
                                                                                                                                            if (v195[v40 + 23] < 0)
                                                                                                                                            {
                                                                                                                                              operator delete(*&v195[v40]);
                                                                                                                                            }

                                                                                                                                            v40 -= 24;
                                                                                                                                            if (v40 == -48)
                                                                                                                                            {
                                                                                                                                              if (SHIBYTE(v350) < 0)
                                                                                                                                              {
                                                                                                                                                operator delete(v349);
                                                                                                                                              }

                                                                                                                                              sub_3608D0(v211, "HK");
                                                                                                                                              sub_3608D0(&v213, "JP");
                                                                                                                                              sub_3608D0(v215, "MO");
                                                                                                                                              sub_3608D0(v218, "TW");
                                                                                                                                              memset(v138, 0, sizeof(v138));
                                                                                                                                              sub_68678C(v138, v211, v220, 4uLL);
                                                                                                                                              v41 = 0;
                                                                                                                                              while (1)
                                                                                                                                              {
                                                                                                                                                if (v220[v41 - 1] < 0)
                                                                                                                                                {
                                                                                                                                                  operator delete(*&v218[v41]);
                                                                                                                                                }

                                                                                                                                                v41 -= 24;
                                                                                                                                                if (v41 == -96)
                                                                                                                                                {
                                                                                                                                                  sub_3608D0(&v357, "geotagger_en_us_model");
                                                                                                                                                  sub_3608D0(v211, "US");
                                                                                                                                                  sub_3608D0(&v213, "CA");
                                                                                                                                                  sub_3608D0(v215, "GB");
                                                                                                                                                  sub_3608D0(v218, "AU");
                                                                                                                                                  sub_3608D0(v220, "NZ");
                                                                                                                                                  sub_3608D0(&v221, "IE");
                                                                                                                                                  sub_3608D0(v223, "ZA");
                                                                                                                                                  memset(v351, 0, sizeof(v351));
                                                                                                                                                  sub_68678C(v351, v211, v226, 7uLL);
                                                                                                                                                  sub_1A5C99C(v193, &v357, v351);
                                                                                                                                                  memset(v139, 0, sizeof(v139));
                                                                                                                                                  sub_1A5CA34(v139, v193, v196, 1uLL);
                                                                                                                                                  v338[0] = v195;
                                                                                                                                                  sub_195E3E8(v338);
                                                                                                                                                  if (v194 < 0)
                                                                                                                                                  {
                                                                                                                                                    operator delete(v193[0]);
                                                                                                                                                  }

                                                                                                                                                  v338[0] = v351;
                                                                                                                                                  sub_195E3E8(v338);
                                                                                                                                                  v42 = 0;
                                                                                                                                                  while (1)
                                                                                                                                                  {
                                                                                                                                                    if (v225[v42 + 7] < 0)
                                                                                                                                                    {
                                                                                                                                                      operator delete(*&v223[v42]);
                                                                                                                                                    }

                                                                                                                                                    v42 -= 24;
                                                                                                                                                    if (v42 == -168)
                                                                                                                                                    {
                                                                                                                                                      if (SHIBYTE(v358) < 0)
                                                                                                                                                      {
                                                                                                                                                        operator delete(v357);
                                                                                                                                                      }

                                                                                                                                                      v140 = 16842753;
                                                                                                                                                      v141 = xmmword_23684E0;
                                                                                                                                                      v142 = 1;
                                                                                                                                                      v143 = 0x6400000001;
                                                                                                                                                      v144 = 10;
                                                                                                                                                      sub_3608D0(v211, "AD");
                                                                                                                                                      sub_3608D0(&v213, "AR");
                                                                                                                                                      sub_3608D0(v215, "AT");
                                                                                                                                                      sub_3608D0(v218, "BE");
                                                                                                                                                      sub_3608D0(v220, "BO");
                                                                                                                                                      sub_3608D0(&v221, "BR");
                                                                                                                                                      sub_3608D0(v223, "CH");
                                                                                                                                                      sub_3608D0(v226, "CL");
                                                                                                                                                      sub_3608D0(v228, "CO");
                                                                                                                                                      sub_3608D0(&v229, "CR");
                                                                                                                                                      sub_3608D0(v231, "CU");
                                                                                                                                                      sub_3608D0(v234, "DE");
                                                                                                                                                      sub_3608D0(v236, "DK");
                                                                                                                                                      sub_3608D0(&v237, "DO");
                                                                                                                                                      sub_3608D0(v239, "EC");
                                                                                                                                                      sub_3608D0(v242, "ES");
                                                                                                                                                      sub_3608D0(v244, "FI");
                                                                                                                                                      sub_3608D0(&v245, "GL");
                                                                                                                                                      sub_3608D0(v247, "GQ");
                                                                                                                                                      sub_3608D0(v250, "GR");
                                                                                                                                                      sub_3608D0(v252, "GT");
                                                                                                                                                      sub_3608D0(&v253, "HN");
                                                                                                                                                      sub_3608D0(v255, "ID");
                                                                                                                                                      sub_3608D0(v258, "IS");
                                                                                                                                                      sub_3608D0(v260, "IT");
                                                                                                                                                      sub_3608D0(&v261, "JP");
                                                                                                                                                      sub_3608D0(v263, "LI");
                                                                                                                                                      sub_3608D0(v266, "MX");
                                                                                                                                                      sub_3608D0(v268, "NI");
                                                                                                                                                      sub_3608D0(&v269, "NL");
                                                                                                                                                      sub_3608D0(v271, "NO");
                                                                                                                                                      sub_3608D0(v274, "PA");
                                                                                                                                                      sub_3608D0(v276, "PE");
                                                                                                                                                      sub_3608D0(&v277, "PT");
                                                                                                                                                      sub_3608D0(v279, "PY");
                                                                                                                                                      sub_3608D0(v282, "RO");
                                                                                                                                                      sub_3608D0(v284, "SE");
                                                                                                                                                      sub_3608D0(&v285, "SM");
                                                                                                                                                      sub_3608D0(v287, "SR");
                                                                                                                                                      sub_3608D0(v290, "SV");
                                                                                                                                                      sub_3608D0(v292, "TR");
                                                                                                                                                      sub_3608D0(&v293, "UY");
                                                                                                                                                      sub_3608D0(v295, "VA");
                                                                                                                                                      sub_3608D0(v298, "VE");
                                                                                                                                                      memset(v145, 0, sizeof(v145));
                                                                                                                                                      sub_68678C(v145, v211, v300, 0x2CuLL);
                                                                                                                                                      v43 = 132;
                                                                                                                                                      while (1)
                                                                                                                                                      {
                                                                                                                                                        if (SHIBYTE(v211[v43 - 1]) < 0)
                                                                                                                                                        {
                                                                                                                                                          operator delete(*&v210[v43 * 8 + 24]);
                                                                                                                                                        }

                                                                                                                                                        v43 -= 3;
                                                                                                                                                        if (!(v43 * 8))
                                                                                                                                                        {
                                                                                                                                                          v146 = 35;
                                                                                                                                                          v147 = 1;
                                                                                                                                                          v148 = 1;
                                                                                                                                                          v149 = 1;
                                                                                                                                                          sub_1A5CBBC(v211, "zh", "位置");
                                                                                                                                                          sub_1A5CC10(v215, "en", "Location");
                                                                                                                                                          memset(v150, 0, sizeof(v150));
                                                                                                                                                          sub_1A5CC64(v150, v211, v220, 2uLL);
                                                                                                                                                          v44 = 0;
                                                                                                                                                          while (1)
                                                                                                                                                          {
                                                                                                                                                            v45 = &v211[v44];
                                                                                                                                                            if (v220[v44 * 8 - 1] < 0)
                                                                                                                                                            {
                                                                                                                                                              operator delete(v45[9]);
                                                                                                                                                            }

                                                                                                                                                            if (*(v45 + 71) < 0)
                                                                                                                                                            {
                                                                                                                                                              operator delete(v45[6]);
                                                                                                                                                            }

                                                                                                                                                            v44 -= 6;
                                                                                                                                                            if (v44 == -12)
                                                                                                                                                            {
                                                                                                                                                              sub_3608D0(v211, "SK");
                                                                                                                                                              sub_3608D0(&v213, "CZ");
                                                                                                                                                              sub_3608D0(v215, "SA");
                                                                                                                                                              memset(v151, 0, sizeof(v151));
                                                                                                                                                              sub_68678C(v151, v211, v218, 3uLL);
                                                                                                                                                              v46 = 0;
                                                                                                                                                              while (1)
                                                                                                                                                              {
                                                                                                                                                                if (v217[v46 + 7] < 0)
                                                                                                                                                                {
                                                                                                                                                                  operator delete(*&v215[v46]);
                                                                                                                                                                }

                                                                                                                                                                v46 -= 24;
                                                                                                                                                                if (v46 == -72)
                                                                                                                                                                {
                                                                                                                                                                  sub_3608D0(v211, "a");
                                                                                                                                                                  sub_3608D0(&v213, "asda");
                                                                                                                                                                  sub_3608D0(v215, "das");
                                                                                                                                                                  sub_3608D0(v218, "de");
                                                                                                                                                                  sub_3608D0(v220, "del");
                                                                                                                                                                  sub_3608D0(&v221, "des");
                                                                                                                                                                  sub_3608D0(v223, "do");
                                                                                                                                                                  sub_3608D0(v226, "dos");
                                                                                                                                                                  sub_3608D0(v228, "dueli");
                                                                                                                                                                  sub_3608D0(&v229, "ill");
                                                                                                                                                                  sub_3608D0(v231, "la");
                                                                                                                                                                  sub_3608D0(v234, "le");
                                                                                                                                                                  sub_3608D0(v236, "o");
                                                                                                                                                                  sub_3608D0(&v237, "of");
                                                                                                                                                                  sub_3608D0(v239, "os");
                                                                                                                                                                  sub_3608D0(v242, "the");
                                                                                                                                                                  sub_1A5C918(&v152, v211, 16);
                                                                                                                                                                  v47 = 48;
                                                                                                                                                                  while (1)
                                                                                                                                                                  {
                                                                                                                                                                    if (SHIBYTE(v211[v47 - 1]) < 0)
                                                                                                                                                                    {
                                                                                                                                                                      operator delete(*&v210[v47 * 8 + 24]);
                                                                                                                                                                    }

                                                                                                                                                                    v47 -= 3;
                                                                                                                                                                    if (!(v47 * 8))
                                                                                                                                                                    {
                                                                                                                                                                      sub_3608D0(v211, "block");
                                                                                                                                                                      sub_3608D0(&v213, "blk");
                                                                                                                                                                      sub_1A5C918(v153, v211, 2);
                                                                                                                                                                      v48 = 0;
                                                                                                                                                                      while (1)
                                                                                                                                                                      {
                                                                                                                                                                        if (v214[v48 + 15] < 0)
                                                                                                                                                                        {
                                                                                                                                                                          operator delete(*&v214[v48 - 8]);
                                                                                                                                                                        }

                                                                                                                                                                        v48 -= 24;
                                                                                                                                                                        if (v48 == -48)
                                                                                                                                                                        {
                                                                                                                                                                          v153[24] = 0;
                                                                                                                                                                          *v211 = xmmword_23684F0;
                                                                                                                                                                          memset(v154, 0, sizeof(v154));
                                                                                                                                                                          sub_1A5CCEC(v154, v211, &v212, 2uLL);
                                                                                                                                                                          sub_3608D0(v211, "JP");
                                                                                                                                                                          sub_3608D0(&v213, "TW");
                                                                                                                                                                          sub_3608D0(v215, "HK");
                                                                                                                                                                          sub_3608D0(v218, "MO");
                                                                                                                                                                          memset(v155, 0, sizeof(v155));
                                                                                                                                                                          sub_68678C(v155, v211, v220, 4uLL);
                                                                                                                                                                          v49 = 0;
                                                                                                                                                                          while (1)
                                                                                                                                                                          {
                                                                                                                                                                            if (v220[v49 - 1] < 0)
                                                                                                                                                                            {
                                                                                                                                                                              operator delete(*&v218[v49]);
                                                                                                                                                                            }

                                                                                                                                                                            v49 -= 24;
                                                                                                                                                                            if (v49 == -96)
                                                                                                                                                                            {
                                                                                                                                                                              sub_3608D0(v211, "JP");
                                                                                                                                                                              sub_3608D0(&v213, "VN");
                                                                                                                                                                              memset(v156, 0, 24);
                                                                                                                                                                              sub_68678C(v156, v211, v215, 2uLL);
                                                                                                                                                                              v50 = 0;
                                                                                                                                                                              while (1)
                                                                                                                                                                              {
                                                                                                                                                                                if (v214[v50 + 15] < 0)
                                                                                                                                                                                {
                                                                                                                                                                                  operator delete(*&v214[v50 - 8]);
                                                                                                                                                                                }

                                                                                                                                                                                v50 -= 24;
                                                                                                                                                                                if (v50 == -48)
                                                                                                                                                                                {
                                                                                                                                                                                  v156[24] = 1;
                                                                                                                                                                                  v157 = 0x4024000000000000;
                                                                                                                                                                                  v158 = xmmword_2368500;
                                                                                                                                                                                  v159 = 1000000;
                                                                                                                                                                                  sub_3608D0(v211, "JP");
                                                                                                                                                                                  sub_23898(v160, v211, 1);
                                                                                                                                                                                  if (SHIBYTE(v212) < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v211[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  v160[5] = 0x64000003E8;
                                                                                                                                                                                  v160[6] = 0x3FE0000000000000;
                                                                                                                                                                                  v161 = 1;
                                                                                                                                                                                  sub_3608D0(v211, "NG");
                                                                                                                                                                                  sub_1A5C918(v162, v211, 1);
                                                                                                                                                                                  if (SHIBYTE(v212) < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v211[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  v162[24] = 1;
                                                                                                                                                                                  v211[1] = 0;
                                                                                                                                                                                  v211[0] = 0;
                                                                                                                                                                                  v212 = 0;
                                                                                                                                                                                  sub_3608D0(v193, "en");
                                                                                                                                                                                  v358 = 0;
                                                                                                                                                                                  *(&v357 + 1) = 0;
                                                                                                                                                                                  *&v357 = &v357 + 8;
                                                                                                                                                                                  sub_19C478C(v167, &v168, &v165, &v163, (v52 + 1296), v51, v88, v211, v193, &v357);
                                                                                                                                                                                  sub_19C591C(&v357, *(&v357 + 1));
                                                                                                                                                                                  if (v194 < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v193[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (SHIBYTE(v212) < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v211[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  sub_1965ECC(v88);
                                                                                                                                                                                  sub_19C5870(&v163, v164[0]);
                                                                                                                                                                                  sub_19C57C4(&v165, v166[0]);
                                                                                                                                                                                  sub_1E8460C(v51);
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
        }
      }
    }
  }
}