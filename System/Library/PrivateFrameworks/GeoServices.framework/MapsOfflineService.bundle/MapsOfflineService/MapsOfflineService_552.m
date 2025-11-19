void sub_1F18BBC()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27F06E8 = 0;
  unk_27F06F0 = 0;
  qword_27F06F8 = 0;
  sub_68678C(&qword_27F06E8, __p, &v4, 1uLL);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27F0700 = 0;
  *algn_27F0708 = 0;
  qword_27F0710 = 0;
  sub_68678C(&qword_27F0700, __p, &v4, 1uLL);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27F0718 = 0;
  unk_27F0720 = 0;
  qword_27F0728 = 0;
  sub_68678C(&qword_27F0718, __p, &v4, 1uLL);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1F0E100();
  sub_3608D0(__p, "en_US");
  v4 = 0;
  sub_3608D0(v5, "en-US_US");
  v6 = 0;
  sub_3608D0(v7, "en_AU");
  v8 = 1;
  sub_3608D0(v9, "en-AU_AU");
  v10 = 1;
  sub_3608D0(v11, "en_CA");
  v12 = 2;
  sub_3608D0(v13, "en-CA_CA");
  v14 = 2;
  sub_3608D0(v15, "en_GB");
  v16 = 3;
  sub_3608D0(v17, "en-GB_GB");
  v18 = 3;
  sub_3608D0(v19, "en_IE");
  v20 = 4;
  sub_3608D0(v21, "en-IE_IE");
  v22 = 4;
  sub_3608D0(v23, "en_NZ");
  v24 = 4;
  sub_3608D0(v25, "en-NZ_NZ");
  v26 = 4;
  sub_3608D0(v27, "en_ZA");
  v28 = 4;
  sub_3608D0(v29, "en-ZA_ZA");
  v30 = 4;
  sub_19664AC(&unk_27F0748, __p, 14);
  v0 = 56;
  do
  {
    if (*(&__p[v0 - 1] - 1) < 0)
    {
      operator delete(__p[v0 - 4]);
    }

    v0 -= 4;
  }

  while (v0 * 8);
  sub_3608D0(__p, "US");
  v4 = 1;
  sub_3608D0(v5, "AU");
  v6 = 2;
  sub_3608D0(v7, "CA");
  v8 = 3;
  sub_3608D0(v9, "GB");
  v10 = 4;
  sub_3608D0(v11, "IE");
  v12 = 5;
  sub_3608D0(v13, "NZ");
  v14 = 5;
  sub_3608D0(v15, "ZA");
  v16 = 5;
  sub_3608D0(v17, "ZA");
  v18 = 5;
  sub_3608D0(v19, "IN");
  v20 = 7;
  sub_3608D0(v21, "DE");
  v22 = 6;
  sub_3608D0(v23, "CH");
  v24 = 6;
  sub_3608D0(v25, "NL");
  v26 = 6;
  sub_3608D0(v27, "DK");
  v28 = 6;
  sub_3608D0(v29, "NO");
  v30 = 6;
  sub_3608D0(v31, "FI");
  v32 = 6;
  sub_3608D0(v33, "SE");
  v34 = 6;
  sub_3608D0(v35, "BE");
  v36 = 6;
  sub_3608D0(v37, "AT");
  v38 = 6;
  sub_3608D0(v39, "MX");
  v40 = 6;
  sub_3608D0(v41, "AR");
  v42 = 6;
  sub_3608D0(v43, "CL");
  v44 = 6;
  sub_3608D0(v45, "BR");
  v46 = 6;
  sub_3608D0(v47, "SK");
  v48 = 6;
  sub_3608D0(v49, "TR");
  v50 = 6;
  sub_3608D0(v51, "PL");
  v52 = 6;
  sub_3608D0(v53, "HR");
  v54 = 6;
  sub_3608D0(v55, "RO");
  v56 = 6;
  sub_3608D0(v57, "HU");
  v58 = 6;
  sub_3608D0(v59, "VN");
  v60 = 6;
  sub_3608D0(v61, "GR");
  v62 = 6;
  sub_3608D0(v63, "IL");
  v64 = 6;
  sub_3608D0(v65, "NG");
  v66 = 6;
  sub_3608D0(v67, "AE");
  v68 = 6;
  sub_3608D0(v69, "EG");
  v70 = 6;
  sub_1966844(&unk_27F0770, __p, 34);
  v1 = 136;
  do
  {
    if (*(&__p[v1 - 1] - 1) < 0)
    {
      operator delete(__p[v1 - 4]);
    }

    v1 -= 4;
  }

  while (v1 * 8);
}

void sub_1F1925C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = (v15 + 1079);
  v18 = -1088;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 32;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 32;
    if (!v18)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_1F193E8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  *v0 = &off_2726AC8;
  *(v0 + 8) = *v3;
  v5 = v3[1];
  v221 = v0;
  *(v0 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  *(v0 + 24) = v1;
  sub_1A57240(v0 + 32);
  if (v2)
  {
    v245 = xmmword_2368410;
    v246 = xmmword_2368420;
    v247 = xmmword_2368430;
    v248 = 16843009;
    v249 = 1;
    v250 = 0;
    v251 = 0;
    v252 = xmmword_2368440;
    v253 = 0x4170000042480000;
    v254 = 8;
    v255 = 1;
    v256 = 0x3FD999999999999ALL;
    v257 = 0x10000003CLL;
    v258 = xmmword_2368450;
    v259 = xmmword_2368460;
    v260 = xmmword_2368470;
    v261 = xmmword_2368480;
    v262 = 16777473;
    sub_3608D0(v420, "en");
    sub_3608D0(&v423, "es");
    sub_3608D0(v426, "de");
    sub_3608D0(v430, "fr");
    sub_3608D0(v433, "it");
    sub_3608D0(&v436, "no");
    sub_3608D0(&v438, "nb");
    sub_3608D0(v441, "fi");
    sub_3608D0(v444, "pt");
    sub_3608D0(&v445, "nl");
    sub_3608D0(v447, "sv");
    sub_3608D0(&v450, "is");
    sub_3608D0(&v453, "da");
    sub_3608D0(&v456, "zh");
    sub_3608D0(v460, "ja");
    sub_3608D0(v463, "vi");
    sub_3608D0(v466, "th");
    sub_3608D0(&v469, "ms");
    sub_3608D0(v472, "tr");
    sub_3608D0(v475, "fil");
    sub_3608D0(&v478, "bg");
    sub_3608D0(&v481, "ru");
    sub_3608D0(&v483 + 8, "ro");
    sub_3608D0(&v485 + 8, "pl");
    sub_3608D0(v489, "uk");
    sub_3608D0(&v490, "cs");
    sub_3608D0(&v492, "el");
    sub_3608D0(&v496, "cy");
    sub_3608D0(v498, "hu");
    sub_3608D0(&v499, "sk");
    sub_3608D0(&v502, "hr");
    sub_3608D0(&v505, "et");
    sub_3608D0(&v508, "lt");
    sub_3608D0(&v511, "lv");
    sub_3608D0(&v516, "mk");
    sub_3608D0(&v520, "ca");
    sub_3608D0(&v523, "bs");
    sub_3608D0(&v528, "sr");
    sub_3608D0(&v531, "sq");
    sub_3608D0(&v534, "hi");
    sub_3608D0(&v536, "id");
    sub_3608D0(&v538, "jv");
    sub_3608D0(&v540, "fj");
    sub_3608D0(&v543, "my");
    sub_3608D0(v546, "km");
    sub_3608D0(&v549, "khm");
    sub_3608D0(v552, "bn");
    sub_3608D0(v555, "ben");
    sub_3608D0(v559, "dz");
    sub_3608D0(&v560, "ne");
    sub_3608D0(v562, "ur");
    sub_3608D0(v565, "kk");
    sub_3608D0(v567, "tk");
    sub_3608D0(&v568, "uz");
    v263[0] = 0;
    v263[1] = 0;
    v264 = 0;
    sub_68678C(v263, v420, v570, 0x36uLL);
    v6 = 162;
    do
    {
      if (SHIBYTE(v420[v6 - 1]) < 0)
      {
        operator delete(*&v419[v6 * 8 + 24]);
      }

      v6 -= 3;
    }

    while (v6 * 8);
    sub_3608D0(v420, "IL");
    sub_3608D0(&v423, "TN");
    sub_3608D0(v426, "MA");
    sub_3608D0(v430, "IQ");
    sub_3608D0(v433, "IR");
    sub_3608D0(&v436, "JO");
    sub_3608D0(&v438, "LB");
    sub_3608D0(v441, "LY");
    sub_3608D0(v444, "EG");
    sub_3608D0(&v445, "OM");
    sub_3608D0(v447, "YE");
    sub_3608D0(&v450, "SA");
    sub_3608D0(&v453, "SY");
    sub_3608D0(&v456, "BH");
    sub_3608D0(v460, "QA");
    sub_3608D0(v463, "AE");
    sub_3608D0(v466, "KW");
    sub_3608D0(&v469, "EH");
    sub_3608D0(v472, "NE");
    sub_3608D0(v475, "ML");
    sub_3608D0(&v478, "TD");
    sub_3608D0(&v481, "MR");
    sub_3608D0(&v483 + 8, "SD");
    v265[0] = 0;
    v265[1] = 0;
    v266 = 0;
    sub_68678C(v265, v420, &v485 + 8, 0x17uLL);
    v7 = 69;
    do
    {
      if (SHIBYTE(v420[v7 - 1]) < 0)
      {
        operator delete(*&v419[v7 * 8 + 24]);
      }

      v7 -= 3;
    }

    while (v7 * 8);
    sub_3608D0(v420, "6_7_4");
    sub_3608D0(&v423, "7_7_4");
    sub_3608D0(v426, "8_7_4");
    sub_3608D0(v430, "9_7_4");
    sub_3608D0(v433, "10_7_4");
    sub_3608D0(&v436, "8_8_4");
    sub_3608D0(&v438, "9_8_4");
    sub_3608D0(v441, "10_8_4");
    sub_3608D0(v444, "8_9_4");
    sub_3608D0(&v445, "9_9_4");
    sub_3608D0(v447, "10_9_4");
    v267[0] = 0;
    v267[1] = 0;
    v268 = 0;
    sub_68678C(v267, v420, &v450, 0xBuLL);
    v8 = 33;
    do
    {
      if (SHIBYTE(v420[v8 - 1]) < 0)
      {
        operator delete(*&v419[v8 * 8 + 24]);
      }

      v8 -= 3;
    }

    while (v8 * 8);
    LODWORD(v269) = 15;
    BYTE4(v269) = 1;
    v270 = 0x400000010;
    v271 = 0u;
    v272 = 0u;
    v273 = 0u;
    v274 = 0x4008000000000000;
    v275 = 0x100000014;
    v276 = 10;
    v277 = 257;
    v278 = xmmword_2368490;
    v279 = xmmword_23684A0;
    sub_3608D0(v420, "browse_subcategory_gasstations");
    sub_3608D0(&v423, "browse_subcategory_parking");
    sub_3608D0(v426, "browse_subcategory_restaurants");
    sub_3608D0(v430, "browse_subcategory_coffee_shops");
    sub_3608D0(v433, "browse_subcategory_groceries");
    memset(v280, 0, sizeof(v280));
    sub_68678C(v280, v420, &v436, 5uLL);
    for (i = 0; i != -30; i -= 6)
    {
      if (*(&v435 + i * 4 + 7) < 0)
      {
        operator delete(*&v433[i]);
      }
    }

    sub_3608D0(v420, "browse_subcategory_gasstations");
    sub_3608D0(&v423, "browse_subcategory_parking");
    sub_3608D0(v426, "browse_subcategory_restaurants");
    sub_3608D0(v430, "browse_subcategory_coffee_shops");
    sub_3608D0(v433, "browse_subcategory_groceries");
    v281[0] = 0;
    v281[1] = 0;
    v282 = 0;
    sub_68678C(v281, v420, &v436, 5uLL);
    for (j = 0; j != -30; j -= 6)
    {
      if (*(&v435 + j * 4 + 7) < 0)
      {
        operator delete(*&v433[j]);
      }
    }

    sub_3608D0(v420, "browse_subcategory_evcharger_carplay");
    sub_3608D0(&v423, "browse_subcategory_parking");
    sub_3608D0(v426, "browse_subcategory_restaurants");
    sub_3608D0(v430, "browse_subcategory_coffee_shops");
    sub_3608D0(v433, "browse_subcategory_groceries");
    v283[0] = 0;
    v283[1] = 0;
    v284 = 0;
    sub_68678C(v283, v420, &v436, 5uLL);
    for (k = 0; k != -30; k -= 6)
    {
      if (*(&v435 + k * 4 + 7) < 0)
      {
        operator delete(*&v433[k]);
      }
    }

    sub_3608D0(v420, "browse_subcategory_gasstations");
    sub_3608D0(&v423, "browse_subcategory_parking");
    sub_3608D0(v426, "browse_subcategory_restaurants");
    sub_3608D0(v430, "browse_subcategory_coffee_shops");
    sub_3608D0(v433, "browse_subcategory_groceries");
    v285[0] = 0;
    v285[1] = 0;
    v286 = 0;
    sub_68678C(v285, v420, &v436, 5uLL);
    for (m = 0; m != -30; m -= 6)
    {
      if (*(&v435 + m * 4 + 7) < 0)
      {
        operator delete(*&v433[m]);
      }
    }

    sub_3608D0(v420, "active.hiking");
    sub_3608D0(&v423, "active.parks.trailhead");
    sub_3608D0(v426, "hotelstravel.campgrounds");
    sub_3608D0(v430, "hotelstravel.visitorcenters");
    sub_3608D0(v433, "travel_and_leisure.hiking_trail");
    sub_3608D0(&v436, "travel_and_leisure.hiking_trail.trailhead");
    sub_3608D0(&v438, "travel_and_leisure.campground");
    sub_3608D0(v441, "travel_and_leisure.visitor_center");
    sub_1A5C918(&v287, v420, 8);
    for (n = 0; n != -192; n -= 24)
    {
      if (*(&v443 + n + 7) < 0)
      {
        operator delete(*&v441[n]);
      }
    }

    sub_3608D0(v420, "active");
    sub_3608D0(&v423, "emergencyrooms");
    sub_3608D0(v426, "hospitals");
    sub_3608D0(v430, "urgent_care");
    sub_3608D0(v433, "airports");
    sub_3608D0(&v436, "skiresorts");
    sub_3608D0(&v438, "transport");
    sub_3608D0(v441, "touristattraction");
    sub_3608D0(v444, "physicalfeature");
    sub_3608D0(&v445, "travel_and_leisure");
    sub_3608D0(v447, "emergency_room");
    sub_3608D0(&v450, "hospital");
    sub_3608D0(&v453, "urgent_care_center");
    sub_3608D0(&v456, "airport");
    sub_3608D0(v460, "ski_resort");
    sub_3608D0(v463, "transportation_service");
    sub_3608D0(v466, "tourist_attraction");
    sub_3608D0(&v469, "physical_feature");
    sub_1A5C918(&v289, v420, 18);
    v14 = 54;
    do
    {
      if (SHIBYTE(v420[v14 - 1]) < 0)
      {
        operator delete(*&v419[v14 * 8 + 24]);
      }

      v14 -= 3;
    }

    while (v14 * 8);
    sub_3608D0(v420, "kids_activities");
    sub_3608D0(&v423, "parks");
    sub_3608D0(v426, "playgrounds");
    sub_3608D0(v430, "sportscomplex");
    sub_3608D0(v433, "statue");
    sub_3608D0(&v436, "zoos");
    sub_3608D0(&v438, "kids_fun_center");
    sub_3608D0(v441, "park");
    sub_3608D0(v444, "playground");
    sub_3608D0(&v445, "sports_complex");
    sub_3608D0(v447, "zoo");
    sub_1A5C918(&v291, v420, 11);
    v15 = 33;
    do
    {
      if (SHIBYTE(v420[v15 - 1]) < 0)
      {
        operator delete(*&v419[v15 * 8 + 24]);
      }

      v15 -= 3;
    }

    while (v15 * 8);
    sub_3608D0(v420, "food");
    sub_3608D0(&v423, "restaurants");
    sub_3608D0(v426, "financialservices");
    sub_3608D0(v430, "localservices");
    sub_3608D0(v433, "homedecor");
    sub_3608D0(&v436, "beautysvc");
    sub_3608D0(&v438, "officebuilding");
    sub_3608D0(v441, "supermarket");
    sub_3608D0(v444, "flowers");
    sub_3608D0(&v445, "homeandgarden");
    sub_3608D0(v447, "servicestations");
    sub_3608D0(&v450, "parks");
    sub_3608D0(&v453, "playgrounds");
    sub_3608D0(&v456, "sportscomplex");
    sub_3608D0(v460, "trainstations");
    sub_3608D0(v463, "food_mart");
    sub_3608D0(v466, "restaurant");
    sub_3608D0(&v469, "financial_service");
    sub_3608D0(v472, "local_service");
    sub_3608D0(v475, "home_decor_store");
    sub_3608D0(&v478, "beauty_service");
    sub_3608D0(&v481, "office_building");
    sub_3608D0(&v483 + 8, "floral_shop");
    sub_3608D0(&v485 + 8, "home_goods_store");
    sub_3608D0(v489, "service_station");
    sub_3608D0(&v490, "park");
    sub_3608D0(&v492, "playground");
    sub_3608D0(&v496, "sports_complex");
    sub_3608D0(v498, "train_station");
    sub_1A5C918(&v293, v420, 29);
    v16 = 87;
    do
    {
      if (SHIBYTE(v420[v16 - 1]) < 0)
      {
        operator delete(*&v419[v16 * 8 + 24]);
      }

      v16 -= 3;
    }

    while (v16 * 8);
    v295[0] = 1;
    *&v295[4] = xmmword_23684B0;
    v296 = xmmword_23684C0;
    v297 = 30;
    v298 = 0x4000000000000000;
    v299 = xmmword_23684D0;
    v300 = 2;
    v301 = 257;
    sub_3608D0(&v615, "ranker_pw_en_model");
    sub_3608D0(v598, "CA");
    sub_3608D0(v599, "GB");
    sub_3608D0(v600, "AU");
    sub_3608D0(v601, "NZ");
    sub_3608D0(v602, "IE");
    sub_3608D0(v603, "ZA");
    memset(v398, 0, sizeof(v398));
    sub_68678C(v398, v598, &v604, 6uLL);
    sub_1A5C99C(&v604, &v615, v398);
    sub_3608D0(v386, "ranker_pw_us_model");
    sub_3608D0(v379, "US");
    v383 = 0;
    v382 = 0;
    v384 = 0;
    sub_68678C(&v382, v379, v381, 1uLL);
    sub_1A5C99C(v607, v386, &v382);
    sub_3608D0(&v376, "ranker_pw_eu_model");
    sub_3608D0(v402, "DE");
    sub_3608D0(v404, "FR");
    sub_3608D0(v405, "BE");
    sub_3608D0(v406, "CH");
    sub_3608D0(v407, "AT");
    sub_3608D0(v408, "ES");
    sub_3608D0(v409, "IT");
    sub_3608D0(v410, "NL");
    sub_3608D0(v411, "PT");
    sub_3608D0(v412, "NO");
    sub_3608D0(v413, "DK");
    sub_3608D0(v414, "FI");
    sub_3608D0(v415, "SE");
    v373 = 0uLL;
    v374 = 0;
    sub_68678C(&v373, v402, &v416, 0xDuLL);
    sub_1A5C99C(&v609, &v376, &v373);
    sub_3608D0(&v371, "ranker_pw_cn_model");
    sub_3608D0(&v613, "CN");
    v369 = 0uLL;
    v370 = 0;
    sub_68678C(&v369, &v613, &v615, 1uLL);
    sub_1A5C99C(&v610, &v371, &v369);
    sub_3608D0(&v367, "ranker_pw_cjk_model");
    sub_3608D0(v589, "JP");
    sub_3608D0(v590, "MO");
    sub_3608D0(v591, "PH");
    sub_3608D0(v592, "MY");
    sub_3608D0(v593, "TW");
    sub_3608D0(v594, "HK");
    v596 = 0;
    v595 = 0;
    v597 = 0;
    sub_68678C(&v595, v589, &v595, 6uLL);
    sub_1A5C99C(&v611, &v367, &v595);
    sub_3608D0(__p, "ranker_pw_row_model");
    sub_3608D0(v420, "AR");
    sub_3608D0(&v423, "BR");
    sub_3608D0(v426, "MX");
    sub_3608D0(v430, "CL");
    sub_3608D0(v433, "CZ");
    sub_3608D0(&v436, "GR");
    sub_3608D0(&v438, "HR");
    sub_3608D0(v441, "HU");
    sub_3608D0(v444, "ID");
    sub_3608D0(&v445, "IN");
    sub_3608D0(v447, "PL");
    sub_3608D0(&v450, "RO");
    sub_3608D0(&v453, "SG");
    sub_3608D0(&v456, "SK");
    sub_3608D0(v460, "TH");
    sub_3608D0(v463, "TR");
    sub_3608D0(v466, "VN");
    sub_3608D0(&v469, "AE");
    sub_3608D0(v472, "EG");
    sub_3608D0(v475, "IL");
    sub_3608D0(&v478, "NG");
    sub_3608D0(&v481, "MA");
    v240 = 0;
    v241 = 0;
    v242 = 0;
    sub_68678C(&v240, v420, &v483 + 8, 0x16uLL);
    sub_1A5C99C(&v612, __p, &v240);
    v302 = 0;
    v303 = 0;
    v304 = 0;
    sub_1A5CA34(&v302, &v604, &v613, 6uLL);
    v17 = 288;
    do
    {
      v400[0] = &v603[v17];
      sub_195E3E8(v400);
      if (v602[v17 + 23] < 0)
      {
        operator delete(*&v602[v17]);
      }

      v17 -= 48;
    }

    while (v17);
    v400[0] = &v240;
    sub_195E3E8(v400);
    v18 = 66;
    do
    {
      if (SHIBYTE(v420[v18 - 1]) < 0)
      {
        operator delete(*&v419[v18 * 8 + 24]);
      }

      v18 -= 3;
    }

    while (v18 * 8);
    if (v244 < 0)
    {
      operator delete(__p[0]);
    }

    v420[0] = &v595;
    sub_195E3E8(v420);
    for (ii = 0; ii != -144; ii -= 24)
    {
      if (v594[ii + 23] < 0)
      {
        operator delete(*&v594[ii]);
      }
    }

    if (SHIBYTE(v368) < 0)
    {
      operator delete(v367);
    }

    v420[0] = &v369;
    sub_195E3E8(v420);
    if (SHIBYTE(v614) < 0)
    {
      operator delete(v613);
    }

    if (SHIBYTE(v372) < 0)
    {
      operator delete(v371);
    }

    v420[0] = &v373;
    sub_195E3E8(v420);
    v20 = 39;
    do
    {
      if (SHIBYTE(v402[v20 - 1]) < 0)
      {
        operator delete(v400[v20]);
      }

      v20 -= 3;
    }

    while (v20 * 8);
    if (SHIBYTE(v377) < 0)
    {
      operator delete(v376);
    }

    v420[0] = &v382;
    sub_195E3E8(v420);
    if (v380 < 0)
    {
      operator delete(v379[0]);
    }

    if (v387 < 0)
    {
      operator delete(v386[0]);
    }

    v420[0] = v398;
    sub_195E3E8(v420);
    for (jj = 0; jj != -144; jj -= 24)
    {
      if (v603[jj + 23] < 0)
      {
        operator delete(*&v603[jj]);
      }
    }

    if (SHIBYTE(v616) < 0)
    {
      operator delete(v615);
    }

    sub_3608D0(v420, "EG");
    v423 = 0x4058000000000000;
    sub_3608D0(v424, "CA");
    v427 = 0x4058000000000000;
    sub_3608D0(&v428, "GB");
    v432 = 0x4058000000000000;
    sub_3608D0(v433, "US");
    v436 = 0x4058000000000000;
    sub_3608D0(v437, "DE");
    v439 = 0x4058000000000000;
    sub_3608D0(&v440, "FR");
    v443 = 0x4058000000000000;
    sub_3608D0(v444, "BE");
    v445 = 0x4058000000000000;
    sub_3608D0(v446, "CH");
    v448 = 0x4058000000000000;
    sub_3608D0(v449, "CN");
    v452 = 0x4058000000000000;
    sub_3608D0(&v453, "AT");
    v456 = 0x4058000000000000;
    sub_3608D0(v457, "ES");
    v461 = 0x4058000000000000;
    sub_3608D0(v462, "AU");
    v465 = 0x4058000000000000;
    sub_3608D0(v466, "NZ");
    v469 = 0x4058000000000000;
    sub_3608D0(&v470, "IE");
    v473 = 0x4058000000000000;
    sub_3608D0(&v474, "ZA");
    v477 = 0x4058000000000000;
    sub_3608D0(&v478, "IT");
    v481 = 0x4058000000000000;
    sub_3608D0(&v482, "NL");
    v484 = 0x4058000000000000;
    sub_3608D0(&v485, "PT");
    v488 = 0x4058000000000000;
    sub_3608D0(v489, "NO");
    v490 = 0x4058000000000000;
    sub_3608D0(v491, "DK");
    v494 = 0x4058000000000000;
    sub_3608D0(&v495, "FI");
    v497[1] = 0x4058000000000000;
    sub_3608D0(v498, "SE");
    v499 = 0x4058000000000000;
    sub_3608D0(&v500, "GB");
    v503 = 0x4058000000000000;
    sub_3608D0(&v504, "JP");
    v507 = 0x4058000000000000;
    sub_3608D0(&v508, "MO");
    v511 = 0x4058000000000000;
    sub_3608D0(v512, "PH");
    v518 = 0x4058000000000000;
    sub_3608D0(&v519, "MY");
    v522 = 0x4058000000000000;
    sub_3608D0(&v523, "TW");
    v528 = 0x4058000000000000;
    sub_3608D0(&v529, "HK");
    v532 = 0x4058000000000000;
    sub_3608D0(&v533, "AR");
    v535 = 0x4058000000000000;
    sub_3608D0(&v536, "BR");
    v538 = 0x4058000000000000;
    sub_3608D0(v539, "MX");
    v541 = 0x4058000000000000;
    sub_3608D0(&v542, "CL");
    v545 = 0x4058000000000000;
    sub_3608D0(v546, "CZ");
    v549 = 0x4058000000000000;
    sub_3608D0(&v550, "GR");
    v553 = 0x4058000000000000;
    sub_3608D0(v554, "HR");
    v558 = 0x4058000000000000;
    sub_3608D0(v559, "HU");
    v560 = 0x4058000000000000;
    sub_3608D0(v561, "ID");
    v563 = 0x4058000000000000;
    sub_3608D0(v564, "IN");
    v566 = 0x4058000000000000;
    sub_3608D0(v567, "PL");
    v568 = 0x4058000000000000;
    sub_3608D0(v569, "RO");
    v570[1] = 0x4058000000000000;
    sub_3608D0(v571, "SG");
    v572 = 0x4058000000000000;
    sub_3608D0(v573, "SK");
    v574 = 0x4058000000000000;
    sub_3608D0(v575, "TH");
    v576 = 0x4058000000000000;
    sub_3608D0(v577, "TR");
    v578 = 0x4058000000000000;
    sub_3608D0(v579, "VN");
    v580 = 0x4058000000000000;
    sub_3608D0(v581, "AE");
    v582 = 0x4058000000000000;
    sub_3608D0(v583, "IL");
    v584 = 0x4058000000000000;
    sub_3608D0(v585, "NG");
    v586 = 0x4058000000000000;
    sub_3608D0(v587, "MA");
    v588 = 0x4058000000000000;
    sub_1A5CB44(v305, v420, 50);
    v22 = 1600;
    do
    {
      if (v419[v22 + 39] < 0)
      {
        operator delete(*&v419[v22 + 16]);
      }

      v22 -= 32;
    }

    while (v22);
    v314 = 5;
    sub_3608D0(v386, "speller-enus-esus");
    sub_3608D0(v589, "US");
    sub_3608D0(v590, "AE");
    v383 = 0;
    v382 = 0;
    v384 = 0;
    sub_68678C(&v382, v589, v591, 2uLL);
    sub_1A5C99C(v402, v386, &v382);
    sub_3608D0(v379, "speller-GB");
    sub_3608D0(&v373, "GB");
    v376 = 0uLL;
    v377 = 0;
    sub_68678C(&v376, &v373, &v375, 1uLL);
    sub_1A5C99C(v405, v379, &v376);
    sub_3608D0(&v371, "speller-AU");
    sub_3608D0(&v615, "AU");
    sub_3608D0(v617, "NZ");
    v369 = 0uLL;
    v370 = 0;
    sub_68678C(&v369, &v615, &v619, 2uLL);
    sub_1A5C99C(v407, &v371, &v369);
    sub_3608D0(&v613, "speller-CA");
    sub_3608D0(&v595, "CA");
    v367 = 0uLL;
    v368 = 0;
    sub_68678C(&v367, &v595, v598, 1uLL);
    sub_1A5C99C(v409, &v613, &v367);
    sub_3608D0(__p, "speller-EU");
    sub_3608D0(&v604, "ES");
    sub_3608D0(v606, "IT");
    sub_3608D0(v607, "NL");
    v240 = 0;
    v241 = 0;
    v242 = 0;
    sub_68678C(&v240, &v604, &v608, 3uLL);
    sub_1A5C99C(v411, __p, &v240);
    sub_3608D0(v400, "speller-FR-DE");
    sub_3608D0(v398, "FR");
    sub_3608D0(v399, "DE");
    v237 = 0;
    v238 = 0;
    v239 = 0;
    sub_68678C(&v237, v398, v400, 2uLL);
    sub_1A5C99C(v413, v400, &v237);
    sub_3608D0(v396, "speller-EU-offline-mixed-reduced");
    sub_3608D0(v598, "AT");
    sub_3608D0(v599, "CH");
    sub_3608D0(v600, "BE");
    v234 = 0;
    v235 = 0;
    v236 = 0;
    sub_68678C(&v234, v598, v601, 3uLL);
    sub_1A5C99C(v415, v396, &v234);
    sub_3608D0(v232, "speller-GR");
    sub_3608D0(v394, "GR");
    v229 = 0;
    v230 = 0;
    v231 = 0;
    sub_68678C(&v229, v394, v396, 1uLL);
    sub_1A5C99C(&v417, v232, &v229);
    sub_3608D0(&v227, "speller-JP");
    sub_3608D0(v392, "JP");
    v225 = 0uLL;
    v226 = 0;
    sub_68678C(&v225, v392, v394, 1uLL);
    sub_1A5C99C(&v418, &v227, &v225);
    sub_3608D0(v223, "speller-ROW");
    sub_3608D0(v420, "IN");
    sub_3608D0(&v423, "PT");
    sub_3608D0(v426, "FI");
    sub_3608D0(v430, "SE");
    sub_3608D0(v433, "AD");
    sub_3608D0(&v436, "MC");
    sub_3608D0(&v438, "LU");
    sub_3608D0(v441, "VA");
    sub_3608D0(v444, "IS");
    sub_3608D0(&v445, "GL");
    sub_3608D0(v447, "FO");
    sub_3608D0(&v450, "IE");
    sub_3608D0(&v453, "NO");
    sub_3608D0(&v456, "DK");
    sub_3608D0(v460, "AR");
    sub_3608D0(v463, "BR");
    sub_3608D0(v466, "MX");
    sub_3608D0(&v469, "CL");
    sub_3608D0(v472, "TW");
    sub_3608D0(v475, "HK");
    sub_3608D0(&v478, "MO");
    sub_3608D0(&v481, "PL");
    sub_3608D0(&v483 + 8, "HR");
    sub_3608D0(&v485 + 8, "RO");
    sub_3608D0(v489, "SK");
    sub_3608D0(&v490, "CZ");
    sub_3608D0(&v492, "HU");
    sub_3608D0(&v496, "VN");
    sub_3608D0(v498, "TH");
    sub_3608D0(&v499, "SG");
    sub_3608D0(&v502, "MY");
    sub_3608D0(&v505, "PH");
    sub_3608D0(&v508, "TR");
    sub_3608D0(&v511, "AE");
    sub_3608D0(&v516, "IL");
    sub_3608D0(&v520, "SA");
    sub_3608D0(&v523, "NG");
    sub_3608D0(&v528, "EG");
    sub_3608D0(&v531, "MA");
    sub_3608D0(&v534, "ZA");
    v390 = 0;
    v389 = 0;
    v391 = 0;
    sub_68678C(&v389, v420, &v536, 0x28uLL);
    sub_1A5C99C(v419, v223, &v389);
    v316 = 0;
    v317 = 0;
    v318 = 0;
    sub_1A5CA34(&v316, v402, v420, 0xAuLL);
    v23 = 480;
    do
    {
      v222[0] = &v400[v23 / 8];
      sub_195E3E8(v222);
      if (v399[v23 + 23] < 0)
      {
        operator delete(*&v399[v23]);
      }

      v23 -= 48;
    }

    while (v23);
    v222[0] = &v389;
    sub_195E3E8(v222);
    v24 = 120;
    do
    {
      if (SHIBYTE(v420[v24 - 1]) < 0)
      {
        operator delete(*&v419[v24 * 8 + 24]);
      }

      v24 -= 3;
    }

    while (v24 * 8);
    if (v224 < 0)
    {
      operator delete(v223[0]);
    }

    v420[0] = &v225;
    sub_195E3E8(v420);
    if (SHIBYTE(v393) < 0)
    {
      operator delete(v392[0]);
    }

    if (SHIBYTE(v228) < 0)
    {
      operator delete(v227);
    }

    v420[0] = &v229;
    sub_195E3E8(v420);
    if (v395 < 0)
    {
      operator delete(v394[0]);
    }

    if (v233 < 0)
    {
      operator delete(v232[0]);
    }

    v420[0] = &v234;
    sub_195E3E8(v420);
    for (kk = 0; kk != -72; kk -= 24)
    {
      if (v600[kk + 23] < 0)
      {
        operator delete(*&v600[kk]);
      }
    }

    if (v397 < 0)
    {
      operator delete(v396[0]);
    }

    v420[0] = &v237;
    sub_195E3E8(v420);
    for (mm = 0; mm != -6; mm -= 3)
    {
      if (v399[mm * 8 + 23] < 0)
      {
        operator delete(v398[mm + 3]);
      }
    }

    if (v401 < 0)
    {
      operator delete(v400[0]);
    }

    v420[0] = &v240;
    sub_195E3E8(v420);
    for (nn = 0; nn != -72; nn -= 24)
    {
      if (v607[nn + 23] < 0)
      {
        operator delete(*&v607[nn]);
      }
    }

    if (v244 < 0)
    {
      operator delete(__p[0]);
    }

    v420[0] = &v367;
    sub_195E3E8(v420);
    if (SHIBYTE(v597) < 0)
    {
      operator delete(v595);
    }

    if (SHIBYTE(v614) < 0)
    {
      operator delete(v613);
    }

    v420[0] = &v369;
    sub_195E3E8(v420);
    for (i1 = 0; i1 != -6; i1 -= 3)
    {
      if (v618[i1 * 8] < 0)
      {
        operator delete(v617[i1]);
      }
    }

    if (SHIBYTE(v372) < 0)
    {
      operator delete(v371);
    }

    v420[0] = &v376;
    sub_195E3E8(v420);
    if (SHIBYTE(v374) < 0)
    {
      operator delete(v373);
    }

    if (v380 < 0)
    {
      operator delete(v379[0]);
    }

    v420[0] = &v382;
    sub_195E3E8(v420);
    for (i2 = 0; i2 != -6; i2 -= 3)
    {
      if (v590[i2 * 8 + 23] < 0)
      {
        operator delete(v589[i2 + 3]);
      }
    }

    if (v387 < 0)
    {
      operator delete(v386[0]);
    }

    sub_3608D0(&v373, "speller-enus-esus");
    sub_3608D0(v402, "from_ENUSESUS");
    sub_3608D0(v404, "to_ENUSESUS");
    v371 = 0uLL;
    v372 = 0;
    sub_68678C(&v371, v402, v405, 2uLL);
    sub_1A5C99C(v420, &v373, &v371);
    sub_3608D0(&v369, "speller-GB");
    sub_3608D0(&v604, "from_SOURCE");
    sub_3608D0(v606, "to_TARGET");
    v613 = 0uLL;
    v614 = 0;
    sub_68678C(&v613, &v604, v607, 2uLL);
    sub_1A5C99C(v426, &v369, &v613);
    sub_3608D0(&v367, "speller-AU");
    sub_3608D0(v598, "from_AU");
    sub_3608D0(v599, "to_AU");
    v596 = 0;
    v595 = 0;
    v597 = 0;
    sub_68678C(&v595, v598, v600, 2uLL);
    sub_1A5C99C(v433, &v367, &v595);
    sub_3608D0(__p, "speller-CA");
    sub_3608D0(v589, "from_CA");
    sub_3608D0(v590, "to_CA");
    v240 = 0;
    v241 = 0;
    v242 = 0;
    sub_68678C(&v240, v589, v591, 2uLL);
    sub_1A5C99C(&v438, __p, &v240);
    sub_3608D0(v400, "speller-EU");
    sub_3608D0(&v615, "from_EU");
    sub_3608D0(v617, "to_EU");
    v237 = 0;
    v238 = 0;
    v239 = 0;
    sub_68678C(&v237, &v615, &v619, 2uLL);
    sub_1A5C99C(v444, v400, &v237);
    sub_3608D0(v396, "speller-GR");
    sub_3608D0(v398, "from_SOURCE");
    sub_3608D0(v399, "to_TARGET");
    v234 = 0;
    v235 = 0;
    v236 = 0;
    sub_68678C(&v234, v398, v400, 2uLL);
    sub_1A5C99C(v447, v396, &v234);
    sub_3608D0(v232, "speller-JP");
    sub_3608D0(v386, "from_SOURCE");
    sub_3608D0(v388, "to_TARGET");
    v229 = 0;
    v230 = 0;
    v231 = 0;
    sub_68678C(&v229, v386, &v389, 2uLL);
    sub_1A5C99C(&v453, v232, &v229);
    sub_3608D0(v394, "speller-FR-DE");
    sub_3608D0(&v382, "from_DEFRAC");
    sub_3608D0(v385, "to_DEFRAC");
    v227 = 0uLL;
    v228 = 0;
    sub_68678C(&v227, &v382, v386, 2uLL);
    sub_1A5C99C(v460, v394, &v227);
    sub_3608D0(&v225, "speller-EU-offline-mixed-reduced");
    sub_3608D0(v379, "from_SOURCE");
    sub_3608D0(v381, "to_TARGET");
    v392[1] = 0;
    v392[0] = 0;
    v393 = 0;
    sub_68678C(v392, v379, &v382, 2uLL);
    sub_1A5C99C(v466, &v225, v392);
    sub_3608D0(v223, "speller-ROW");
    sub_3608D0(&v376, "from_GLOBAL");
    sub_3608D0(v378, "to_GLOBAL");
    v390 = 0;
    v389 = 0;
    v391 = 0;
    sub_68678C(&v389, &v376, v379, 2uLL);
    sub_1A5C99C(v472, v223, &v389);
    v319 = 0;
    v320 = 0;
    v321 = 0;
    sub_1A5CA34(&v319, v420, &v478, 0xAuLL);
    v30 = 480;
    do
    {
      v222[0] = &v419[v30 + 24];
      sub_195E3E8(v222);
      if (v419[v30 + 23] < 0)
      {
        operator delete(*&v419[v30]);
      }

      v30 -= 48;
    }

    while (v30);
    v222[0] = &v389;
    sub_195E3E8(v222);
    for (i3 = 0; i3 != -48; i3 -= 24)
    {
      if (v378[i3 + 23] < 0)
      {
        operator delete(*&v378[i3]);
      }
    }

    if (v224 < 0)
    {
      operator delete(v223[0]);
    }

    *&v376 = v392;
    sub_195E3E8(&v376);
    for (i4 = 0; i4 != -48; i4 -= 24)
    {
      if (v381[i4 + 23] < 0)
      {
        operator delete(*&v381[i4]);
      }
    }

    if (SHIBYTE(v226) < 0)
    {
      operator delete(v225);
    }

    v379[0] = &v227;
    sub_195E3E8(v379);
    for (i5 = 0; i5 != -48; i5 -= 24)
    {
      if (v385[i5 + 23] < 0)
      {
        operator delete(*&v385[i5]);
      }
    }

    if (v395 < 0)
    {
      operator delete(v394[0]);
    }

    v382 = &v229;
    sub_195E3E8(&v382);
    for (i6 = 0; i6 != -48; i6 -= 24)
    {
      if (v388[i6 + 23] < 0)
      {
        operator delete(*&v388[i6]);
      }
    }

    if (v233 < 0)
    {
      operator delete(v232[0]);
    }

    v386[0] = &v234;
    sub_195E3E8(v386);
    for (i7 = 0; i7 != -6; i7 -= 3)
    {
      if (v399[i7 * 8 + 23] < 0)
      {
        operator delete(v398[i7 + 3]);
      }
    }

    if (v397 < 0)
    {
      operator delete(v396[0]);
    }

    v398[0] = &v237;
    sub_195E3E8(v398);
    for (i8 = 0; i8 != -6; i8 -= 3)
    {
      if (v618[i8 * 8] < 0)
      {
        operator delete(v617[i8]);
      }
    }

    if (v401 < 0)
    {
      operator delete(v400[0]);
    }

    *&v615 = &v240;
    sub_195E3E8(&v615);
    for (i9 = 0; i9 != -6; i9 -= 3)
    {
      if (v590[i9 * 8 + 23] < 0)
      {
        operator delete(v589[i9 + 3]);
      }
    }

    if (v244 < 0)
    {
      operator delete(__p[0]);
    }

    v589[0] = &v595;
    sub_195E3E8(v589);
    for (i10 = 0; i10 != -6; i10 -= 3)
    {
      if (v599[i10 * 8 + 23] < 0)
      {
        operator delete(v598[i10 + 3]);
      }
    }

    if (SHIBYTE(v368) < 0)
    {
      operator delete(v367);
    }

    v598[0] = &v613;
    sub_195E3E8(v598);
    for (i11 = 0; i11 != -48; i11 -= 24)
    {
      if (v606[i11 + 23] < 0)
      {
        operator delete(*&v606[i11]);
      }
    }

    if (SHIBYTE(v370) < 0)
    {
      operator delete(v369);
    }

    *&v604 = &v371;
    sub_195E3E8(&v604);
    for (i12 = 0; i12 != -48; i12 -= 24)
    {
      if (v404[i12 + 23] < 0)
      {
        operator delete(*&v404[i12]);
      }
    }

    if (SHIBYTE(v374) < 0)
    {
      operator delete(v373);
    }

    sub_3608D0(v420, "HK");
    sub_3608D0(&v423, "JP");
    sub_3608D0(v426, "MO");
    sub_3608D0(v430, "TW");
    v322 = 0;
    v323 = 0;
    v324 = 0;
    sub_68678C(&v322, v420, v433, 4uLL);
    for (i13 = 0; i13 != -24; i13 -= 6)
    {
      if (*(&v432 + i13 * 4 + 7) < 0)
      {
        operator delete(*&v430[i13]);
      }
    }

    sub_3608D0(&v604, "geotagger_en_us_model");
    sub_3608D0(v420, "US");
    sub_3608D0(&v423, "CA");
    sub_3608D0(v426, "GB");
    sub_3608D0(v430, "AU");
    sub_3608D0(v433, "NZ");
    sub_3608D0(&v436, "IE");
    sub_3608D0(&v438, "ZA");
    memset(v598, 0, sizeof(v598));
    sub_68678C(v598, v420, v441, 7uLL);
    sub_1A5C99C(v402, &v604, v598);
    v325 = 0;
    v326 = 0;
    v327 = 0;
    sub_1A5CA34(&v325, v402, v405, 1uLL);
    v589[0] = v404;
    sub_195E3E8(v589);
    if (v403 < 0)
    {
      operator delete(v402[0]);
    }

    v589[0] = v598;
    sub_195E3E8(v589);
    for (i14 = 0; i14 != -168; i14 -= 24)
    {
      if (v441[i14 - 1] < 0)
      {
        operator delete(*(&v438 + i14));
      }
    }

    if (SHIBYTE(v605) < 0)
    {
      operator delete(v604);
    }

    v328 = 16842753;
    v329 = xmmword_23684E0;
    LOBYTE(v330) = 1;
    v331 = 0x6400000001;
    LODWORD(v332) = 10;
    sub_3608D0(v420, "AD");
    sub_3608D0(&v423, "AR");
    sub_3608D0(v426, "AT");
    sub_3608D0(v430, "BE");
    sub_3608D0(v433, "BO");
    sub_3608D0(&v436, "BR");
    sub_3608D0(&v438, "CH");
    sub_3608D0(v441, "CL");
    sub_3608D0(v444, "CO");
    sub_3608D0(&v445, "CR");
    sub_3608D0(v447, "CU");
    sub_3608D0(&v450, "DE");
    sub_3608D0(&v453, "DK");
    sub_3608D0(&v456, "DO");
    sub_3608D0(v460, "EC");
    sub_3608D0(v463, "ES");
    sub_3608D0(v466, "FI");
    sub_3608D0(&v469, "GL");
    sub_3608D0(v472, "GQ");
    sub_3608D0(v475, "GR");
    sub_3608D0(&v478, "GT");
    sub_3608D0(&v481, "HN");
    sub_3608D0(&v483 + 8, "ID");
    sub_3608D0(&v485 + 8, "IS");
    sub_3608D0(v489, "IT");
    sub_3608D0(&v490, "JP");
    sub_3608D0(&v492, "LI");
    sub_3608D0(&v496, "MX");
    sub_3608D0(v498, "NI");
    sub_3608D0(&v499, "NL");
    sub_3608D0(&v502, "NO");
    sub_3608D0(&v505, "PA");
    sub_3608D0(&v508, "PE");
    sub_3608D0(&v511, "PT");
    sub_3608D0(&v516, "PY");
    sub_3608D0(&v520, "RO");
    sub_3608D0(&v523, "SE");
    sub_3608D0(&v528, "SM");
    sub_3608D0(&v531, "SR");
    sub_3608D0(&v534, "SV");
    sub_3608D0(&v536, "TR");
    sub_3608D0(&v538, "UY");
    sub_3608D0(&v540, "VA");
    sub_3608D0(&v543, "VE");
    v333 = 0;
    v334 = 0;
    v335 = 0;
    sub_68678C(&v333, v420, v546, 0x2CuLL);
    v43 = 132;
    do
    {
      if (SHIBYTE(v420[v43 - 1]) < 0)
      {
        operator delete(*&v419[v43 * 8 + 24]);
      }

      v43 -= 3;
    }

    while (v43 * 8);
    LODWORD(v336) = 35;
    BYTE4(v336) = 1;
    v337 = 1;
    LOBYTE(v338) = 1;
    sub_1A5CBBC(v420, "zh", "位置");
    sub_1A5CC10(v426, "en", "Location");
    v339 = 0;
    v340 = 0;
    v341 = 0;
    sub_1A5CC64(&v339, v420, v433, 2uLL);
    for (i15 = 0; i15 != -12; i15 -= 6)
    {
      v45 = &v420[i15];
      if (*(&v432 + i15 * 8 + 7) < 0)
      {
        operator delete(v45[9]);
      }

      if (*(v45 + 71) < 0)
      {
        operator delete(v45[6]);
      }
    }

    sub_3608D0(v420, "SK");
    sub_3608D0(&v423, "CZ");
    sub_3608D0(v426, "SA");
    v342 = 0;
    v343 = 0;
    v344 = 0;
    sub_68678C(&v342, v420, v430, 3uLL);
    for (i16 = 0; i16 != -72; i16 -= 24)
    {
      if (*(&v429 + i16 + 3) < 0)
      {
        operator delete(*&v426[i16]);
      }
    }

    sub_3608D0(v420, "a");
    sub_3608D0(&v423, "asda");
    sub_3608D0(v426, "das");
    sub_3608D0(v430, "de");
    sub_3608D0(v433, "del");
    sub_3608D0(&v436, "des");
    sub_3608D0(&v438, "do");
    sub_3608D0(v441, "dos");
    sub_3608D0(v444, "dueli");
    sub_3608D0(&v445, "ill");
    sub_3608D0(v447, "la");
    sub_3608D0(&v450, "le");
    sub_3608D0(&v453, "o");
    sub_3608D0(&v456, "of");
    sub_3608D0(v460, "os");
    sub_3608D0(v463, "the");
    sub_1A5C918(v345, v420, 16);
    v47 = 48;
    do
    {
      if (SHIBYTE(v420[v47 - 1]) < 0)
      {
        operator delete(*&v419[v47 * 8 + 24]);
      }

      v47 -= 3;
    }

    while (v47 * 8);
    sub_3608D0(v420, "block");
    sub_3608D0(&v423, "blk");
    sub_1A5C918(v350, v420, 2);
    for (i17 = 0; i17 != -12; i17 -= 6)
    {
      if (v426[i17 * 4 - 1] < 0)
      {
        operator delete(*&v424[i17 - 2]);
      }
    }

    LOBYTE(v353) = 0;
    *v420 = xmmword_23684F0;
    v354 = 0;
    v356 = 0;
    v355 = 0;
    sub_1A5CCEC(&v354, v420, &v421, 2uLL);
    sub_3608D0(v420, "JP");
    sub_3608D0(&v423, "TW");
    sub_3608D0(v426, "HK");
    sub_3608D0(v430, "MO");
    v357 = 0;
    v358 = 0;
    v359 = 0;
    sub_68678C(&v357, v420, v433, 4uLL);
    for (i18 = 0; i18 != -24; i18 -= 6)
    {
      if (*(&v432 + i18 * 4 + 7) < 0)
      {
        operator delete(*&v430[i18]);
      }
    }

    sub_3608D0(v420, "JP");
    sub_3608D0(&v423, "VN");
    memset(v360, 0, 24);
    sub_68678C(v360, v420, v426, 2uLL);
    for (i19 = 0; i19 != -12; i19 -= 6)
    {
      if (v426[i19 * 4 - 1] < 0)
      {
        operator delete(*&v424[i19 - 2]);
      }
    }

    v360[24] = 1;
    v361 = 0x4024000000000000;
    v362 = xmmword_2368500;
    v363 = 1000000;
    sub_3608D0(v420, "JP");
    sub_23898(v364, v420, 1);
    if (SHIBYTE(v422) < 0)
    {
      operator delete(v420[0]);
    }

    v364[5] = 0x64000003E8;
    v364[6] = 0x3FE0000000000000;
    v365 = 1;
    sub_3608D0(v420, "NG");
    sub_1A5C918(v366, v420, 1);
    if (SHIBYTE(v422) < 0)
    {
      operator delete(v420[0]);
    }

    v366[24] = 1;
    sub_1F262C8(v221 + 32, &v245);
    v51 = &v245;
    goto LABEL_834;
  }

  sub_1A57240(v420);
  sub_164A528(&v245, 0, 0);
  sub_225EE2C(&v245, **v4, *(*v4 + 2));
  if (v246)
  {
    HIDWORD(v420[1]) = v303;
    if ((v246 & 2) == 0)
    {
LABEL_257:
      if ((v246 & 4) == 0)
      {
        goto LABEL_258;
      }

      goto LABEL_302;
    }
  }

  else if ((v246 & 2) == 0)
  {
    goto LABEL_257;
  }

  v421 = HIDWORD(v303);
  if ((v246 & 4) == 0)
  {
LABEL_258:
    if ((v246 & 8) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_303;
  }

LABEL_302:
  v422 = v304;
  if ((v246 & 8) == 0)
  {
LABEL_259:
    if ((v246 & 0x10) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_304;
  }

LABEL_303:
  LODWORD(v423) = HIDWORD(v304);
  if ((v246 & 0x10) == 0)
  {
LABEL_260:
    if ((v246 & 0x20) == 0)
    {
      goto LABEL_261;
    }

    goto LABEL_305;
  }

LABEL_304:
  HIDWORD(v423) = v305[0];
  if ((v246 & 0x20) == 0)
  {
LABEL_261:
    if ((v246 & 0x80) == 0)
    {
      goto LABEL_262;
    }

    goto LABEL_306;
  }

LABEL_305:
  v424[0] = v305[1];
  if ((v246 & 0x80) == 0)
  {
LABEL_262:
    if ((v246 & 0x100) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_307;
  }

LABEL_306:
  v424[2] = v305[3];
  if ((v246 & 0x100) == 0)
  {
LABEL_263:
    if ((v246 & 0x40) == 0)
    {
      goto LABEL_264;
    }

    goto LABEL_308;
  }

LABEL_307:
  v425 = v305[4];
  if ((v246 & 0x40) == 0)
  {
LABEL_264:
    if ((v246 & 0x200) == 0)
    {
      goto LABEL_265;
    }

    goto LABEL_309;
  }

LABEL_308:
  v424[1] = v305[2];
  if ((v246 & 0x200) == 0)
  {
LABEL_265:
    if ((v246 & 0x400) == 0)
    {
      goto LABEL_266;
    }

    goto LABEL_310;
  }

LABEL_309:
  v426[0] = v306;
  if ((v246 & 0x400) == 0)
  {
LABEL_266:
    if ((v246 & 0x800) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_311;
  }

LABEL_310:
  v426[1] = v307;
  if ((v246 & 0x800) == 0)
  {
LABEL_267:
    if ((v246 & 0x1000) == 0)
    {
      goto LABEL_268;
    }

    goto LABEL_312;
  }

LABEL_311:
  v426[2] = v308;
  if ((v246 & 0x1000) == 0)
  {
LABEL_268:
    if ((v246 & 0x20000) == 0)
    {
      goto LABEL_269;
    }

    goto LABEL_313;
  }

LABEL_312:
  v426[3] = v309;
  if ((v246 & 0x20000) == 0)
  {
LABEL_269:
    if ((v246 & 0x40000) == 0)
    {
      goto LABEL_270;
    }

    goto LABEL_314;
  }

LABEL_313:
  v426[4] = v314;
  if ((v246 & 0x40000) == 0)
  {
LABEL_270:
    if ((v246 & 0x2000) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_315;
  }

LABEL_314:
  v426[7] = BYTE1(v314);
  if ((v246 & 0x2000) == 0)
  {
LABEL_271:
    if ((v246 & 0x4000) == 0)
    {
      goto LABEL_272;
    }

    goto LABEL_316;
  }

LABEL_315:
  LODWORD(v427) = v310;
  if ((v246 & 0x4000) == 0)
  {
LABEL_272:
    if ((v246 & 0x8000) == 0)
    {
      goto LABEL_273;
    }

    goto LABEL_317;
  }

LABEL_316:
  HIDWORD(v427) = v311;
  if ((v246 & 0x8000) == 0)
  {
LABEL_273:
    if ((v246 & 0x10000) == 0)
    {
      goto LABEL_274;
    }

    goto LABEL_318;
  }

LABEL_317:
  v428 = v312;
  if ((v246 & 0x10000) == 0)
  {
LABEL_274:
    if ((v246 & 0x200000) == 0)
    {
      goto LABEL_275;
    }

    goto LABEL_319;
  }

LABEL_318:
  v429 = v313;
  if ((v246 & 0x200000) == 0)
  {
LABEL_275:
    if ((v246 & 0x400000) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_320;
  }

LABEL_319:
  v430[0] = v315;
  if ((v246 & 0x400000) == 0)
  {
LABEL_276:
    if ((v246 & 0x800000) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_321;
  }

LABEL_320:
  v430[1] = v316;
  if ((v246 & 0x800000) == 0)
  {
LABEL_277:
    if ((v246 & 0x80000) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_322;
  }

LABEL_321:
  v430[2] = HIDWORD(v316);
  if ((v246 & 0x80000) == 0)
  {
LABEL_278:
    if ((v246 & 0x1000000) == 0)
    {
      goto LABEL_279;
    }

    goto LABEL_323;
  }

LABEL_322:
  v431 = BYTE2(v314);
  if ((v246 & 0x1000000) == 0)
  {
LABEL_279:
    if ((v246 & 0x2000000) == 0)
    {
      goto LABEL_280;
    }

    goto LABEL_324;
  }

LABEL_323:
  v432 = v317;
  if ((v246 & 0x2000000) == 0)
  {
LABEL_280:
    if ((v246 & 0x4000000) == 0)
    {
      goto LABEL_281;
    }

    goto LABEL_325;
  }

LABEL_324:
  v433[0] = v318;
  if ((v246 & 0x4000000) == 0)
  {
LABEL_281:
    if ((v246 & 0x100000) == 0)
    {
      goto LABEL_283;
    }

    goto LABEL_282;
  }

LABEL_325:
  v433[1] = HIDWORD(v318);
  if ((v246 & 0x100000) != 0)
  {
LABEL_282:
    v441[2] = HIBYTE(v314);
  }

LABEL_283:
  if ((WORD4(v246) & 0x8000) != 0)
  {
    v486 = v345[3];
  }

  if ((BYTE4(v246) & 0x40) != 0)
  {
    v493 = HIBYTE(v323);
    if ((WORD4(v246) & 0x1000) == 0)
    {
LABEL_287:
      if ((WORD4(v246) & 0x2000) == 0)
      {
        goto LABEL_288;
      }

      goto LABEL_329;
    }
  }

  else if ((WORD4(v246) & 0x1000) == 0)
  {
    goto LABEL_287;
  }

  v441[0] = v345[0];
  if ((WORD4(v246) & 0x2000) == 0)
  {
LABEL_288:
    if ((WORD4(v246) & 0x4000) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_289;
  }

LABEL_329:
  v441[1] = v345[1];
  if ((WORD4(v246) & 0x4000) != 0)
  {
LABEL_289:
    v441[3] = v345[2];
  }

LABEL_290:
  v52 = v248;
  if (!v248)
  {
    goto LABEL_342;
  }

  v53 = v443;
  v54 = v442;
  if (v443 == v442)
  {
    if (v252)
    {
      v56 = (v252 + 8);
    }

    else
    {
      v56 = 0;
    }

LABEL_334:
    v57 = &v56[v52];
    do
    {
      v58 = *v56;
      if (v54 >= v444[0])
      {
        v54 = sub_1CEE8(&v442, v58);
      }

      else
      {
        if (*(v58 + 23) < 0)
        {
          sub_325C(v54, *v58, *(v58 + 8));
        }

        else
        {
          v59 = *v58;
          *(v54 + 16) = *(v58 + 16);
          *v54 = v59;
        }

        v54 += 24;
      }

      v443 = v54;
      ++v56;
    }

    while (v56 != v57);
    goto LABEL_342;
  }

  do
  {
    v55 = *(v53 - 1);
    v53 -= 3;
    if (v55 < 0)
    {
      operator delete(*v53);
    }
  }

  while (v53 != v54);
  v52 = v248;
  v443 = v54;
  if (v252)
  {
    v56 = (v252 + 8);
  }

  else
  {
    v56 = 0;
  }

  if (v248)
  {
    goto LABEL_334;
  }

LABEL_342:
  if ((v246 & 0x8000000) != 0)
  {
    LODWORD(v448) = v319;
  }

  if ((v246 & 0x40000000) != 0)
  {
    v457[0] = HIDWORD(v320);
  }

  if (BYTE10(v246))
  {
    v460[0] = v346;
  }

  if ((BYTE4(v246) & 8) == 0)
  {
    if ((v246 & 0x10000000) == 0)
    {
      goto LABEL_350;
    }

LABEL_404:
    v449[0] = HIDWORD(v319);
    if ((v246 & 0x20000000) == 0)
    {
      goto LABEL_352;
    }

    goto LABEL_351;
  }

  BYTE4(v448) = BYTE4(v323);
  if ((v246 & 0x10000000) != 0)
  {
    goto LABEL_404;
  }

LABEL_350:
  if ((v246 & 0x20000000) != 0)
  {
LABEL_351:
    v449[1] = v320;
  }

LABEL_352:
  if (v259 >= 1)
  {
    v60 = v454;
    v61 = v453;
    if (v454 == v453)
    {
      goto LABEL_356;
    }

    do
    {
      v60 = sub_1646EB8(v60 - 80);
    }

    while (v60 != v61);
    v454 = v61;
    if (v259 >= 1)
    {
LABEL_356:
      v62 = 0;
      do
      {
        v63 = *(*(&v259 + 1) + 8 * v62 + 8);
        if (v61 >= v455)
        {
          v61 = sub_1F27168(&v453, v63);
        }

        else
        {
          sub_1646E00(v61, v63);
          v61 += 80;
        }

        v454 = v61;
        ++v62;
      }

      while (v62 < v259);
    }
  }

  if (v257 >= 1)
  {
    v64 = v451;
    v65 = v450;
    if (v451 == v450)
    {
      goto LABEL_365;
    }

    do
    {
      v64 = sub_1646520(v64 - 56);
    }

    while (v64 != v65);
    v451 = v65;
    if (v257 >= 1)
    {
LABEL_365:
      v66 = 0;
      do
      {
        v67 = *(v258 + 8 * v66 + 8);
        if (v65 >= v452)
        {
          v65 = sub_1F273F8(&v450, v67);
        }

        else
        {
          sub_1646474(v65, v67);
          v65 += 56;
        }

        v451 = v65;
        ++v66;
      }

      while (v66 < v257);
    }
  }

  if ((v246 & 0x80000000) != 0)
  {
    v456 = v321;
  }

  if ((DWORD2(v246) & 0x80000) != 0)
  {
    v490 = v349;
    if ((DWORD2(v246) & 0x100000) == 0)
    {
LABEL_374:
      if ((DWORD2(v246) & 0x200000) == 0)
      {
        goto LABEL_375;
      }

      goto LABEL_408;
    }
  }

  else if ((DWORD2(v246) & 0x100000) == 0)
  {
    goto LABEL_374;
  }

  v491[0] = v350[0];
  if ((DWORD2(v246) & 0x200000) == 0)
  {
LABEL_375:
    if ((DWORD2(v246) & 0x1000000) == 0)
    {
      goto LABEL_376;
    }

    goto LABEL_409;
  }

LABEL_408:
  v491[1] = v350[1];
  if ((DWORD2(v246) & 0x1000000) == 0)
  {
LABEL_376:
    if ((DWORD2(v246) & 0x2000000) == 0)
    {
      goto LABEL_378;
    }

    goto LABEL_377;
  }

LABEL_409:
  v547 = v353;
  if ((DWORD2(v246) & 0x2000000) != 0)
  {
LABEL_377:
    v548 = v354;
  }

LABEL_378:
  if (BYTE4(v246))
  {
    v457[1] = v322;
    if ((BYTE4(v246) & 2) == 0)
    {
LABEL_380:
      if ((BYTE4(v246) & 0x20) == 0)
      {
        goto LABEL_381;
      }

      goto LABEL_413;
    }
  }

  else if ((BYTE4(v246) & 2) == 0)
  {
    goto LABEL_380;
  }

  v457[2] = HIDWORD(v322);
  if ((BYTE4(v246) & 0x20) == 0)
  {
LABEL_381:
    if ((BYTE4(v246) & 0x10) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_414;
  }

LABEL_413:
  v459 = BYTE6(v323);
  if ((BYTE4(v246) & 0x10) == 0)
  {
LABEL_382:
    if ((BYTE4(v246) & 4) == 0)
    {
      goto LABEL_383;
    }

    goto LABEL_415;
  }

LABEL_414:
  v458 = BYTE5(v323);
  if ((BYTE4(v246) & 4) == 0)
  {
LABEL_383:
    if ((BYTE4(v246) & 0x80) == 0)
    {
      goto LABEL_384;
    }

    goto LABEL_416;
  }

LABEL_415:
  v460[1] = v323;
  if ((BYTE4(v246) & 0x80) == 0)
  {
LABEL_384:
    if ((WORD2(v246) & 0x100) == 0)
    {
      goto LABEL_385;
    }

    goto LABEL_417;
  }

LABEL_416:
  LODWORD(v461) = v324;
  if ((WORD2(v246) & 0x100) == 0)
  {
LABEL_385:
    if ((WORD2(v246) & 0x200) == 0)
    {
      goto LABEL_386;
    }

    goto LABEL_418;
  }

LABEL_417:
  HIDWORD(v461) = HIDWORD(v324);
  if ((WORD2(v246) & 0x200) == 0)
  {
LABEL_386:
    if ((WORD2(v246) & 0x400) == 0)
    {
      goto LABEL_387;
    }

    goto LABEL_419;
  }

LABEL_418:
  v462[0] = v325;
  if ((WORD2(v246) & 0x400) == 0)
  {
LABEL_387:
    if ((WORD2(v246) & 0x800) == 0)
    {
      goto LABEL_388;
    }

    goto LABEL_420;
  }

LABEL_419:
  v462[1] = HIDWORD(v325);
  if ((WORD2(v246) & 0x800) == 0)
  {
LABEL_388:
    if ((WORD2(v246) & 0x1000) == 0)
    {
      goto LABEL_389;
    }

    goto LABEL_421;
  }

LABEL_420:
  v463[0] = v326;
  if ((WORD2(v246) & 0x1000) == 0)
  {
LABEL_389:
    if ((WORD2(v246) & 0x4000) == 0)
    {
      goto LABEL_391;
    }

    goto LABEL_390;
  }

LABEL_421:
  v463[1] = HIDWORD(v326);
  if ((WORD2(v246) & 0x4000) != 0)
  {
LABEL_390:
    v487 = HIDWORD(v327);
  }

LABEL_391:
  if ((BYTE12(v246) & 8) != 0)
  {
    LODWORD(v499) = HIDWORD(v358);
    if ((WORD2(v246) & 0x8000) == 0)
    {
LABEL_393:
      if ((DWORD1(v246) & 0x10000) == 0)
      {
        goto LABEL_394;
      }

      goto LABEL_425;
    }
  }

  else if ((WORD2(v246) & 0x8000) == 0)
  {
    goto LABEL_393;
  }

  LODWORD(v488) = v328;
  if ((DWORD1(v246) & 0x10000) == 0)
  {
LABEL_394:
    if ((DWORD1(v246) & 0x20000) == 0)
    {
      goto LABEL_395;
    }

    goto LABEL_426;
  }

LABEL_425:
  HIDWORD(v488) = v329;
  if ((DWORD1(v246) & 0x20000) == 0)
  {
LABEL_395:
    if ((DWORD1(v246) & 0x40000) == 0)
    {
      goto LABEL_396;
    }

    goto LABEL_427;
  }

LABEL_426:
  v489[0] = DWORD1(v329);
  if ((DWORD1(v246) & 0x40000) == 0)
  {
LABEL_396:
    if ((DWORD1(v246) & 0x80000) == 0)
    {
      goto LABEL_397;
    }

    goto LABEL_428;
  }

LABEL_427:
  v489[1] = DWORD2(v329);
  if ((DWORD1(v246) & 0x80000) == 0)
  {
LABEL_397:
    if ((DWORD2(v246) & 0x400000) == 0)
    {
      goto LABEL_398;
    }

    goto LABEL_429;
  }

LABEL_428:
  v489[2] = HIDWORD(v329);
  if ((DWORD2(v246) & 0x400000) == 0)
  {
LABEL_398:
    if ((DWORD1(v246) & 0x100000) == 0)
    {
      goto LABEL_399;
    }

    goto LABEL_430;
  }

LABEL_429:
  v492 = v351;
  if ((DWORD1(v246) & 0x100000) == 0)
  {
LABEL_399:
    if ((DWORD2(v246) & 0x20000) == 0)
    {
      goto LABEL_400;
    }

    goto LABEL_431;
  }

LABEL_430:
  v489[3] = v330;
  if ((DWORD2(v246) & 0x20000) == 0)
  {
LABEL_400:
    if ((DWORD2(v246) & 0x40000) == 0)
    {
      goto LABEL_401;
    }

    goto LABEL_432;
  }

LABEL_431:
  v489[4] = v347;
  if ((DWORD2(v246) & 0x40000) == 0)
  {
LABEL_401:
    if ((DWORD1(v246) & 0x800000) == 0)
    {
      goto LABEL_435;
    }

    goto LABEL_433;
  }

LABEL_432:
  v489[5] = v348;
  if ((DWORD1(v246) & 0x800000) == 0)
  {
    goto LABEL_435;
  }

LABEL_433:
  if ((v331 & 0x10000000000) == 0)
  {
    v514 = 0;
  }

LABEL_435:
  if ((DWORD1(v246) & 0x200000) != 0)
  {
    v516 = v331;
    if ((BYTE8(v246) & 8) == 0)
    {
LABEL_437:
      if ((BYTE8(v246) & 0x10) == 0)
      {
        goto LABEL_438;
      }

      goto LABEL_465;
    }
  }

  else if ((BYTE8(v246) & 8) == 0)
  {
    goto LABEL_437;
  }

  v513 = v338;
  if ((BYTE8(v246) & 0x10) == 0)
  {
LABEL_438:
    if ((BYTE8(v246) & 0x20) == 0)
    {
      goto LABEL_439;
    }

    goto LABEL_466;
  }

LABEL_465:
  v514 = v339;
  if ((BYTE8(v246) & 0x20) == 0)
  {
LABEL_439:
    if ((BYTE8(v246) & 0x80) == 0)
    {
      goto LABEL_440;
    }

    goto LABEL_467;
  }

LABEL_466:
  v515 = HIDWORD(v339);
  if ((BYTE8(v246) & 0x80) == 0)
  {
LABEL_440:
    if ((BYTE8(v246) & 0x40) == 0)
    {
      goto LABEL_441;
    }

    goto LABEL_468;
  }

LABEL_467:
  v525 = HIDWORD(v340);
  if ((BYTE8(v246) & 0x40) == 0)
  {
LABEL_441:
    if ((DWORD2(v246) & 0x800000) == 0)
    {
      goto LABEL_442;
    }

    goto LABEL_469;
  }

LABEL_468:
  v523 = v340;
  if ((DWORD2(v246) & 0x800000) == 0)
  {
LABEL_442:
    if ((DWORD1(v246) & 0x1000000) == 0)
    {
      goto LABEL_443;
    }

    goto LABEL_470;
  }

LABEL_469:
  v550 = v352;
  if ((DWORD1(v246) & 0x1000000) == 0)
  {
LABEL_443:
    if ((BYTE8(v246) & 4) == 0)
    {
      goto LABEL_444;
    }

    goto LABEL_471;
  }

LABEL_470:
  v517 = BYTE6(v331);
  if ((BYTE8(v246) & 4) == 0)
  {
LABEL_444:
    if ((DWORD1(v246) & 0x4000000) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_472;
  }

LABEL_471:
  v524 = HIBYTE(v337);
  if ((DWORD1(v246) & 0x4000000) == 0)
  {
LABEL_445:
    if ((DWORD1(v246) & 0x8000000) == 0)
    {
      goto LABEL_446;
    }

    goto LABEL_473;
  }

LABEL_472:
  v434 = v332;
  if ((DWORD1(v246) & 0x8000000) == 0)
  {
LABEL_446:
    if ((DWORD1(v246) & 0x10000000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_474;
  }

LABEL_473:
  v435 = v333;
  if ((DWORD1(v246) & 0x10000000) == 0)
  {
LABEL_447:
    if ((DWORD1(v246) & 0x20000000) == 0)
    {
      goto LABEL_448;
    }

    goto LABEL_475;
  }

LABEL_474:
  v436 = v334;
  if ((DWORD1(v246) & 0x20000000) == 0)
  {
LABEL_448:
    if ((DWORD1(v246) & 0x40000000) == 0)
    {
      goto LABEL_449;
    }

    goto LABEL_476;
  }

LABEL_475:
  v437[0] = v335;
  if ((DWORD1(v246) & 0x40000000) == 0)
  {
LABEL_449:
    if ((WORD4(v246) & 0x200) == 0)
    {
      goto LABEL_450;
    }

    goto LABEL_477;
  }

LABEL_476:
  v437[1] = v336;
  if ((WORD4(v246) & 0x200) == 0)
  {
LABEL_450:
    if ((WORD4(v246) & 0x400) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_478;
  }

LABEL_477:
  v438 = v342;
  if ((WORD4(v246) & 0x400) == 0)
  {
LABEL_451:
    if ((WORD4(v246) & 0x800) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_479;
  }

LABEL_478:
  v439 = v343;
  if ((WORD4(v246) & 0x800) == 0)
  {
LABEL_452:
    if ((DWORD1(v246) & 0x400000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_480;
  }

LABEL_479:
  v440 = v344;
  if ((DWORD1(v246) & 0x400000) == 0)
  {
LABEL_453:
    if ((BYTE12(v246) & 0x20) == 0)
    {
      goto LABEL_454;
    }

LABEL_481:
    LODWORD(v518) = HIDWORD(v359) == 2;
    if ((DWORD1(v246) & 0x80000000) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_482;
  }

LABEL_480:
  v512[3] = BYTE4(v331);
  if ((BYTE12(v246) & 0x20) != 0)
  {
    goto LABEL_481;
  }

LABEL_454:
  if ((DWORD1(v246) & 0x80000000) == 0)
  {
    goto LABEL_455;
  }

LABEL_482:
  v526 = v337;
LABEL_455:
  v68 = v264;
  if (v264 < 1)
  {
    goto LABEL_495;
  }

  v69 = v528;
  v70 = v527;
  if (v528 == v527)
  {
    if (v265[0])
    {
      v71 = v265[0] + 8;
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
    do
    {
      v69 -= 48;
      sub_1963134(v69);
    }

    while (v69 != v70);
    v68 = v264;
    v528 = v70;
    if (v265[0])
    {
      v71 = v265[0] + 8;
    }

    else
    {
      v71 = 0;
    }

    if (!v264)
    {
      goto LABEL_495;
    }
  }

  v72 = v71 + 8 * v68;
  do
  {
    sub_1AC49F4(&v615, (*(*v71 + 24) & 0xFFFFFFFFFFFFFFFELL), (*(*v71 + 32) & 0xFFFFFFFFFFFFFFFELL));
    v73 = v528;
    if (v528 >= v529)
    {
      v74 = sub_1F276A0(&v527, &v615);
    }

    else
    {
      sub_1965570(v528, &v615);
      v74 = v73 + 48;
    }

    v528 = v74;
    if ((v618[0] & 0x80000000) != 0)
    {
      operator delete(v617[0]);
    }

    if (SHIBYTE(v616) < 0)
    {
      operator delete(v615);
    }

    v71 += 8;
  }

  while (v71 != v72);
LABEL_495:
  v75 = v262;
  if (v262 < 1)
  {
    goto LABEL_516;
  }

  v76 = v495;
  v77 = v494;
  if (v495 == v494)
  {
    if (v263[0])
    {
      v78 = (v263[0] + 8);
    }

    else
    {
      v78 = 0;
    }
  }

  else
  {
    do
    {
      v76 -= 48;
      sub_1964E04(v76);
    }

    while (v76 != v77);
    v75 = v262;
    v495 = v77;
    if (v263[0])
    {
      v78 = (v263[0] + 8);
    }

    else
    {
      v78 = 0;
    }

    if (!v262)
    {
      goto LABEL_516;
    }
  }

  v79 = &v78[v75];
  do
  {
    v80 = *v78;
    v604 = 0uLL;
    v605 = 0;
    v81 = *(v80 + 40);
    if (v81)
    {
      v82 = (v81 + 8);
    }

    else
    {
      v82 = 0;
    }

    sub_1F277C0(&v604, 0, v82, &v82[*(v80 + 32)], *(v80 + 32));
    sub_1F27B60(v402, (*(v80 + 48) & 0xFFFFFFFFFFFFFFFELL), &v604);
    v83 = v495;
    if (v495 >= v496)
    {
      v84 = sub_1F27BF8(&v494, v402);
    }

    else
    {
      sub_1964D70(v495, v402);
      v84 = v83 + 48;
    }

    v495 = v84;
    v598[0] = v404;
    sub_195E3E8(v598);
    if (v403 < 0)
    {
      operator delete(v402[0]);
    }

    v402[0] = &v604;
    sub_195E3E8(v402);
    ++v78;
  }

  while (v78 != v79);
LABEL_516:
  if (v271 >= 1)
  {
    sub_7E724(&v476, v477);
    v478 = 0;
    v476 = &v477;
    v477 = 0;
    v85 = *(&v271 + 1) ? (*(&v271 + 1) + 8) : 0;
    if (v271)
    {
      v86 = 8 * v271;
      do
      {
        sub_7E36C(&v476, *v85++);
        v86 -= 8;
      }

      while (v86);
    }
  }

  if (v268 >= 1)
  {
    sub_7E724(&v479, v480);
    v481 = 0;
    v479 = &v480;
    v480 = 0;
    v87 = v269 ? (v269 + 8) : 0;
    if (v268)
    {
      v88 = 8 * v268;
      do
      {
        sub_7E36C(&v479, *v87++);
        v88 -= 8;
      }

      while (v88);
    }
  }

  if (v282 >= 1)
  {
    sub_7E724(&v482, v483);
    v482 = &v483;
    v483 = 0u;
    v89 = v283[0] ? (v283[0] + 8) : 0;
    if (v282)
    {
      v90 = 8 * v282;
      do
      {
        sub_7E36C(&v482, *v89++);
        v90 -= 8;
      }

      while (v90);
    }
  }

  if (v284 >= 1)
  {
    sub_7E724(&v484, v485);
    v484 = &v485;
    v485 = 0u;
    v91 = v285[0] ? (v285[0] + 8) : 0;
    if (v284)
    {
      v92 = 8 * v284;
      do
      {
        sub_7E36C(&v484, *v91++);
        v92 -= 8;
      }

      while (v92);
    }
  }

  v93 = DWORD2(v272);
  if (SDWORD2(v272) >= 1)
  {
    v94 = v521;
    v95 = v520;
    if (v521 == v520)
    {
      if (v273)
      {
        v97 = (v273 + 8);
      }

      else
      {
        v97 = 0;
      }
    }

    else
    {
      do
      {
        v96 = *(v94 - 1);
        v94 -= 3;
        if (v96 < 0)
        {
          operator delete(*v94);
        }
      }

      while (v94 != v95);
      v93 = SDWORD2(v272);
      v521 = v95;
      if (v273)
      {
        v97 = (v273 + 8);
      }

      else
      {
        v97 = 0;
      }

      if (!DWORD2(v272))
      {
        goto LABEL_565;
      }
    }

    v98 = &v97[v93];
    do
    {
      v99 = *v97;
      if (v95 >= v522)
      {
        v95 = sub_1CEE8(&v520, v99);
      }

      else
      {
        if (*(v99 + 23) < 0)
        {
          sub_325C(v95, *v99, *(v99 + 8));
        }

        else
        {
          v100 = *v99;
          *(v95 + 16) = *(v99 + 16);
          *v95 = v100;
        }

        v95 += 24;
      }

      v521 = v95;
      ++v97;
    }

    while (v97 != v98);
  }

LABEL_565:
  v101 = v292;
  if (v292 < 1)
  {
    goto LABEL_586;
  }

  v102 = v541;
  v103 = v540;
  if (v541 == v540)
  {
    if (v293)
    {
      v105 = (v293 + 8);
    }

    else
    {
      v105 = 0;
    }

LABEL_578:
    v106 = &v105[v101];
    do
    {
      v107 = *v105;
      if (v103 >= v542)
      {
        v103 = sub_1CEE8(&v540, v107);
      }

      else
      {
        if (*(v107 + 23) < 0)
        {
          sub_325C(v103, *v107, *(v107 + 8));
        }

        else
        {
          v108 = *v107;
          *(v103 + 16) = *(v107 + 16);
          *v103 = v108;
        }

        v103 += 24;
      }

      v541 = v103;
      ++v105;
    }

    while (v105 != v106);
    goto LABEL_586;
  }

  do
  {
    v104 = *(v102 - 1);
    v102 -= 3;
    if (v104 < 0)
    {
      operator delete(*v102);
    }
  }

  while (v102 != v103);
  v101 = v292;
  v541 = v103;
  if (v293)
  {
    v105 = (v293 + 8);
  }

  else
  {
    v105 = 0;
  }

  if (v292)
  {
    goto LABEL_578;
  }

LABEL_586:
  v109 = v294;
  if (v294 < 1)
  {
    goto LABEL_607;
  }

  v110 = v544;
  v111 = v543;
  if (v544 == v543)
  {
    if (*v295)
    {
      v113 = (*v295 + 8);
    }

    else
    {
      v113 = 0;
    }

LABEL_599:
    v114 = &v113[v109];
    do
    {
      v115 = *v113;
      if (v111 >= v545)
      {
        v111 = sub_1CEE8(&v543, v115);
      }

      else
      {
        if (*(v115 + 23) < 0)
        {
          sub_325C(v111, *v115, *(v115 + 8));
        }

        else
        {
          v116 = *v115;
          *(v111 + 16) = *(v115 + 16);
          *v111 = v116;
        }

        v111 += 24;
      }

      v544 = v111;
      ++v113;
    }

    while (v113 != v114);
    goto LABEL_607;
  }

  do
  {
    v112 = *(v110 - 1);
    v110 -= 3;
    if (v112 < 0)
    {
      operator delete(*v110);
    }
  }

  while (v110 != v111);
  v109 = v294;
  v544 = v111;
  if (*v295)
  {
    v113 = (*v295 + 8);
  }

  else
  {
    v113 = 0;
  }

  if (v294)
  {
    goto LABEL_599;
  }

LABEL_607:
  v117 = v288;
  if (v288 < 1)
  {
    goto LABEL_628;
  }

  v118 = v531;
  v119 = v530;
  if (v531 == v530)
  {
    if (v289)
    {
      v121 = (v289 + 8);
    }

    else
    {
      v121 = 0;
    }

LABEL_620:
    v122 = &v121[v117];
    do
    {
      v123 = *v121;
      if (v119 >= v532)
      {
        v119 = sub_1CEE8(&v530, v123);
      }

      else
      {
        if (*(v123 + 23) < 0)
        {
          sub_325C(v119, *v123, *(v123 + 8));
        }

        else
        {
          v124 = *v123;
          *(v119 + 16) = *(v123 + 16);
          *v119 = v124;
        }

        v119 += 24;
      }

      v531 = v119;
      ++v121;
    }

    while (v121 != v122);
    goto LABEL_628;
  }

  do
  {
    v120 = *(v118 - 1);
    v118 -= 3;
    if (v120 < 0)
    {
      operator delete(*v118);
    }
  }

  while (v118 != v119);
  v117 = v288;
  v531 = v119;
  if (v289)
  {
    v121 = (v289 + 8);
  }

  else
  {
    v121 = 0;
  }

  if (v288)
  {
    goto LABEL_620;
  }

LABEL_628:
  v125 = v286;
  if (v286 < 1)
  {
    goto LABEL_649;
  }

  v126 = v507;
  v127 = v506;
  if (v507 == v506)
  {
    if (v287)
    {
      v129 = (v287 + 8);
    }

    else
    {
      v129 = 0;
    }

LABEL_641:
    v130 = &v129[v125];
    do
    {
      v131 = *v129;
      if (v127 >= v508)
      {
        v127 = sub_1CEE8(&v506, v131);
      }

      else
      {
        if (*(v131 + 23) < 0)
        {
          sub_325C(v127, *v131, *(v131 + 8));
        }

        else
        {
          v132 = *v131;
          *(v127 + 16) = *(v131 + 16);
          *v127 = v132;
        }

        v127 += 24;
      }

      v507 = v127;
      ++v129;
    }

    while (v129 != v130);
    goto LABEL_649;
  }

  do
  {
    v128 = *(v126 - 1);
    v126 -= 3;
    if (v128 < 0)
    {
      operator delete(*v126);
    }
  }

  while (v126 != v127);
  v125 = v286;
  v507 = v127;
  if (v287)
  {
    v129 = (v287 + 8);
  }

  else
  {
    v129 = 0;
  }

  if (v286)
  {
    goto LABEL_641;
  }

LABEL_649:
  if (SDWORD2(v279) >= 1)
  {
    sub_7E724(&v533, v534);
    v533 = &v534;
    v534 = 0u;
    v133 = v280[0] ? (v280[0] + 8) : 0;
    if (DWORD2(v279))
    {
      v134 = 8 * SDWORD2(v279);
      do
      {
        sub_7E36C(&v533, *v133++);
        v134 -= 8;
      }

      while (v134);
    }
  }

  if (v290 >= 1)
  {
    sub_7E724(&v535, v536);
    v535 = &v536;
    v536 = 0u;
    v135 = v291 ? (v291 + 8) : 0;
    if (v290)
    {
      v136 = 8 * v290;
      do
      {
        sub_7E36C(&v535, *v135++);
        v136 -= 8;
      }

      while (v136);
    }
  }

  v137 = v274;
  if (v274 >= 1)
  {
    v138 = v501;
    v139 = v500;
    if (v501 == v500)
    {
      if (v275)
      {
        v140 = (v275 + 8);
      }

      else
      {
        v140 = 0;
      }
    }

    else
    {
      do
      {
        v138 -= 48;
        sub_1964E04(v138);
      }

      while (v138 != v139);
      v137 = v274;
      v501 = v139;
      if (v275)
      {
        v140 = (v275 + 8);
      }

      else
      {
        v140 = 0;
      }

      if (!v274)
      {
        goto LABEL_684;
      }
    }

    v141 = &v140[v137];
    do
    {
      v142 = *v140;
      v604 = 0uLL;
      v605 = 0;
      v143 = *(v142 + 40);
      if (v143)
      {
        v144 = (v143 + 8);
      }

      else
      {
        v144 = 0;
      }

      sub_1F277C0(&v604, 0, v144, &v144[*(v142 + 32)], *(v142 + 32));
      sub_1F27B60(v402, (*(v142 + 48) & 0xFFFFFFFFFFFFFFFELL), &v604);
      v145 = v501;
      if (v501 >= v502)
      {
        v146 = sub_1F27BF8(&v500, v402);
      }

      else
      {
        sub_1964D70(v501, v402);
        v146 = v145 + 48;
      }

      v501 = v146;
      v598[0] = v404;
      sub_195E3E8(v598);
      if (v403 < 0)
      {
        operator delete(v402[0]);
      }

      v402[0] = &v604;
      sub_195E3E8(v402);
      ++v140;
    }

    while (v140 != v141);
  }

LABEL_684:
  v147 = v278;
  if (v278 < 1)
  {
    goto LABEL_705;
  }

  v148 = v504;
  v149 = v503;
  if (v504 == v503)
  {
    if (*(&v278 + 1))
    {
      v150 = (*(&v278 + 1) + 8);
    }

    else
    {
      v150 = 0;
    }
  }

  else
  {
    do
    {
      v148 -= 48;
      sub_1964E04(v148);
    }

    while (v148 != v149);
    v147 = v278;
    v504 = v149;
    if (*(&v278 + 1))
    {
      v150 = (*(&v278 + 1) + 8);
    }

    else
    {
      v150 = 0;
    }

    if (!v278)
    {
      goto LABEL_705;
    }
  }

  v151 = &v150[v147];
  do
  {
    v152 = *v150;
    v604 = 0uLL;
    v605 = 0;
    v153 = *(v152 + 40);
    if (v153)
    {
      v154 = (v153 + 8);
    }

    else
    {
      v154 = 0;
    }

    sub_1F277C0(&v604, 0, v154, &v154[*(v152 + 32)], *(v152 + 32));
    sub_1F27B60(v402, (*(v152 + 48) & 0xFFFFFFFFFFFFFFFELL), &v604);
    v155 = v504;
    if (v504 >= v505)
    {
      v156 = sub_1F27BF8(&v503, v402);
    }

    else
    {
      sub_1964D70(v504, v402);
      v156 = v155 + 48;
    }

    v504 = v156;
    v598[0] = v404;
    sub_195E3E8(v598);
    if (v403 < 0)
    {
      operator delete(v402[0]);
    }

    v402[0] = &v604;
    sub_195E3E8(v402);
    ++v150;
  }

  while (v150 != v151);
LABEL_705:
  v157 = DWORD2(v246);
  if ((BYTE8(v246) & 2) != 0)
  {
    v537 = BYTE2(v337);
    if ((WORD4(v246) & 0x100) == 0)
    {
LABEL_707:
      if ((BYTE8(v246) & 1) == 0)
      {
        goto LABEL_708;
      }

LABEL_791:
      v426[5] = BYTE1(v337);
      if ((DWORD2(v246) & 0x40000000) == 0)
      {
        goto LABEL_710;
      }

      goto LABEL_709;
    }
  }

  else if ((WORD4(v246) & 0x100) == 0)
  {
    goto LABEL_707;
  }

  v549 = v341;
  if (BYTE8(v246))
  {
    goto LABEL_791;
  }

LABEL_708:
  if ((DWORD2(v246) & 0x40000000) != 0)
  {
LABEL_709:
    v546[0] = BYTE4(v357);
  }

LABEL_710:
  if (v266 < 1)
  {
    goto LABEL_775;
  }

  if (v267[0])
  {
    v158 = v267[0] + 8;
  }

  else
  {
    v158 = 0;
  }

  v159 = v158 + 8 * v266;
  do
  {
    v160 = *v158;
    v161 = *(*v158 + 48);
    if (v161 > 1)
    {
      if (v161 == 2)
      {
        v367 = 0uLL;
        v368 = 0;
        v177 = *(v160 + 32);
        if (v177)
        {
          v178 = *(v160 + 40);
          v179 = sub_19592E8(&v367, *(v160 + 32));
          sub_1201B48(&v367, v179, (v178 + 8), v177, *v368 - DWORD2(v367));
          v180 = DWORD2(v367) + v177;
          DWORD2(v367) = v180;
          v181 = v368;
          if (*v368 < v180)
          {
            *v368 = v180;
          }
        }

        else
        {
          v180 = 0;
          v181 = 0;
        }

        v198 = v471;
        v199 = v470;
        v200 = v470;
        if (v471 != v470)
        {
          do
          {
            v201 = *(v198 - 1);
            v198 -= 3;
            if (v201 < 0)
            {
              operator delete(*v198);
            }
          }

          while (v198 != v199);
          v200 = v470;
          v181 = v368;
          v180 = DWORD2(v367);
        }

        v471 = v199;
        if (v181)
        {
          v202 = (v181 + 2);
        }

        else
        {
          v202 = 0;
        }

        sub_1F277C0(&v470, v200, v202, &v202[v180], v180);
        v187 = &v367;
      }

      else
      {
        if (v161 != 3)
        {
          goto LABEL_773;
        }

        v613 = 0uLL;
        v614 = 0;
        v167 = *(v160 + 32);
        if (v167)
        {
          v168 = *(v160 + 40);
          v169 = sub_19592E8(&v613, *(v160 + 32));
          sub_1201B48(&v613, v169, (v168 + 8), v167, *v614 - DWORD2(v613));
          v170 = DWORD2(v613) + v167;
          DWORD2(v613) = v170;
          v171 = v614;
          if (*v614 < v170)
          {
            *v614 = v170;
          }
        }

        else
        {
          v170 = 0;
          v171 = 0;
        }

        v188 = v474;
        v189 = v473;
        v190 = v473;
        if (v474 != v473)
        {
          do
          {
            v191 = *(v188 - 1);
            v188 -= 3;
            if (v191 < 0)
            {
              operator delete(*v188);
            }
          }

          while (v188 != v189);
          v190 = v473;
          v171 = v614;
          v170 = DWORD2(v613);
        }

        v474 = v189;
        if (v171)
        {
          v192 = (v171 + 2);
        }

        else
        {
          v192 = 0;
        }

        sub_1F277C0(&v473, v190, v192, &v192[v170], v170);
        v187 = &v613;
      }
    }

    else if (v161)
    {
      if (v161 != 1)
      {
        goto LABEL_773;
      }

      v369 = 0uLL;
      v370 = 0;
      v162 = *(v160 + 32);
      if (v162)
      {
        v163 = *(v160 + 40);
        v164 = sub_19592E8(&v369, *(v160 + 32));
        sub_1201B48(&v369, v164, (v163 + 8), v162, *v370 - DWORD2(v369));
        v165 = DWORD2(v369) + v162;
        DWORD2(v369) = v165;
        v166 = v370;
        if (*v370 < v165)
        {
          *v370 = v165;
        }
      }

      else
      {
        v165 = 0;
        v166 = 0;
      }

      v182 = v468;
      v183 = v467;
      v184 = v467;
      if (v468 != v467)
      {
        do
        {
          v185 = *(v182 - 1);
          v182 -= 3;
          if (v185 < 0)
          {
            operator delete(*v182);
          }
        }

        while (v182 != v183);
        v184 = v467;
        v166 = v370;
        v165 = DWORD2(v369);
      }

      v468 = v183;
      if (v166)
      {
        v186 = (v166 + 2);
      }

      else
      {
        v186 = 0;
      }

      sub_1F277C0(&v467, v184, v186, &v186[v165], v165);
      v187 = &v369;
    }

    else
    {
      v371 = 0uLL;
      v372 = 0;
      v172 = *(v160 + 32);
      if (v172)
      {
        v173 = *(v160 + 40);
        v174 = sub_19592E8(&v371, *(v160 + 32));
        sub_1201B48(&v371, v174, (v173 + 8), v172, *v372 - DWORD2(v371));
        v175 = DWORD2(v371) + v172;
        DWORD2(v371) = v175;
        v176 = v372;
        if (*v372 < v175)
        {
          *v372 = v175;
        }
      }

      else
      {
        v175 = 0;
        v176 = 0;
      }

      v193 = v465;
      v194 = v464;
      v195 = v464;
      if (v465 != v464)
      {
        do
        {
          v196 = *(v193 - 1);
          v193 -= 3;
          if (v196 < 0)
          {
            operator delete(*v193);
          }
        }

        while (v193 != v194);
        v195 = v464;
        v176 = v372;
        v175 = DWORD2(v371);
      }

      v465 = v194;
      if (v176)
      {
        v197 = (v176 + 2);
      }

      else
      {
        v197 = 0;
      }

      sub_1F277C0(&v464, v195, v197, &v197[v175], v175);
      v187 = &v371;
    }

    sub_1956AFC(v187);
LABEL_773:
    v158 += 8;
  }

  while (v158 != v159);
  v157 = DWORD2(v246);
LABEL_775:
  if (v157 < 0)
  {
    v512[0] = BYTE5(v357);
  }

  if (BYTE12(v246))
  {
    v512[1] = BYTE6(v357);
  }

  if ((BYTE12(v246) & 2) != 0)
  {
    v512[2] = HIBYTE(v357);
  }

  v203 = v298;
  if (v298 >= 1)
  {
    v204 = v510;
    v205 = v509;
    if (v510 == v509)
    {
      if (v299)
      {
        v206 = (v299 + 8);
      }

      else
      {
        v206 = 0;
      }
    }

    else
    {
      do
      {
        v204 -= 48;
        sub_1964E04(v204);
      }

      while (v204 != v205);
      v203 = v298;
      v510 = v205;
      if (v299)
      {
        v206 = (v299 + 8);
      }

      else
      {
        v206 = 0;
      }

      if (!v298)
      {
        goto LABEL_806;
      }
    }

    v207 = &v206[v203];
    do
    {
      v208 = *v206;
      v604 = 0uLL;
      v605 = 0;
      v209 = *(v208 + 40);
      if (v209)
      {
        v210 = (v209 + 8);
      }

      else
      {
        v210 = 0;
      }

      sub_1F277C0(&v604, 0, v210, &v210[*(v208 + 32)], *(v208 + 32));
      sub_1F27B60(v402, (*(v208 + 48) & 0xFFFFFFFFFFFFFFFELL), &v604);
      v211 = v510;
      if (v510 >= v511)
      {
        v212 = sub_1F27BF8(&v509, v402);
      }

      else
      {
        sub_1964D70(v510, v402);
        v212 = v211 + 48;
      }

      v510 = v212;
      v598[0] = v404;
      sub_195E3E8(v598);
      if (v403 < 0)
      {
        operator delete(v402[0]);
      }

      v402[0] = &v604;
      sub_195E3E8(v402);
      ++v206;
    }

    while (v206 != v207);
  }

LABEL_806:
  if (v300 >= 1)
  {
    sub_1F2705C(v497);
    v213 = v302 ? v302 + 8 : 0;
    if (v300)
    {
      v214 = 8 * v300;
      do
      {
        v215 = *(*v213 + 24) & 0xFFFFFFFFFFFFFFFELL;
        v216 = *(*v213 + 32);
        if (*(v215 + 23) < 0)
        {
          sub_325C(&v615, *v215, *(v215 + 8));
        }

        else
        {
          v217 = *v215;
          v616 = *(v215 + 16);
          v615 = v217;
        }

        v617[0] = v216;
        sub_1F27D18(v497, &v615);
        if (SHIBYTE(v616) < 0)
        {
          operator delete(v615);
        }

        v213 += 8;
        v214 -= 8;
      }

      while (v214);
    }
  }

  if (*&v295[16])
  {
    sub_1F2710C(&v551);
    v218 = *(&v296 + 4) ? (*(&v296 + 4) + 8) : 0;
    if (*&v295[16])
    {
      v219 = 8 * *&v295[16];
      do
      {
        sub_23914(&v551, *v218++);
        v219 -= 8;
      }

      while (v219);
    }
  }

  if ((DWORD2(v246) & 0x8000000) == 0)
  {
    if ((DWORD2(v246) & 0x4000000) == 0)
    {
      goto LABEL_827;
    }

LABEL_836:
    v556 = v355;
    if ((DWORD2(v246) & 0x10000000) == 0)
    {
      goto LABEL_829;
    }

LABEL_828:
    v558 = v356;
    goto LABEL_829;
  }

  v557 = HIDWORD(v355);
  if ((DWORD2(v246) & 0x4000000) != 0)
  {
    goto LABEL_836;
  }

LABEL_827:
  if ((DWORD2(v246) & 0x10000000) != 0)
  {
    goto LABEL_828;
  }

LABEL_829:
  if ((BYTE12(v246) & 0x10) == 0)
  {
    if ((DWORD2(v246) & 0x20000000) == 0)
    {
      goto LABEL_831;
    }

LABEL_839:
    v519 = v357;
    if ((BYTE12(v246) & 4) == 0)
    {
      goto LABEL_833;
    }

LABEL_832:
    HIDWORD(v518) = v358;
    goto LABEL_833;
  }

  v561[0] = v359;
  if ((DWORD2(v246) & 0x20000000) != 0)
  {
    goto LABEL_839;
  }

LABEL_831:
  if ((BYTE12(v246) & 4) != 0)
  {
    goto LABEL_832;
  }

LABEL_833:
  sub_1F26758(v221 + 32, v420);
  sub_164A68C(&v245);
  v51 = v420;
LABEL_834:
  sub_1965ECC(v51);
  return v221;
}

void sub_1F1ECC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _Unwind_Exception *exception_objecta, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19, unint64_t a20, uint64_t a21)
{
  if (SLOBYTE(STACK[0xA47]) < 0)
  {
    operator delete(STACK[0xA30]);
  }

  sub_23D9C(v28 + 1096);
  STACK[0xA30] = v21;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = v27;
  sub_195E3E8(&STACK[0xA30]);
  v29 = STACK[0x578];
  if (STACK[0x578])
  {
    STACK[0x580] = v29;
    operator delete(v29);
  }

  sub_7E724(&STACK[0x558], STACK[0x560]);
  sub_7E724(&STACK[0x540], STACK[0x548]);
  STACK[0xA30] = v26;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = v25;
  sub_1965604(&STACK[0xA30]);
  STACK[0xA30] = v24;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = v23;
  sub_1964E4C(&STACK[0xA30]);
  STACK[0xA30] = v22;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a10;
  sub_1964E4C(&STACK[0xA30]);
  STACK[0xA30] = a11;
  sub_1964E4C(&STACK[0xA30]);
  sub_19653BC(&STACK[0x430]);
  STACK[0xA30] = a16;
  sub_1964E4C(&STACK[0xA30]);
  sub_7E724(&STACK[0x3B8], STACK[0x3C0]);
  sub_7E724(&STACK[0x3A0], STACK[0x3A8]);
  sub_7E724(&STACK[0x388], STACK[0x390]);
  sub_7E724(&STACK[0x370], STACK[0x378]);
  STACK[0xA30] = a17;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a18;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a19;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a20;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = &STACK[0x2C0];
  sub_1964924(&STACK[0xA30]);
  STACK[0xA30] = a12;
  sub_19646F0(&STACK[0xA30]);
  STACK[0xA30] = a13;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a14;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a15;
  sub_195E3E8(&STACK[0xA30]);
  sub_1965ECC(a21 + 32);
  v30 = *(a21 + 16);
  if (v30)
  {
    sub_1220A18(v30);
  }

  _Unwind_Resume(a1);
}

void sub_1F262A0()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xA30])
    {
      JUMPOUT(0x1F2627CLL);
    }
  }
}

uint64_t sub_1F262C8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 60);
  v6 = *(a2 + 76);
  v7 = *(a2 + 92);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 92) = v7;
  *(a1 + 76) = v6;
  *(a1 + 60) = v5;
  v8 = *(a2 + 124);
  v9 = *(a2 + 140);
  v10 = *(a2 + 156);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 156) = v10;
  *(a1 + 140) = v9;
  *(a1 + 124) = v8;
  v11 = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 12) = v11;
  sub_19609CC(a1 + 176);
  *(a1 + 176) = *(a2 + 11);
  *(a1 + 192) = a2[24];
  a2[24] = 0;
  *(a2 + 11) = 0u;
  sub_19609CC(a1 + 200);
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 216) = a2[27];
  a2[27] = 0;
  *(a2 + 25) = 0u;
  sub_19609CC(a1 + 224);
  *(a1 + 224) = *(a2 + 14);
  *(a1 + 240) = a2[30];
  a2[30] = 0;
  *(a2 + 14) = 0u;
  *(a1 + 248) = *(a2 + 31);
  sub_1F26E90((a1 + 264));
  *(a1 + 264) = a2[33];
  *(a1 + 272) = *(a2 + 17);
  a2[35] = 0;
  *(a2 + 33) = 0u;
  sub_1F26EF0((a1 + 288));
  *(a1 + 288) = *(a2 + 18);
  *(a1 + 304) = a2[38];
  a2[38] = 0;
  *(a2 + 18) = 0u;
  v12 = *(a2 + 39);
  v13 = *(a2 + 41);
  v14 = *(a2 + 43);
  *(a1 + 360) = a2[45];
  *(a1 + 328) = v13;
  *(a1 + 344) = v14;
  *(a1 + 312) = v12;
  sub_19609CC(a1 + 368);
  *(a1 + 368) = *(a2 + 23);
  *(a1 + 384) = a2[48];
  a2[48] = 0;
  *(a2 + 23) = 0u;
  sub_19609CC(a1 + 392);
  *(a1 + 392) = a2[49];
  *(a1 + 400) = *(a2 + 25);
  a2[51] = 0;
  *(a2 + 49) = 0u;
  sub_19609CC(a1 + 416);
  *(a1 + 416) = *(a2 + 26);
  *(a1 + 432) = a2[54];
  a2[54] = 0;
  *(a2 + 26) = 0u;
  sub_19609CC(a1 + 440);
  *(a1 + 440) = a2[55];
  *(a1 + 448) = *(a2 + 28);
  a2[57] = 0;
  *(a2 + 55) = 0u;
  sub_19D5198(a1 + 464, a2 + 58);
  sub_19D5198(a1 + 488, a2 + 61);
  sub_19D5198(a1 + 512, a2 + 64);
  sub_19D5198(a1 + 536, a2 + 67);
  *(a1 + 560) = *(a2 + 35);
  v15 = *(a2 + 36);
  v16 = *(a2 + 37);
  v17 = *(a2 + 38);
  *(a1 + 622) = *(a2 + 622);
  *(a1 + 592) = v16;
  *(a1 + 608) = v17;
  *(a1 + 576) = v15;
  sub_1F26F50((a1 + 632));
  *(a1 + 632) = a2[79];
  *(a1 + 640) = *(a2 + 40);
  a2[81] = 0;
  *(a2 + 79) = 0u;
  sub_1F26FB8(a1 + 656, a2 + 82);
  *(a1 + 696) = *(a2 + 174);
  sub_1F26F50((a1 + 704));
  *(a1 + 704) = *(a2 + 44);
  *(a1 + 720) = a2[90];
  a2[90] = 0;
  *(a2 + 44) = 0u;
  sub_1F26F50((a1 + 728));
  *(a1 + 728) = a2[91];
  *(a1 + 736) = *(a2 + 46);
  a2[93] = 0;
  *(a2 + 91) = 0u;
  sub_19609CC(a1 + 752);
  *(a1 + 752) = *(a2 + 47);
  *(a1 + 768) = a2[96];
  a2[96] = 0;
  *(a2 + 47) = 0u;
  sub_1F26F50((a1 + 776));
  *(a1 + 776) = a2[97];
  *(a1 + 784) = *(a2 + 49);
  a2[99] = 0;
  *(a2 + 97) = 0u;
  v18 = *(a2 + 50);
  v19 = *(a2 + 51);
  *(a1 + 832) = *(a2 + 208);
  *(a1 + 800) = v18;
  *(a1 + 816) = v19;
  sub_19609CC(a1 + 840);
  *(a1 + 840) = a2[105];
  *(a1 + 848) = *(a2 + 53);
  a2[107] = 0;
  *(a2 + 105) = 0u;
  v20 = a2[108];
  *(a1 + 869) = *(a2 + 869);
  *(a1 + 864) = v20;
  sub_1BE3698((a1 + 880));
  *(a1 + 880) = *(a2 + 55);
  *(a1 + 896) = a2[112];
  a2[112] = 0;
  *(a2 + 55) = 0u;
  sub_19609CC(a1 + 904);
  *(a1 + 904) = a2[113];
  *(a1 + 912) = *(a2 + 57);
  a2[115] = 0;
  *(a2 + 113) = 0u;
  sub_19D5198(a1 + 928, a2 + 116);
  sub_19D5198(a1 + 952, a2 + 119);
  *(a1 + 976) = *(a2 + 976);
  sub_1F270B8(a1 + 984, (a2 + 123));
  sub_19609CC(a1 + 1008);
  *(a1 + 1008) = *(a2 + 63);
  *(a1 + 1024) = a2[128];
  a2[128] = 0;
  *(a2 + 63) = 0u;
  sub_19609CC(a1 + 1032);
  *(a1 + 1032) = a2[129];
  *(a1 + 1040) = *(a2 + 65);
  a2[131] = 0;
  *(a2 + 129) = 0u;
  v21 = *(a2 + 66);
  v22 = *(a2 + 67);
  *(a1 + 1088) = *(a2 + 272);
  *(a1 + 1072) = v22;
  *(a1 + 1056) = v21;
  sub_D28FDC(a1 + 1096, a2 + 137);
  v23 = *(a2 + 71);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v23;
  sub_19D5198(a1 + 1160, a2 + 145);
  *(a1 + 1184) = *(a2 + 1184);
  return a1;
}

uint64_t sub_1F26758(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 60);
  v6 = *(a2 + 76);
  v7 = *(a2 + 92);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 92) = v7;
  *(a1 + 76) = v6;
  *(a1 + 60) = v5;
  v8 = *(a2 + 124);
  v9 = *(a2 + 140);
  v10 = *(a2 + 156);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 156) = v10;
  *(a1 + 140) = v9;
  *(a1 + 124) = v8;
  v11 = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 12) = v11;
  if (a1 == a2)
  {
    *(a1 + 248) = *(a2 + 31);
    v24 = *(a2 + 39);
    v25 = *(a2 + 41);
    v26 = *(a2 + 43);
    *(a1 + 360) = a2[45];
    *(a1 + 328) = v25;
    *(a1 + 344) = v26;
    *(a1 + 312) = v24;
    v28 = *(a2 + 37);
    v27 = *(a2 + 38);
    v29 = *(a2 + 36);
    *(a1 + 622) = *(a2 + 622);
    *(a1 + 592) = v28;
    *(a1 + 608) = v27;
    *(a1 + 576) = v29;
    *(a1 + 560) = *(a2 + 35);
    *(a1 + 696) = *(a2 + 174);
    v30 = *(a2 + 50);
    v31 = *(a2 + 51);
    *(a1 + 832) = *(a2 + 208);
    *(a1 + 800) = v30;
    *(a1 + 816) = v31;
    v32 = a2[108];
    *(a1 + 869) = *(a2 + 869);
    *(a1 + 864) = v32;
    *(a1 + 976) = *(a2 + 976);
    v33 = *(a2 + 66);
    v34 = *(a2 + 67);
    *(a1 + 1088) = *(a2 + 272);
    *(a1 + 1072) = v34;
    *(a1 + 1056) = v33;
    v35 = *(a2 + 71);
    *(a1 + 1152) = *(a2 + 1152);
    *(a1 + 1136) = v35;
  }

  else
  {
    sub_74300((a1 + 176), a2[22], a2[23], 0xAAAAAAAAAAAAAAABLL * ((a2[23] - a2[22]) >> 3));
    sub_74300((a1 + 200), a2[25], a2[26], 0xAAAAAAAAAAAAAAABLL * ((a2[26] - a2[25]) >> 3));
    sub_74300((a1 + 224), a2[28], a2[29], 0xAAAAAAAAAAAAAAABLL * ((a2[29] - a2[28]) >> 3));
    *(a1 + 248) = *(a2 + 31);
    sub_1F27F98(a1 + 264, a2[33], a2[34], 0x6DB6DB6DB6DB6DB7 * ((a2[34] - a2[33]) >> 3));
    sub_1F28140(a1 + 288, a2[36], a2[37], 0xCCCCCCCCCCCCCCCDLL * ((a2[37] - a2[36]) >> 4));
    v12 = *(a2 + 39);
    v13 = *(a2 + 41);
    v14 = *(a2 + 43);
    *(a1 + 360) = a2[45];
    *(a1 + 328) = v13;
    *(a1 + 344) = v14;
    *(a1 + 312) = v12;
    sub_74300((a1 + 368), a2[46], a2[47], 0xAAAAAAAAAAAAAAABLL * ((a2[47] - a2[46]) >> 3));
    sub_74300((a1 + 392), a2[49], a2[50], 0xAAAAAAAAAAAAAAABLL * ((a2[50] - a2[49]) >> 3));
    sub_74300((a1 + 416), a2[52], a2[53], 0xAAAAAAAAAAAAAAABLL * ((a2[53] - a2[52]) >> 3));
    sub_74300((a1 + 440), a2[55], a2[56], 0xAAAAAAAAAAAAAAABLL * ((a2[56] - a2[55]) >> 3));
    sub_1B00AFC((a1 + 464), a2[58], a2 + 59);
    sub_1B00AFC((a1 + 488), a2[61], a2 + 62);
    sub_1B00AFC((a1 + 512), a2[64], a2 + 65);
    sub_1B00AFC((a1 + 536), a2[67], a2 + 68);
    *(a1 + 560) = *(a2 + 35);
    v15 = *(a2 + 36);
    v16 = *(a2 + 37);
    v17 = *(a2 + 38);
    *(a1 + 622) = *(a2 + 622);
    *(a1 + 592) = v16;
    *(a1 + 608) = v17;
    *(a1 + 576) = v15;
    sub_1F282D8(a1 + 632, a2[79], a2[80], 0xAAAAAAAAAAAAAAABLL * ((a2[80] - a2[79]) >> 4));
    *(a1 + 688) = *(a2 + 172);
    sub_1F284C4((a1 + 656), a2[84], 0);
    *(a1 + 696) = *(a2 + 174);
    sub_1F282D8(a1 + 704, a2[88], a2[89], 0xAAAAAAAAAAAAAAABLL * ((a2[89] - a2[88]) >> 4));
    sub_1F282D8(a1 + 728, a2[91], a2[92], 0xAAAAAAAAAAAAAAABLL * ((a2[92] - a2[91]) >> 4));
    sub_74300((a1 + 752), a2[94], a2[95], 0xAAAAAAAAAAAAAAABLL * ((a2[95] - a2[94]) >> 3));
    sub_1F282D8(a1 + 776, a2[97], a2[98], 0xAAAAAAAAAAAAAAABLL * ((a2[98] - a2[97]) >> 4));
    v18 = *(a2 + 50);
    v19 = *(a2 + 51);
    *(a1 + 832) = *(a2 + 208);
    *(a1 + 800) = v18;
    *(a1 + 816) = v19;
    sub_74300((a1 + 840), a2[105], a2[106], 0xAAAAAAAAAAAAAAABLL * ((a2[106] - a2[105]) >> 3));
    v20 = a2[108];
    *(a1 + 869) = *(a2 + 869);
    *(a1 + 864) = v20;
    sub_50D3E8((a1 + 880), a2[110], a2[111], 0xAAAAAAAAAAAAAAABLL * ((a2[111] - a2[110]) >> 4));
    sub_74300((a1 + 904), a2[113], a2[114], 0xAAAAAAAAAAAAAAABLL * ((a2[114] - a2[113]) >> 3));
    sub_1B00AFC((a1 + 928), a2[116], a2 + 117);
    sub_1B00AFC((a1 + 952), a2[119], a2 + 120);
    *(a1 + 976) = *(a2 + 976);
    sub_1F286F4((a1 + 984), a2[123], a2[124], (a2[124] - a2[123]) >> 3);
    sub_74300((a1 + 1008), a2[126], a2[127], 0xAAAAAAAAAAAAAAABLL * ((a2[127] - a2[126]) >> 3));
    sub_74300((a1 + 1032), a2[129], a2[130], 0xAAAAAAAAAAAAAAABLL * ((a2[130] - a2[129]) >> 3));
    v21 = *(a2 + 66);
    v22 = *(a2 + 67);
    *(a1 + 1088) = *(a2 + 272);
    *(a1 + 1072) = v22;
    *(a1 + 1056) = v21;
    *(a1 + 1128) = *(a2 + 282);
    sub_4B5F48(a1 + 1096, a2[139], 0);
    v23 = *(a2 + 71);
    *(a1 + 1152) = *(a2 + 1152);
    *(a1 + 1136) = v23;
    sub_1B00AFC((a1 + 1160), a2[145], a2 + 146);
  }

  *(a1 + 1184) = *(a2 + 1184);
  return a1;
}

void sub_1F26C3C(uint64_t *a1, uint64_t a2)
{
  sub_3608D0(v11, "search_params_4");
  LODWORD(v10[0]) = 8;
  sub_1B0E8D8(v10, v11, v9);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  dispatch_group_enter(**a2);
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v8 = *a2;
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
    v8 = *a2;
  }

  v11[0] = off_2726B10;
  v11[1] = v5;
  v12 = v6;
  v13 = v11;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v10[0] = off_2726BE0;
  v10[1] = v8;
  v10[2] = v7;
  v10[3] = v10;
  sub_1B0E6A0(v4, v9, v11, v10);
}

void sub_1F26D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  sub_197F740(&a14);
  sub_197F7C0(v14 - 56);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1F26DD0(void *a1)
{
  *a1 = &off_2726AC8;
  sub_1965ECC((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1F26E20(void *a1)
{
  *a1 = &off_2726AC8;
  sub_1965ECC((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete();
}

void sub_1F26E90(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_1646520(v3 - 56);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1F26EF0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_1646EB8(v3 - 80);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1F26F50(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_1964E04(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1F26FB8(uint64_t a1, uint64_t *a2)
{
  sub_1F2705C(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_1F2705C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_19653F8(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

__n128 sub_1F270B8(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
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
  return result;
}

void sub_1F2710C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_4B5D98(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_1F27168(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1964848(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  sub_1646E00(80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = (80 * v2 + *a1 - v7);
  sub_1F27298(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1F273A8(&v13);
  return v12;
}

void sub_1F27284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1F273A8(va);
  _Unwind_Resume(a1);
}

void sub_1F27298(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1F27308(a4, v7);
      v7 += 80;
      a4 = (v8 + 80);
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_1646EB8(v6);
      v6 += 80;
    }
  }
}

std::string *sub_1F27308(std::string *a1, uint64_t a2)
{
  sub_1646BE4(a1, 0, 0);
  if (a1 != a2)
  {
    size = a1->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v5)
    {
      sub_16476B4(a1, a2);
    }

    else
    {
      sub_1647660(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_1F273A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_1646EB8(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1F273F8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1964610(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  sub_1646474(56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = (56 * v2 + *a1 - v7);
  sub_1F27540(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1F27650(&v13);
  return v12;
}

void sub_1F2752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1F27650(va);
  _Unwind_Resume(a1);
}

void sub_1F27540(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1F275B0(a4, v7);
      v7 += 56;
      a4 = v8 + 7;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_1646520(v6);
      v6 += 56;
    }
  }
}

void *sub_1F275B0(void *a1, uint64_t a2)
{
  sub_16462D0(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = a1[1];
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_1646B80(a1, a2);
    }

    else
    {
      sub_1646B2C(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_1F27650(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_1646520(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1F276A0(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1965518(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  v15 = 48 * v2;
  v16 = 0;
  sub_1965570(48 * v2, a2);
  v7 = 48 * v2 + 48;
  v8 = *(a1 + 8) - *a1;
  v9 = 48 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_84E7C(&v13);
  return v7;
}

void sub_1F277AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_84E7C(va);
  _Unwind_Resume(a1);
}

std::string *sub_1F277C0(void *a1, uint64_t a2, __int128 **a3, __int128 **a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        sub_1AE9A00(a1, a2, a1[1], a2 + 24 * a5);
        v20 = &v7[a5];
        v21 = v5;
        do
        {
          v22 = *v7++;
          std::string::operator=(v21++, v22);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = &a3[0xAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)];
        a1[1] = sub_1F27A9C(a1, v17, a4, a1[1]);
        if (v16 >= 1)
        {
          sub_1AE9A00(a1, v5, v10, &v5[a5]);
          v18 = v5;
          do
          {
            v19 = *v7++;
            std::string::operator=(v18++, v19);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v34 = a1;
      if (v15)
      {
        sub_195CC74(a1, v15);
      }

      v31 = 0;
      v32 = 8 * (v13 >> 3);
      v33 = v32;
      sub_1F27A04(&v31, a3, a5);
      v23 = v32;
      memcpy(v33, v5, a1[1] - v5);
      v24 = *a1;
      v25 = v32;
      *&v33 = v33 + a1[1] - v5;
      a1[1] = v5;
      v26 = v5 - v24;
      v27 = (v25 - (v5 - v24));
      memcpy(v27, v24, v26);
      v28 = *a1;
      *a1 = v27;
      v29 = a1[2];
      *(a1 + 1) = v33;
      *&v33 = v28;
      *(&v33 + 1) = v29;
      v31 = v28;
      v32 = v28;
      sub_1D03C(&v31);
      return v23;
    }
  }

  return v5;
}

void *sub_1F27A04(void *result, __int128 **a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    v7 = 24 * a3;
    do
    {
      v8 = *a2;
      if (*(*a2 + 23) < 0)
      {
        result = sub_325C(v4, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        *(v4 + 16) = *(v8 + 2);
        *v4 = v9;
      }

      v4 += 24;
      ++a2;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t sub_1F27A9C(uint64_t a1, __int128 **a2, __int128 **a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      if (*(*v6 + 23) < 0)
      {
        sub_325C(v4, *v7, *(v7 + 1));
        v4 = v13;
      }

      else
      {
        v8 = *v7;
        *(v4 + 16) = *(v7 + 2);
        *v4 = v8;
      }

      ++v6;
      v4 += 24;
      v13 = v4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_746A0(v10);
  return v4;
}

uint64_t sub_1F27B60(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_353184(a1 + 24, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_1F27BDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1F27BF8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1964C90(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  v15 = 48 * v2;
  v16 = 0;
  sub_1964D70(48 * v2, a2);
  v7 = 48 * v2 + 48;
  v8 = *(a1 + 8) - *a1;
  v9 = 48 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_1D97610(&v13);
  return v7;
}

void sub_1F27D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D97610(va);
  _Unwind_Resume(a1);
}

const void **sub_1F27D18(void *a1, const void **a2)
{
  v4 = sub_1220A84(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1220AC4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1F27F98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_1F26E90(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_19645C0(a1, v10);
    }

    sub_1794();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_1646B2C(v8, v6);
        v6 += 56;
        v8 += 56;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 -= 56;
      sub_1646520(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_1646B2C(v8, v14);
        v14 += 56;
        v8 += 56;
        v13 -= 56;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = sub_196466C(a1, v6 + v12, a3, v11);
  }
}

uint64_t sub_1F28140(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(result + 16) - *result) >> 4) < a4)
  {
    sub_1F26EF0(result);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((v7[2] - *v7) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v7[2] - *v7) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      sub_19647FC(v7, v10);
    }

    sub_1794();
  }

  v11 = *(result + 8);
  v12 = v11 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_1647660(v8, v6);
        v6 += 80;
        v8 = (v8 + 80);
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    while (v11 != v8)
    {
      v11 -= 80;
      result = sub_1646EB8(v11);
    }

    v7[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_1647660(v8, v14);
        v14 += 80;
        v8 = (v8 + 80);
        v13 -= 80;
      }

      while (v13);
      v11 = v7[1];
    }

    result = sub_19648A0(v7, v6 + v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

void sub_1F282D8(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_1F26F50(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_1964C44(a1, v10);
    }

    sub_1794();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_1F28470(v8, v6);
        v6 += 48;
        v8 += 2;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 -= 48;
      sub_1964E04(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_1F28470(v8, v14);
        v14 += 48;
        v8 += 2;
        v13 -= 48;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = sub_1964CE8(a1, (v6 + v12), a3, v11);
  }
}

std::string *sub_1F28470(std::string *a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  if (a1 != a2)
  {
    sub_74300(&a1[1], *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  return a1;
}

void sub_1F284C4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), (v4 + 2));
        *(v8 + 40) = v4[5];
        v10 = *v8;
        sub_1D36AD8(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_19653F8(a1, v10);
  }

  if (v4 != a3)
  {
    sub_1F285C8();
  }
}

void sub_1F28598(void *a1)
{
  __cxa_begin_catch(a1);
  sub_19653F8(v1, v2);
  __cxa_rethrow();
}

void sub_1F28604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1965358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1F286D8(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_1965358(v3, v1);
  _Unwind_Resume(a1);
}

char *sub_1F286F4(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      sub_1963264(a1, v10);
    }

    sub_1794();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 8;
        v12 -= 8;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 8;
        v15 += 8;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void *sub_1F28818(void *a1)
{
  *a1 = off_2726B10;
  v2 = a1[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1F28864(void *a1)
{
  *a1 = off_2726B10;
  v1 = a1[2];
  if (v1)
  {
    sub_1220A18(v1);
  }

  operator delete();
}

uint64_t sub_1F2893C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_2726B10;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1F28974(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1220A18(v1);
  }
}

void sub_1F28984(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete(__p);
}

void sub_1F289C4(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  sub_1F28ADC();
}

void sub_1F28A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_1220A18(a13);
  }

  v15 = *(v13 - 24);
  if (v15)
  {
    sub_1220A18(v15);
  }

  if (a10)
  {
    sub_1220A18(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1F28A90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1F28B50(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2726B80;
  sub_1F28C48((a1 + 3), a2);
  return a1;
}

void sub_1F28BCC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2726B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1F28C48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1F193E8();
  if (v3)
  {
    sub_1220A18(v3);
  }

  return a1;
}

void sub_1F28CA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1220A18(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1F28CC0(void *a1)
{
  *a1 = off_2726BE0;
  v2 = a1[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1F28D0C(void *a1)
{
  *a1 = off_2726BE0;
  v1 = a1[2];
  if (v1)
  {
    sub_1220A18(v1);
  }

  operator delete();
}

uint64_t sub_1F28DE4(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_2726BE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1F28E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1220A18(v1);
  }
}

void sub_1F28E2C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete(__p);
}

void sub_1F28F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1220A18(a11);
  }

  if (a13)
  {
    sub_1220A18(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1F28F74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1F29034(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2726B80;
  sub_1F29090((a1 + 3), a2);
  return a1;
}

uint64_t sub_1F29090(uint64_t a1, void *a2)
{
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  sub_1F193E8();
  if (v3)
  {
    sub_1220A18(v3);
  }

  return a1;
}

void sub_1F290E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1220A18(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1F290F8()
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
  sub_1966280(qword_27F07E0, v1247, 249);
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

void sub_1F300E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
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