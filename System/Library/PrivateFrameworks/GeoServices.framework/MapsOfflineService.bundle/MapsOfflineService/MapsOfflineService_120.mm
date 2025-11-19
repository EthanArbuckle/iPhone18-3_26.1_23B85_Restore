uint64_t sub_78A7D8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x864B8A7DE6D1DLL)
  {
    sub_1794();
  }

  if (0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7);
  }

  if ((0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 7)) >= 0x4325C53EF368ELL)
  {
    v5 = 0x864B8A7DE6D1DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x864B8A7DE6D1DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (a1[1] - *a1) >> 7 << 7;
  sub_789CC8(v6, a2);
  v7 = 7808 * v2 + 7808;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_789CC8(v12, v11);
      v11 += 7808;
      v12 = v13 + 7808;
    }

    while (v11 != v9);
    do
    {
      sub_5C1158(v8);
      v8 += 7808;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_78A944(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 136) = 0u;
  v8 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v8;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 176) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = 0;
  *(a2 + 200) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a2 + 224) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 248) = 0u;
  v9 = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a1 + 272) = v9;
  LODWORD(v9) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 280) = v9;
  v10 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 288) = v10;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0u;
  v11 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 312) = v11;
  *(a2 + 320) = 0u;
  *(a2 + 312) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a2 + 336) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 376) = 0;
  *(a2 + 360) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a2 + 384) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 408) = 0u;
  v12 = *(a2 + 432);
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  *(a1 + 432) = v12;
  LODWORD(v12) = *(a2 + 440);
  *(a1 + 444) = *(a2 + 444);
  *(a1 + 440) = v12;
  v13 = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 448) = v13;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0u;
  v14 = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 472) = v14;
  *(a2 + 480) = 0u;
  *(a2 + 472) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 512) = 0;
  *(a2 + 496) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 560) = 0;
  *(a2 + 544) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  v15 = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a1 + 592) = v15;
  LODWORD(v15) = *(a2 + 600);
  *(a1 + 604) = *(a2 + 604);
  *(a1 + 600) = v15;
  v16 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 608) = v16;
  *(a2 + 608) = 0;
  *(a2 + 616) = 0u;
  v17 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 632) = v17;
  *(a2 + 640) = 0u;
  *(a2 + 632) = 0;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 672) = 0;
  *(a2 + 656) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  v18 = *(a2 + 752);
  *(a2 + 752) = 0;
  *(a1 + 752) = v18;
  LODWORD(v18) = *(a2 + 760);
  *(a1 + 764) = *(a2 + 764);
  *(a1 + 760) = v18;
  v19 = *(a2 + 768);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 768) = v19;
  *(a2 + 768) = 0;
  *(a2 + 776) = 0u;
  v20 = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 792) = v20;
  *(a2 + 800) = 0u;
  *(a2 + 792) = 0;
  *(a1 + 832) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 832) = 0;
  *(a2 + 816) = 0u;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 848) = *(a2 + 848);
  *(a2 + 856) = 0;
  *(a2 + 840) = 0u;
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 880) = 0;
  *(a2 + 864) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 904) = 0;
  *(a2 + 888) = 0u;
  v21 = *(a2 + 912);
  *(a2 + 912) = 0;
  *(a1 + 912) = v21;
  LODWORD(v21) = *(a2 + 920);
  *(a1 + 924) = *(a2 + 924);
  *(a1 + 920) = v21;
  v22 = *(a2 + 928);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 928) = v22;
  *(a2 + 928) = 0;
  *(a2 + 936) = 0u;
  v23 = *(a2 + 952);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 952) = v23;
  *(a2 + 960) = 0u;
  *(a2 + 952) = 0;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 992) = 0;
  *(a2 + 976) = 0u;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1016) = 0;
  *(a2 + 1000) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1040) = 0;
  *(a2 + 1024) = 0u;
  *(a1 + 1064) = 0;
  *(a1 + 1048) = 0u;
  *(a1 + 1048) = *(a2 + 1048);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1064) = 0;
  *(a2 + 1048) = 0u;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1072) = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1088) = 0;
  *(a2 + 1072) = 0u;
  v24 = *(a2 + 1096);
  *(a2 + 1096) = 0;
  *(a1 + 1096) = v24;
  LODWORD(v24) = *(a2 + 1104);
  *(a1 + 1108) = *(a2 + 1108);
  *(a1 + 1104) = v24;
  v25 = *(a2 + 1112);
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1112) = v25;
  *(a2 + 1112) = 0;
  *(a2 + 1128) = 0;
  *(a2 + 1120) = 0;
  v26 = *(a2 + 1136);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v26;
  *(a2 + 1152) = 0;
  *(a2 + 1144) = 0;
  *(a2 + 1136) = 0;
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1168) = 0;
  *(a1 + 1200) = -1;
  v27 = *(a2 + 1200);
  if (v27 != -1)
  {
    v44 = a1 + 1168;
    (off_266C7C8[v27])(&v44, a2 + 1168);
    *(a1 + 1200) = v27;
  }

  *(a1 + 1208) = *(a2 + 1208);
  v28 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v28;
  *(a2 + 1224) = 0u;
  *(a2 + 1216) = 0;
  *(a1 + 1240) = *(a2 + 1240);
  v29 = *(a2 + 1248);
  *(a1 + 1264) = *(a2 + 1264);
  *(a1 + 1248) = v29;
  *(a2 + 1256) = 0u;
  *(a2 + 1248) = 0;
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1296) = 0u;
  *(a1 + 1288) = 0;
  *(a1 + 1288) = *(a2 + 1288);
  *(a1 + 1296) = *(a2 + 1296);
  *(a2 + 1304) = 0;
  *(a2 + 1288) = 0u;
  *(a1 + 1328) = 0;
  *(a1 + 1312) = 0u;
  *(a1 + 1312) = *(a2 + 1312);
  *(a1 + 1328) = *(a2 + 1328);
  *(a2 + 1328) = 0;
  *(a2 + 1312) = 0u;
  sub_55A4D0(a1 + 1336, a2 + 1336);
  sub_55A4D0(a1 + 1832, a2 + 1832);
  *(a1 + 2344) = 0;
  *(a1 + 2328) = 0u;
  *(a1 + 2328) = *(a2 + 2328);
  *(a1 + 2336) = *(a2 + 2336);
  *(a2 + 2344) = 0;
  *(a2 + 2328) = 0u;
  *(a1 + 2368) = 0;
  *(a1 + 2352) = 0u;
  *(a1 + 2352) = *(a2 + 2352);
  *(a1 + 2368) = *(a2 + 2368);
  *(a2 + 2368) = 0;
  *(a2 + 2352) = 0u;
  sub_61009C(a1 + 2376, a2 + 2376);
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0;
  *(a1 + 7176) = *(a2 + 7176);
  *(a1 + 7184) = *(a2 + 7184);
  *(a2 + 7176) = 0u;
  *(a2 + 7192) = 0;
  v30 = *(a2 + 7200);
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7200) = v30;
  v31 = *(a2 + 7216);
  *(a1 + 7232) = *(a2 + 7232);
  *(a1 + 7216) = v31;
  *(a2 + 7232) = 0;
  *(a2 + 7224) = 0;
  v32 = *(a2 + 7240);
  *(a2 + 7216) = 0;
  v33 = *(a2 + 7256);
  *(a1 + 7240) = v32;
  *(a1 + 7256) = v33;
  *(a2 + 7256) = 0;
  *(a2 + 7248) = 0;
  *(a2 + 7240) = 0;
  *(a1 + 7264) = 0;
  *(a1 + 7296) = -1;
  v34 = *(a2 + 7296);
  if (v34 != -1)
  {
    v44 = a1 + 7264;
    (off_266C7C8[v34])(&v44, a2 + 7264);
    *(a1 + 7296) = v34;
  }

  *(a1 + 7304) = *(a2 + 7304);
  v35 = *(a2 + 7312);
  *(a1 + 7328) = *(a2 + 7328);
  *(a1 + 7312) = v35;
  *(a2 + 7320) = 0u;
  *(a2 + 7312) = 0;
  *(a1 + 7336) = *(a2 + 7336);
  v36 = *(a2 + 7344);
  *(a1 + 7360) = *(a2 + 7360);
  *(a1 + 7344) = v36;
  *(a2 + 7352) = 0u;
  *(a2 + 7344) = 0;
  *(a1 + 7368) = *(a2 + 7368);
  *(a1 + 7384) = 0u;
  *(a1 + 7376) = 0;
  *(a1 + 7376) = *(a2 + 7376);
  *(a1 + 7392) = *(a2 + 7392);
  *(a2 + 7392) = 0;
  *(a2 + 7376) = 0u;
  *(a1 + 7400) = 0u;
  *(a1 + 7416) = 0;
  *(a1 + 7400) = *(a2 + 7400);
  *(a1 + 7408) = *(a2 + 7408);
  *(a2 + 7400) = 0u;
  *(a2 + 7416) = 0;
  v37 = *(a2 + 7424);
  *(a1 + 7440) = *(a2 + 7440);
  *(a1 + 7424) = v37;
  *(a2 + 7424) = 0;
  *(a2 + 7432) = 0u;
  v38 = *(a2 + 7464);
  *(a1 + 7448) = *(a2 + 7448);
  *(a1 + 7464) = v38;
  *(a2 + 7456) = 0u;
  *(a2 + 7448) = 0;
  v39 = *(a2 + 7472);
  *(a1 + 7488) = *(a2 + 7488);
  *(a1 + 7472) = v39;
  *(a2 + 7488) = 0;
  *(a2 + 7472) = 0u;
  *(a1 + 7496) = 0u;
  *(a1 + 7512) = 0;
  *(a1 + 7496) = *(a2 + 7496);
  *(a1 + 7504) = *(a2 + 7504);
  *(a2 + 7496) = 0u;
  *(a2 + 7512) = 0;
  *(a1 + 7536) = 0;
  *(a1 + 7520) = 0u;
  *(a1 + 7520) = *(a2 + 7520);
  *(a1 + 7536) = *(a2 + 7536);
  *(a2 + 7536) = 0;
  *(a2 + 7520) = 0u;
  *(a1 + 7544) = 0u;
  *(a1 + 7560) = 0;
  *(a1 + 7544) = *(a2 + 7544);
  *(a1 + 7552) = *(a2 + 7552);
  *(a2 + 7544) = 0u;
  *(a2 + 7560) = 0;
  *(a1 + 7584) = 0;
  *(a1 + 7568) = 0u;
  *(a1 + 7568) = *(a2 + 7568);
  *(a1 + 7584) = *(a2 + 7584);
  *(a2 + 7584) = 0;
  *(a2 + 7568) = 0u;
  *(a1 + 7592) = 0u;
  *(a1 + 7608) = 0;
  *(a1 + 7592) = *(a2 + 7592);
  *(a1 + 7600) = *(a2 + 7600);
  *(a2 + 7592) = 0u;
  *(a2 + 7608) = 0;
  *(a1 + 7616) = *(a2 + 7616);
  *(a1 + 7632) = 0u;
  *(a1 + 7624) = 0;
  *(a1 + 7624) = *(a2 + 7624);
  *(a1 + 7632) = *(a2 + 7632);
  *(a2 + 7624) = 0u;
  *(a2 + 7640) = 0;
  *(a1 + 7664) = 0;
  *(a1 + 7648) = 0u;
  *(a1 + 7648) = *(a2 + 7648);
  *(a1 + 7664) = *(a2 + 7664);
  *(a2 + 7664) = 0;
  *(a2 + 7648) = 0u;
  *(a1 + 7672) = 0u;
  *(a1 + 7688) = 0;
  *(a1 + 7672) = *(a2 + 7672);
  *(a1 + 7680) = *(a2 + 7680);
  *(a2 + 7672) = 0u;
  *(a2 + 7688) = 0;
  *(a1 + 7712) = 0;
  *(a1 + 7696) = 0u;
  *(a1 + 7696) = *(a2 + 7696);
  *(a1 + 7712) = *(a2 + 7712);
  *(a2 + 7712) = 0;
  *(a2 + 7696) = 0u;
  v40 = *(a2 + 7720);
  *(a2 + 7720) = 0;
  *(a1 + 7720) = v40;
  LODWORD(v40) = *(a2 + 7728);
  *(a1 + 7732) = *(a2 + 7732);
  *(a1 + 7728) = v40;
  v41 = *(a2 + 7752);
  *(a1 + 7736) = *(a2 + 7736);
  *(a1 + 7752) = v41;
  *(a2 + 7736) = 0;
  *(a2 + 7744) = 0u;
  v42 = *(a2 + 7760);
  *(a1 + 7776) = *(a2 + 7776);
  *(a1 + 7760) = v42;
  *(a2 + 7768) = 0u;
  *(a2 + 7760) = 0;
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  *(a1 + 7784) = *(a2 + 7784);
  *(a1 + 7792) = *(a2 + 7792);
  *(a2 + 7784) = 0u;
  *(a2 + 7800) = 0;
  return a1;
}

uint64_t sub_78B454(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x864B8A7DE6D1DLL)
  {
    sub_1794();
  }

  if (0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7);
  }

  if ((0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 7)) >= 0x4325C53EF368ELL)
  {
    v5 = 0x864B8A7DE6D1DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x864B8A7DE6D1DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (a1[1] - *a1) >> 7 << 7;
  sub_78A944(v6, a2);
  v7 = 7808 * v2 + 7808;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_78A944(v12, v11);
      v11 += 7808;
      v12 = v13 + 7808;
    }

    while (v11 != v9);
    do
    {
      sub_78B5C0(v8);
      v8 += 7808;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_78B5C0(uint64_t a1)
{
  v2 = *(a1 + 7784);
  if (v2)
  {
    v3 = *(a1 + 7792);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = *(a1 + 7784);
    }

    *(a1 + 7792) = v2;
    operator delete(v4);
  }

  sub_53A868(a1 + 7624);
  v5 = *(a1 + 7592);
  if (v5)
  {
    v6 = *(a1 + 7600);
    v7 = *(a1 + 7592);
    if (v6 != v5)
    {
      do
      {
        v8 = v6 - 1128;
        v9 = *(v6 - 8);
        if (v9 != -1)
        {
          (off_266C7F0[v9])(&v45, v6 - 1128);
        }

        *(v6 - 8) = -1;
        v6 -= 1128;
      }

      while (v8 != v5);
      v7 = *(a1 + 7592);
    }

    *(a1 + 7600) = v5;
    operator delete(v7);
  }

  v10 = *(a1 + 7568);
  if (v10)
  {
    v11 = *(a1 + 7576);
    v12 = *(a1 + 7568);
    if (v11 != v10)
    {
      do
      {
        v13 = v11 - 1128;
        v14 = *(v11 - 8);
        if (v14 != -1)
        {
          (off_266C7F0[v14])(&v46, v11 - 1128);
        }

        *(v11 - 8) = -1;
        v11 -= 1128;
      }

      while (v13 != v10);
      v12 = *(a1 + 7568);
    }

    *(a1 + 7576) = v10;
    operator delete(v12);
  }

  v15 = *(a1 + 7544);
  if (v15)
  {
    v16 = *(a1 + 7552);
    v17 = *(a1 + 7544);
    if (v16 != v15)
    {
      do
      {
        v16 = sub_3A9518(v16 - 1120);
      }

      while (v16 != v15);
      v17 = *(a1 + 7544);
    }

    *(a1 + 7552) = v15;
    operator delete(v17);
  }

  v18 = *(a1 + 7520);
  if (v18)
  {
    v19 = *(a1 + 7528);
    v20 = *(a1 + 7520);
    if (v19 != v18)
    {
      do
      {
        v19 = sub_3A9518(v19 - 1120);
      }

      while (v19 != v18);
      v20 = *(a1 + 7520);
    }

    *(a1 + 7528) = v18;
    operator delete(v20);
  }

  v21 = *(a1 + 7496);
  if (v21)
  {
    *(a1 + 7504) = v21;
    operator delete(v21);
  }

  if (*(a1 + 7495) < 0)
  {
    operator delete(*(a1 + 7472));
    if ((*(a1 + 7471) & 0x80000000) == 0)
    {
LABEL_36:
      if ((*(a1 + 7447) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_45;
    }
  }

  else if ((*(a1 + 7471) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(*(a1 + 7448));
  if ((*(a1 + 7447) & 0x80000000) == 0)
  {
LABEL_37:
    v22 = *(a1 + 7400);
    if (!v22)
    {
      goto LABEL_38;
    }

LABEL_46:
    v25 = *(a1 + 7408);
    if (v25 == v22)
    {
      *(a1 + 7408) = v22;
      operator delete(v22);
      v23 = *(a1 + 7376);
      if (v23)
      {
        goto LABEL_53;
      }
    }

    else
    {
      do
      {
        if (*(v25 - 1) < 0)
        {
          operator delete(*(v25 - 3));
        }

        v25 -= 5;
      }

      while (v25 != v22);
      v26 = *(a1 + 7400);
      *(a1 + 7408) = v22;
      operator delete(v26);
      v23 = *(a1 + 7376);
      if (v23)
      {
        goto LABEL_53;
      }
    }

LABEL_39:
    if ((*(a1 + 7367) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_45:
  operator delete(*(a1 + 7424));
  v22 = *(a1 + 7400);
  if (v22)
  {
    goto LABEL_46;
  }

LABEL_38:
  v23 = *(a1 + 7376);
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_53:
  v27 = *(a1 + 7384);
  v28 = v23;
  if (v27 != v23)
  {
    do
    {
      v27 = sub_5C0F34(v27 - 816);
    }

    while (v27 != v23);
    v28 = *(a1 + 7376);
  }

  *(a1 + 7384) = v23;
  operator delete(v28);
  if ((*(a1 + 7367) & 0x80000000) == 0)
  {
LABEL_40:
    if ((*(a1 + 7335) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_58:
    operator delete(*(a1 + 7312));
    v24 = *(a1 + 7296);
    if (v24 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_57:
  operator delete(*(a1 + 7344));
  if (*(a1 + 7335) < 0)
  {
    goto LABEL_58;
  }

LABEL_41:
  v24 = *(a1 + 7296);
  if (v24 != -1)
  {
LABEL_59:
    (off_266C7A0[v24])(&v47, a1 + 7264);
  }

LABEL_60:
  *(a1 + 7296) = -1;
  if (*(a1 + 7263) < 0)
  {
    operator delete(*(a1 + 7240));
    if ((*(a1 + 7239) & 0x80000000) == 0)
    {
LABEL_62:
      v29 = *(a1 + 7176);
      if (!v29)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }
  }

  else if ((*(a1 + 7239) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(*(a1 + 7216));
  v29 = *(a1 + 7176);
  if (v29)
  {
LABEL_63:
    *(a1 + 7184) = v29;
    operator delete(v29);
  }

LABEL_64:
  sub_5C1688(a1 + 2376);
  sub_559E70((a1 + 1288));
  if ((*(a1 + 1271) & 0x80000000) == 0)
  {
    if ((*(a1 + 1239) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_72:
    operator delete(*(a1 + 1216));
    v30 = *(a1 + 1200);
    if (v30 == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  operator delete(*(a1 + 1248));
  if (*(a1 + 1239) < 0)
  {
    goto LABEL_72;
  }

LABEL_66:
  v30 = *(a1 + 1200);
  if (v30 != -1)
  {
LABEL_73:
    (off_266C7A0[v30])(&v48, a1 + 1168);
  }

LABEL_74:
  *(a1 + 1200) = -1;
  sub_53A868(a1 + 1000);
  v31 = *(a1 + 976);
  if (v31)
  {
    v32 = *(a1 + 984);
    v33 = *(a1 + 976);
    if (v32 != v31)
    {
      do
      {
        v34 = *(v32 - 1);
        v32 -= 3;
        if (v34 < 0)
        {
          operator delete(*v32);
        }
      }

      while (v32 != v31);
      v33 = *(a1 + 976);
    }

    *(a1 + 984) = v31;
    operator delete(v33);
  }

  sub_53A868(a1 + 816);
  sub_53A868(a1 + 656);
  sub_53A868(a1 + 496);
  sub_53A868(a1 + 336);
  sub_53A868(a1 + 176);
  v35 = *(a1 + 136);
  if (v35)
  {
    v36 = *(a1 + 144);
    v37 = *(a1 + 136);
    if (v36 != v35)
    {
      do
      {
        if (*(v36 - 32) == 1)
        {
          sub_3A9518(v36 - 1152);
        }

        v36 -= 1168;
      }

      while (v36 != v35);
      v37 = *(a1 + 136);
    }

    *(a1 + 144) = v35;
    operator delete(v37);
  }

  v38 = *(a1 + 24);
  if (v38)
  {
    v39 = *(a1 + 32);
    v40 = *(a1 + 24);
    if (v39 != v38)
    {
      do
      {
        v39 -= 176;
        sub_5C17B4(v39);
      }

      while (v39 != v38);
      v40 = *(a1 + 24);
    }

    *(a1 + 32) = v38;
    operator delete(v40);
  }

  v41 = *a1;
  if (*a1)
  {
    v42 = *(a1 + 8);
    v43 = *a1;
    if (v42 != v41)
    {
      do
      {
        v42 = sub_694110(v42 - 12656);
      }

      while (v42 != v41);
      v43 = *a1;
    }

    *(a1 + 8) = v41;
    operator delete(v43);
  }

  return a1;
}

uint64_t *sub_78BAE4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_6926D4((v1 + 3568));
    sub_5135D0((v1 + 1304));
    operator delete();
  }

  return result;
}

void sub_78BB3C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[251];
    if (v3)
    {
      a2[252] = v3;
      operator delete(v3);
    }

    v4 = a2[248];
    if (v4)
    {
      v5 = a2[249];
      v6 = a2[248];
      if (v5 != v4)
      {
        v7 = a2[249];
        do
        {
          v10 = *(v7 - 6);
          v7 -= 6;
          v9 = v10;
          if (v10)
          {
            v11 = *(v5 - 5);
            v8 = v9;
            if (v11 != v9)
            {
              v12 = *(v5 - 5);
              do
              {
                v14 = *(v12 - 3);
                v12 -= 24;
                v13 = v14;
                if (v14)
                {
                  *(v11 - 2) = v13;
                  operator delete(v13);
                }

                v11 = v12;
              }

              while (v12 != v9);
              v8 = *v7;
            }

            *(v5 - 5) = v9;
            operator delete(v8);
          }

          v5 = v7;
        }

        while (v7 != v4);
        v6 = a2[248];
      }

      a2[249] = v4;
      operator delete(v6);
    }

    sub_78BC44(a2 + 215);
    sub_528AB4((a2 + 18));
    sub_584AC0(a2 + 2);

    operator delete();
  }
}

void *sub_78BC44(void *a1)
{
  v2 = a1[29];
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[27];
  a1[27] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[24];
  if (v4)
  {
    v5 = a1[25];
    v6 = a1[24];
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 1);
        v5 -= 3;
        if (v8 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = a1[24];
    }

    a1[25] = v4;
    operator delete(v6);
  }

  return a1;
}

void sub_78BCF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 655) < 0)
    {
      operator delete(*(a2 + 632));
      if ((*(a2 + 599) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a2 + 519) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 599) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 576));
    if ((*(a2 + 519) & 0x80000000) == 0)
    {
LABEL_5:
      v3 = *(a2 + 432);
      if (!v3)
      {
        goto LABEL_7;
      }

      do
      {
LABEL_6:
        v4 = *v3;
        sub_253B4((v3 + 2));
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
LABEL_7:
      v5 = *(a2 + 416);
      *(a2 + 416) = 0;
      if (v5)
      {
        operator delete(v5);
      }

      operator delete();
    }

LABEL_15:
    operator delete(*(a2 + 496));
    v3 = *(a2 + 432);
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }
}

uint64_t *sub_78BDCC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return a1;
}

void *sub_78BE74(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v4 = sub_3B23FC(a2);
  a1[2] = *v4;
  v5 = v4[1];
  a1[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy(a1 + 4, v4 + 2, 0xF18uLL);
  v6 = v4[485];
  a1[487] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  HIBYTE(v21[2]) = 19;
  strcpy(v21, "GuidanceEligibility");
  __p = 0;
  v19 = 0;
  v20 = 0;
  v7 = sub_3AEC94(a2, v21, &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v19;
    v10 = __p;
    if (v19 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v19 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v21[2]) < 0)
  {
    operator delete(v21[0]);
  }

  a1[488] = v7;
  strcpy(v21, "GuidanceFeatureRegions");
  HIBYTE(v21[2]) = 22;
  __p = 0;
  v19 = 0;
  v20 = 0;
  v12 = sub_3AEC94(a2, v21, &__p);
  v13 = __p;
  if (__p)
  {
    v14 = v19;
    v15 = __p;
    if (v19 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = __p;
    }

    v19 = v13;
    operator delete(v15);
  }

  if (SHIBYTE(v21[2]) < 0)
  {
    operator delete(v21[0]);
  }

  a1[489] = v12;
  return a1;
}

void sub_78C05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3A0ED4(v18);
  _Unwind_Resume(a1);
}

uint64_t *sub_78C08C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 3896);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_78C16C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_624E38(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_78C1C0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_5135D0((v1 + 4848));
    sub_5135D0((v1 + 1312));
    operator delete();
  }

  return result;
}

uint64_t *sub_78C21C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_5135D0((v1 + 1312));
    operator delete();
  }

  return result;
}

void sub_78C26C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    nullsub_1(a2 + 10808);
    v3 = *(a2 + 10744);
    if (v3)
    {
      do
      {
        v4 = *v3;
        sub_253B4((v3 + 2));
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *(a2 + 10728);
    *(a2 + 10728) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    sub_6BA518((a2 + 2568));
    if (*(a2 + 2375) < 0)
    {
      operator delete(*(a2 + 2352));
    }

    operator delete();
  }
}

uint64_t *sub_78C318(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_6D2D60(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_78C36C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    nullsub_1(v2);
    operator delete();
  }

  return a1;
}

void **sub_78C3C0(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_78C414(v2);
    operator delete();
  }

  return a1;
}

void *sub_78C414(void *a1)
{
  sub_78C534((a1 + 1166));
  v2 = a1[1165];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_3E3DF0(a1 + 497);
  v3 = a1[494];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[10];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

uint64_t sub_78C534(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_266C728[v4])(&v11, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    do
    {
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_266C728[v8])(&v12, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

uint64_t *sub_78C650(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_F26220();
    operator delete();
  }

  return a1;
}

uint64_t *sub_78C6A4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_528AB4(v1 + 160);
    operator delete();
  }

  return result;
}

uint64_t *sub_78C6F4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_78C74C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 6568);
    if (v3)
    {
      *(a2 + 6576) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 6536);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(a2 + 2664);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if ((*(a2 + 2415) & 0x80000000) == 0)
      {
LABEL_11:

        operator delete();
      }
    }

    else if ((*(a2 + 2415) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    operator delete(*(a2 + 2392));
    goto LABEL_11;
  }
}

uint64_t *sub_78C854(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_78C8AC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_5135D0((v1 + 1288));
    operator delete();
  }

  return result;
}

uint64_t *sub_78C8FC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 19)
    {
      __p[0] = 0;
      __p[1] = 0;
      v36 = 0;
      v8 = *i;
      v7 = i[1];
      v44 = __p;
      v45 = 0;
      if (v7 != v8)
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 4) < 0x333333333333334)
        {
          operator new();
        }

        sub_1794();
      }

      v37[0] = 0;
      v37[1] = 0;
      v38 = 0;
      v9 = i[3];
      v10 = i[4];
      v46 = v37;
      LOBYTE(v47) = 0;
      if (v10 != v9)
      {
        if (0xE21A291C077975B9 * ((v10 - v9) >> 3) < 0x3BCBADC7F10D15)
        {
          operator new();
        }

        sub_1794();
      }

      v11 = *(i + 3);
      v12 = *(i + 4);
      v13 = *(i + 5);
      *&v41[14] = *(i + 94);
      v40 = v12;
      *v41 = v13;
      v39 = v11;
      if (*(i + 127) < 0)
      {
        sub_325C(&v42, i[13], i[14]);
      }

      else
      {
        v14 = *(i + 13);
        v43 = i[15];
        v42 = v14;
      }

      v15 = a3[1];
      if (v15 >= a3[2])
      {
        v21 = sub_60BC14(a3, __p);
        v22 = SHIBYTE(v43);
        a3[1] = v21;
        if (v22 < 0)
        {
          operator delete(v42);
          v20 = v37[0];
          if (v37[0])
          {
LABEL_21:
            v23 = v37[1];
            v24 = v20;
            if (v37[1] != v20)
            {
              do
              {
                v23 = sub_3EEA68(v23 - 1096);
              }

              while (v23 != v20);
              v24 = v37[0];
            }

            v37[1] = v20;
            operator delete(v24);
          }
        }

        else
        {
          v20 = v37[0];
          if (v37[0])
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *v15 = 0;
        *(v15 + 8) = 0;
        *v15 = *__p;
        *(v15 + 16) = v36;
        __p[0] = 0;
        __p[1] = 0;
        v36 = 0;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        *(v15 + 24) = *v37;
        *(v15 + 40) = v38;
        v37[0] = 0;
        v37[1] = 0;
        v38 = 0;
        v16 = v39;
        v17 = v40;
        v18 = *v41;
        *(v15 + 94) = *&v41[14];
        *(v15 + 64) = v17;
        *(v15 + 80) = v18;
        *(v15 + 48) = v16;
        v19 = v42;
        *(v15 + 120) = v43;
        *(v15 + 104) = v19;
        v43 = 0;
        v42 = 0uLL;
        a3[1] = v15 + 128;
        v20 = v37[0];
        if (v37[0])
        {
          goto LABEL_21;
        }
      }

      v25 = __p[0];
      if (__p[0])
      {
        v26 = __p[1];
        v6 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v27 = *(v26 - 3);
            if (v27)
            {
              v28 = *(v26 - 2);
              v29 = *(v26 - 3);
              if (v28 != v27)
              {
                do
                {
                  v30 = v28 - 32;
                  v31 = *(v28 - 8);
                  if (v31 != -1)
                  {
                    (off_266C770[v31])(&v46, v28 - 32);
                  }

                  *(v28 - 8) = -1;
                  v28 -= 32;
                }

                while (v30 != v27);
                v29 = *(v26 - 3);
              }

              *(v26 - 2) = v27;
              operator delete(v29);
            }

            v32 = *(v26 - 8);
            if (v32 != -1)
            {
              (off_266C770[v32])(&v46, v26 - 7);
            }

            v33 = (v26 - 10);
            *(v26 - 8) = -1;
            if (*(v26 - 57) < 0)
            {
              operator delete(*v33);
            }

            v26 -= 10;
          }

          while (v33 != v25);
          v6 = __p[0];
        }

        __p[1] = v25;
        operator delete(v6);
      }
    }
  }

  return a3;
}

void sub_78CE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3EECC8(v9);
  sub_3ECF74(va);
  _Unwind_Resume(a1);
}

void sub_78CE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_419F70(va);
  _Unwind_Resume(a1);
}

void sub_78CE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3EEC50((v9 - 144));
  sub_3ECF74(va);
  _Unwind_Resume(a1);
}

void sub_78CE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v11 != a10)
  {
    do
    {
      sub_3ED230(v12);
      v12 -= 80;
      v10 += 80;
    }

    while (v10);
  }

  sub_3ED324((v13 - 176));
  _Unwind_Resume(a1);
}

uint64_t sub_78CF50(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v4 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v6)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v5 - v6) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_3EDA50((a1 + 72), (a2 + 72));
  v9 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v9;
  *(a1 + 136) = *(a2 + 136);
  v10 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v10;
  sub_3EDBB0(a1 + 168, (a2 + 168));
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  v11 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 320) = v11;
  sub_3EDBB0(a1 + 344, (a2 + 344));
  *(a1 + 480) = *(a2 + 480);
  v12 = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 488) = v12;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  v14 = *(a2 + 504);
  v13 = *(a2 + 512);
  if (v13 != v14)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v15 = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 528) = v15;
  *(a1 + 544) = *(a2 + 544);
  sub_3EDCF4(a1 + 552, (a2 + 552));
  *(a1 + 840) = *(a2 + 840);
  sub_3EE260((a1 + 856), (a2 + 856));
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  v16 = *(a2 + 1000);
  v17 = *(a2 + 1008);
  if (v17 != v16)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  sub_3EE524(a1 + 1024, *(a2 + 1024), *(a2 + 1032), (*(a2 + 1032) - *(a2 + 1024)) >> 6);
  sub_81988((a1 + 1048), a2 + 1048);
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  v18 = *(a2 + 1072);
  v19 = *(a2 + 1080);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_78D34C(_Unwind_Exception *a1)
{
  sub_3EE86C((v1 + 1024));
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 1008) = v7;
    operator delete(v7);
  }

  sub_3EE920(v1 + 856);
  sub_3EE9A4((v1 + 552));
  v8 = *(v1 + 504);
  if (v8)
  {
    *(v1 + 512) = v8;
    operator delete(v8);
  }

  sub_3EDA0C((v1 + 312));
  sub_3EDA0C(v2);
  sub_21DB4B4(v1 + 72);
  v9 = *v4;
  if (*v4)
  {
    *(v1 + 56) = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v10;
    operator delete(v10);
    v11 = *v1;
    if (!*v1)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v11 = *v1;
    if (!*v1)
    {
      goto LABEL_10;
    }
  }

  *(v1 + 8) = v11;
  operator delete(v11);
  goto LABEL_10;
}

void sub_78D46C()
{
  if (!*(v0 + 504))
  {
    JUMPOUT(0x78D410);
  }

  JUMPOUT(0x78D408);
}

void sub_78D47C()
{
  if (!*v0)
  {
    JUMPOUT(0x78D438);
  }

  JUMPOUT(0x78D430);
}

void sub_78D494()
{
  if (!*v0)
  {
    JUMPOUT(0x78D450);
  }

  JUMPOUT(0x78D448);
}

uint64_t sub_78D4A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = result;
  if (result == a2 || (v8 = a3[1], *a3 == v8))
  {
    v10 = result;
  }

  else
  {
    v9 = *a3 + 48;
    v10 = result;
    do
    {
      v11 = **v10 + 464 * *(v10 + 8);
      if (*(v11 + 71) >= 0)
      {
        v12 = *(v11 + 71);
      }

      else
      {
        v12 = *(v11 + 56);
      }

      v13 = v9;
      if ((*(v11 + 71) & 0x80) != 0)
      {
        v14 = v9;
        while (1)
        {
          v20 = *(v14 + 23);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(v14 + 8);
          }

          if (v20 == v12)
          {
            v22 = v21 >= 0 ? v14 : *v14;
            result = memcmp(v22, *(v11 + 48), v12);
            if (!result)
            {
              break;
            }
          }

          v19 = v14 + 1072;
          v14 += 1120;
          if (v19 == v8)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        while (1)
        {
          v16 = *(v13 + 23);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(v13 + 8);
          }

          if (v16 == v12)
          {
            v18 = v17 >= 0 ? v13 : *v13;
            result = memcmp(v18, (v11 + 48), v12);
            if (!result)
            {
              break;
            }
          }

          v15 = v13 + 1072;
          v13 += 1120;
          if (v15 == v8)
          {
            goto LABEL_29;
          }
        }
      }

      v10 += 152;
    }

    while (v10 != a2);
  }

LABEL_29:
  *a4 = v6;
  a4[1] = v10;
  a4[2] = a2;
  a4[3] = a3;
  a4[4] = v6;
  a4[5] = a2;
  a4[6] = a2;
  a4[7] = a3;
  return result;
}

void sub_78D600(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x86BCA1AF286BCA1BLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_5ED940(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x1AF286BCA1AF286)
    {
      v10 = 0x86BCA1AF286BCA1BLL * (v7 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xD79435E50D7943)
      {
        v12 = 0x1AF286BCA1AF286;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1AF286BCA1AF286)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0x86BCA1AF286BCA1BLL * (v13 - v8) >= a4)
  {
    while (v5 != a3)
    {
      sub_52CB8C(v8, v5);
      v5 = (v5 + 152);
      v8 += 19;
    }

    sub_5ED940(a1, v8);
  }

  else
  {
    v15 = (a2 + v14);
    if (v13 != v8)
    {
      do
      {
        sub_52CB8C(v8, v5);
        v5 = (v5 + 152);
        v8 += 19;
        v14 -= 152;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v17 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        sub_5139E8(v16, v15);
        v15 = (v15 + 152);
        v16 = (v17 + 19);
        v17 += 19;
      }

      while (v15 != a3);
    }

    *(a1 + 8) = v16;
  }
}

void sub_78D860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EFC4C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_78D878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EFC4C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_78D890(uint64_t a1, void *a2)
{
  v4 = sub_588E0(*(a1 + 3904));
  v5 = sub_5FC5C();
  if (v4 != v5)
  {
    v6 = v5;
    do
    {
      if (*(v4 + 48) != 5)
      {
        sub_5AF20();
      }

      v7 = *(v4 + 40);
      HIBYTE(v17) = 5;
      strcpy(__p, "scope");
      v8 = sub_5F8FC(v7, __p);
      v9 = *(v8 + 23);
      if (v9 < 0)
      {
        if (v8[1] == 5)
        {
          v8 = *v8;
LABEL_11:
          v11 = *v8 == 1953853298 && *(v8 + 4) == 101;
          if ((SHIBYTE(v17) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          operator delete(__p[0]);
          goto LABEL_21;
        }
      }

      else if (v9 == 5)
      {
        goto LABEL_11;
      }

      v11 = 0;
      if (SHIBYTE(v17) < 0)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v11)
      {
        sub_78DAB8(a1, a2, v7, v18);
        sub_78DCAC(a1, v4 + 16, v18, __p);
        if (!sub_5FC6C(__p))
        {
          sub_618594((a2 + 1558), __p, v4 + 16);
        }

        v12 = v17;
        if (v17)
        {
          do
          {
            v14 = *v12;
            v15 = *(v12 + 12);
            if (v15 != -1)
            {
              (off_266C728[v15])(&v20, v12 + 5);
            }

            *(v12 + 12) = -1;
            if (*(v12 + 39) < 0)
            {
              operator delete(v12[2]);
            }

            operator delete(v12);
            v12 = v14;
          }

          while (v14);
        }

        v13 = __p[0];
        __p[0] = 0;
        if (v13)
        {
          operator delete(v13);
        }

        if (v19 < 0)
        {
          operator delete(v18[0]);
        }
      }

      v4 = *v4;
    }

    while (v4 != v6);
  }
}

void sub_78DA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_78DAB8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v19[0] = 0;
  v19[1] = 0;
  HIBYTE(__p[2]) = 21;
  v20 = 0;
  strcpy(__p, "feature_polygon_usage");
  v8 = sub_5FC3C(a3, __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_18;
  }

  v13 = v8;
  operator delete(__p[0]);
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  v9 = sub_4D1DC0(a2);
  HIBYTE(v17[2]) = 21;
  strcpy(v17, "feature_polygon_usage");
  v10 = sub_5F8FC(a3, v17);
  sub_78DEE8(a1, a2, 0, v9 - 1, v10, __p);
  *v19 = *__p;
  v20 = __p[2];
  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  if (SHIBYTE(v17[2]) < 0)
  {
    operator delete(v17[0]);
    v11 = SHIBYTE(v20);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
LABEL_5:
      if (v11 == 5)
      {
        v12 = v19;
        goto LABEL_12;
      }

LABEL_16:
      *a4 = *v19;
      *(a4 + 16) = v20;
      return;
    }
  }

  else
  {
    v11 = SHIBYTE(v20);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  if (v19[1] != dword_4 + 1)
  {
    goto LABEL_16;
  }

  v12 = v19[0];
LABEL_12:
  v14 = *v12;
  v15 = *(v12 + 4);
  if (v14 != 1819438967 || v15 != 100)
  {
    goto LABEL_16;
  }

LABEL_18:
  sub_78E144(a1, a2, a4);
  if (v11 < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_78DC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p)
{
  if (v25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_78DCAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_5F328(a4);
  v8 = sub_5F5AC(*(a1 + 3912), a2);
  if (sub_5FC3C(v8, a3))
  {
    if (*(a3 + 23) < 0)
    {
      sub_325C(v17, *a3, *(a3 + 8));
    }

    else
    {
      *v17 = *a3;
      v18 = *(a3 + 16);
    }
  }

  else
  {
    v16 = 5;
    strcpy(__p, "world");
    v9 = sub_5FC3C(v8, __p);
    if (v9)
    {
      v10 = 5;
    }

    else
    {
      v10 = 0;
    }

    HIBYTE(v18) = v10;
    if (v9)
    {
      strcpy(v17, "world");
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v17[0]) = 0;
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    operator delete(__p[0]);
  }

LABEL_13:
  v11 = HIBYTE(v18);
  v12 = HIBYTE(v18);
  if (v18 < 0)
  {
    v11 = v17[1];
  }

  if (v11)
  {
    v16 = 15;
    strcpy(__p, "region_template");
    v13 = sub_5FAAC(v8, __p, a4);
    if (v13 != a4)
    {
      *(a4 + 32) = *(v13 + 8);
      sub_618D4(a4, v13[2], 0);
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = sub_5F5AC(v8, v17);
    sub_5FC7C(a4, v14);
    v12 = HIBYTE(v18);
  }

  if (v12 < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_78DE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v21);
  _Unwind_Resume(a1);
}

void sub_78DEE8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_4D1F50(a2, a3);
  sub_2B7A20(*(a1 + 8), *(v11 + 32) & 0xFFFFFFFFFFFFFFLL, v30);
  v12 = sub_4D1F50(a2, a4);
  sub_2B7A20(*(a1 + 8), *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, v27);
  v33 = sub_31A76C(v30);
  *v34 = v13;
  *&v34[4] = sub_31AA0C(v27);
  v35 = v14;
  *v24 = 0u;
  *__p = 0u;
  v26 = 1065353216;
  sub_5280AC(v24, &v33);
  sub_5280AC(v24, &v34[4]);
  v15 = sub_3B6888(*a1);
  sub_617F8C(v15, v24, a5, &v33);
  v16 = v33;
  if (*(v33 + 23) < 0)
  {
    sub_325C(a6, *v33, *(v33 + 1));
    v16 = v33;
    if (!v33)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v17 = *v33;
    *(a6 + 16) = *(v33 + 2);
    *a6 = v17;
  }

  v18 = *v34;
  v19 = v16;
  if (*v34 != v16)
  {
    do
    {
      v20 = *(v18 - 1);
      v18 -= 3;
      if (v20 < 0)
      {
        operator delete(*v18);
      }
    }

    while (v18 != v16);
    v19 = v33;
  }

  *v34 = v16;
  operator delete(v19);
LABEL_11:
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

  v23 = v24[0];
  v24[0] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_78E0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  sub_1A104((v22 - 80));
  sub_11BD8(&a9);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (!a21)
  {
    _Unwind_Resume(a1);
  }

  a22 = a21;
  operator delete(a21);
  _Unwind_Resume(a1);
}

void sub_78E144(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4D1F50(a2, 0);
  sub_4E51E0(*(a1 + 8), *(v6 + 32) | (*(v6 + 36) << 32), v19);
  v7 = sub_4D1DC0(a2);
  v8 = sub_4D1F50(a2, v7 - 1);
  sub_4E51E0(*(a1 + 8), *(v8 + 32) | (*(v8 + 36) << 32), __p);
  v9 = SHIBYTE(v20);
  v10 = v19[1];
  if (v20 >= 0)
  {
    v11 = HIBYTE(v20);
  }

  else
  {
    v11 = v19[1];
  }

  v12 = v18;
  v13 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v11 == v12 && ((v14 = v19[0], v20 >= 0) ? (v15 = v19) : (v15 = v19[0]), (v18 & 0x80u) == 0 ? (v16 = __p) : (v16 = __p[0]), !memcmp(v15, v16, v11)))
  {
    if (v9 < 0)
    {
      sub_325C(a3, v14, v10);
      v13 = v18;
    }

    else
    {
      *a3 = *v19;
      *(a3 + 16) = v20;
    }
  }

  else
  {
    *(a3 + 23) = 5;
    strcpy(a3, "world");
  }

  if ((v13 & 0x80) == 0)
  {
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v19[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_19;
  }
}

void sub_78E2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_78E308(uint64_t a1, void *a2)
{
  if (*(a1 + 7488) != *(a1 + 7496))
  {
    return;
  }

  v4 = sub_3AF6B4(a2);
  v5 = sub_3B2A90(a2);
  v6 = sub_4D1DC0(a1);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  v8 = sub_4D1F50(a1, 0);
  sub_4E51E0(v4, *(v8 + 32) | (*(v8 + 36) << 32), __p);
  if (!sub_4B9418(v5, __p))
  {
LABEL_7:
    v9 = *(a1 + 7496);
    if (v9 < *(a1 + 7504))
    {
      goto LABEL_8;
    }

LABEL_11:
    *(a1 + 7496) = sub_5C416C(a1 + 7488, __p);
    if (SHIBYTE(v33) < 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (v7 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    LOBYTE(__p[0]) = 0;
    HIBYTE(v33) = 0;
    goto LABEL_7;
  }

  *__p[0] = 0;
  __p[1] = 0;
  v9 = *(a1 + 7496);
  if (v9 >= *(a1 + 7504))
  {
    goto LABEL_11;
  }

LABEL_8:
  if (SHIBYTE(v33) < 0)
  {
    sub_325C(v9, __p[0], __p[1]);
  }

  else
  {
    v10 = *__p;
    *(v9 + 16) = v33;
    *v9 = v10;
  }

  *(a1 + 7496) = v9 + 24;
  *(a1 + 7496) = v9 + 24;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  operator delete(__p[0]);
  if (v7 != 1)
  {
LABEL_27:
    v16 = 1;
    while (1)
    {
      v18 = sub_4D1F50(a1, v16);
      v19 = (*v18 - **v18);
      if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
      {
        v21 = *(*v18 + v20);
      }

      else
      {
        v21 = 0;
      }

      v22 = v16 - 1;
      v23 = sub_4D1F50(a1, v22);
      v24 = (*v23 - **v23);
      if (*v24 >= 0xDu && (v25 = v24[6]) != 0)
      {
        if (*(*v23 + v25) == v21)
        {
          goto LABEL_45;
        }
      }

      else if (!v21)
      {
LABEL_45:
        v28 = *(a1 + 7496);
        v29 = (v28 - 24);
        if (v28 >= *(a1 + 7504))
        {
          v17 = sub_5C416C(a1 + 7488, v29);
        }

        else
        {
          if (*(v28 - 1) < 0)
          {
            sub_325C(*(a1 + 7496), *(v28 - 24), *(v28 - 16));
          }

          else
          {
            *v28 = *v29;
            *(v28 + 16) = *(v28 - 8);
          }

          v17 = v28 + 24;
          *(a1 + 7496) = v28 + 24;
        }

        *(a1 + 7496) = v17;
        goto LABEL_30;
      }

      sub_4E51E0(v4, *(v18 + 8) | (*(v18 + 18) << 32), __p);
      if (!sub_4B9418(v5, __p))
      {
        goto LABEL_41;
      }

      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        break;
      }

      *__p[0] = 0;
      __p[1] = 0;
      v26 = *(a1 + 7496);
      if (v26 < *(a1 + 7504))
      {
LABEL_42:
        if (SHIBYTE(v33) < 0)
        {
          sub_325C(v26, __p[0], __p[1]);
        }

        else
        {
          v27 = *__p;
          *(v26 + 16) = v33;
          *v26 = v27;
        }

        *(a1 + 7496) = v26 + 24;
        *(a1 + 7496) = v26 + 24;
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_55:
        operator delete(__p[0]);
        goto LABEL_30;
      }

LABEL_51:
      *(a1 + 7496) = sub_5C416C(a1 + 7488, __p);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_55;
      }

LABEL_30:
      v16 = v22 + 2;
      if (v16 == v7)
      {
        goto LABEL_17;
      }
    }

    LOBYTE(__p[0]) = 0;
    HIBYTE(v33) = 0;
LABEL_41:
    v26 = *(a1 + 7496);
    if (v26 < *(a1 + 7504))
    {
      goto LABEL_42;
    }

    goto LABEL_51;
  }

LABEL_17:
  v11 = *(a1 + 7488);
  v12 = *(a1 + 7496);
  if (v11 == v12)
  {
    return;
  }

  while (1)
  {
    v13 = *(v11 + 23);
    if ((v13 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (v11[1])
    {
      goto LABEL_23;
    }

LABEL_20:
    v11 += 3;
    if (v11 == v12)
    {
      return;
    }
  }

  if (!*(v11 + 23))
  {
    goto LABEL_20;
  }

LABEL_23:
  v14 = (a1 + 7464);
  if (v11 != (a1 + 7464))
  {
    if (*(a1 + 7487) < 0)
    {
      if (v13 >= 0)
      {
        v30 = v11;
      }

      else
      {
        v30 = *v11;
      }

      if (v13 >= 0)
      {
        v31 = *(v11 + 23);
      }

      else
      {
        v31 = v11[1];
      }

      sub_13B38(v14, v30, v31);
    }

    else if ((v13 & 0x80000000) != 0)
    {
      sub_13A68(v14, *v11, v11[1]);
    }

    else
    {
      v15 = *v11;
      *(a1 + 7480) = v11[2];
      *v14 = v15;
    }
  }
}

void sub_78E6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 7496) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_78E6E8(void *a1, void *a2)
{
  if (!sub_4D1DC0(a1) || a1[156] != a1[157])
  {
    return;
  }

  v4 = a1[936];
  if (*(v4 + 23) < 0)
  {
    sub_325C(&v66, *v4, *(v4 + 1));
    v6 = a1[937];
    if ((*(v6 - 1) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *v4;
    v67 = *(v4 + 2);
    v66 = v5;
    v6 = a1[937];
    if ((*(v6 - 1) & 0x80000000) == 0)
    {
LABEL_5:
      v7 = *(v6 - 24);
      v65 = *(v6 - 8);
      v64 = v7;
      goto LABEL_8;
    }
  }

  sub_325C(&v64, *(v6 - 24), *(v6 - 16));
LABEL_8:
  v8 = SHIBYTE(v67);
  v9 = *(&v66 + 1);
  if (v67 >= 0)
  {
    v10 = HIBYTE(v67);
  }

  else
  {
    v10 = *(&v66 + 1);
  }

  v11 = HIBYTE(v65);
  if (v65 < 0)
  {
    v11 = *(&v64 + 1);
  }

  if (v10 == v11 && ((v12 = v66, v67 >= 0) ? (v13 = &v66) : (v13 = v66), v65 >= 0 ? (v14 = &v64) : (v14 = v64), !memcmp(v13, v14, v10)))
  {
    if (v8 < 0)
    {
      sub_325C(&v62, v12, v9);
    }

    else
    {
      v62 = v66;
      v63 = v67;
    }
  }

  else
  {
    HIBYTE(v63) = 0;
    LOBYTE(v62) = 0;
  }

  __p = 0uLL;
  v47 = 0;
  sub_87E080(v59, a2, 0, &__p);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  v15 = sub_3AF6B4(a2);
  v16 = sub_4D1DC0(a1);
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v18 = sub_4D1F50(a1, v17);
      v19 = sub_53A634(a1 + 936, v17);
      v20 = *(v18 + 32);
      v56 = v20;
      v58 = BYTE6(v20);
      v57 = WORD2(v20);
      if (!v17)
      {
        sub_87EFA8(v59, &v56, v19, &__p);
        v44 = 0;
        v26 = a1[157];
        if (v26 >= a1[158])
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      v21 = sub_4D1F50(a1, (v17 - 1));
      if (sub_31EE90(v15, *(v21 + 32) & 0xFFFFFFFFFFFFFFLL, *(v18 + 32) & 0xFFFFFFFFFFFFFFLL))
      {
        break;
      }

LABEL_68:
      sub_87EFA8(v59, &v56, v19, &__p);
      if (sub_734D94(&__p, (a1[157] - 160)))
      {
        goto LABEL_73;
      }

      v44 = v17;
      v26 = a1[157];
      if (v26 >= a1[158])
      {
LABEL_71:
        v43 = sub_610738(a1 + 156, &__p, &v44);
        goto LABEL_72;
      }

LABEL_70:
      sub_5139E8(a1[157], &__p);
      *(v26 + 152) = v44;
      v43 = v26 + 160;
      a1[157] = v26 + 160;
LABEL_72:
      a1[157] = v43;
LABEL_73:
      if (v55 < 0)
      {
        operator delete(v54);
        if ((v53 & 0x80000000) == 0)
        {
LABEL_75:
          if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_80;
        }
      }

      else if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

      operator delete(v52);
      if ((v51 & 0x80000000) == 0)
      {
LABEL_76:
        if (v49 < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_81;
      }

LABEL_80:
      operator delete(v50);
      if (v49 < 0)
      {
LABEL_26:
        operator delete(v48);
        if (SHIBYTE(v47) < 0)
        {
          goto LABEL_82;
        }

        goto LABEL_27;
      }

LABEL_81:
      if (SHIBYTE(v47) < 0)
      {
LABEL_82:
        operator delete(__p);
      }

LABEL_27:
      if (++v17 == v16)
      {
        goto LABEL_83;
      }
    }

    v22 = sub_2B51D8(v15, *(v21 + 32) | (*(v21 + 36) << 32));
    v23 = (v22 - *v22);
    if (*v23 >= 0x25u && (v24 = v23[18]) != 0)
    {
      v25 = (v22 + v24 + *(v22 + v24));
    }

    else
    {
      v25 = 0;
    }

    sub_31077C(v25, &__p);
    v27 = sub_2B51D8(v15, *(v18 + 32) | (*(v18 + 36) << 32));
    v28 = (v27 - *v27);
    if (*v28 >= 0x25u && (v29 = v28[18]) != 0)
    {
      v30 = (v27 + v29 + *(v27 + v29));
    }

    else
    {
      v30 = 0;
    }

    sub_31077C(v30, &v44);
    v32 = *(&__p + 1);
    v31 = __p;
    v33 = v44;
    if (*(&__p + 1) - __p == v45 - v44)
    {
      if (__p == *(&__p + 1))
      {
        v34 = 1;
        if (!v44)
        {
          goto LABEL_59;
        }
      }

      else
      {
        do
        {
          v34 = sub_3106C0(v31, v33);
          v31 += 40;
          v33 += 5;
        }

        while (v31 != v32 && v34);
        v33 = v44;
        if (!v44)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      v34 = 0;
      if (!v44)
      {
        goto LABEL_59;
      }
    }

    v36 = v34;
    v37 = v45;
    v38 = v33;
    if (v45 != v33)
    {
      do
      {
        if (*(v37 - 9) < 0)
        {
          operator delete(*(v37 - 4));
        }

        v37 -= 5;
      }

      while (v37 != v33);
      v38 = v44;
    }

    v45 = v33;
    operator delete(v38);
    v34 = v36;
LABEL_59:
    v39 = __p;
    if (__p)
    {
      v40 = v34;
      v41 = *(&__p + 1);
      v42 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v41 - 9) < 0)
          {
            operator delete(*(v41 - 32));
          }

          v41 -= 40;
        }

        while (v41 != v39);
        v42 = __p;
      }

      *(&__p + 1) = v39;
      operator delete(v42);
      v34 = v40;
    }

    if (v34)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_83:
  if ((v61 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_89:
    operator delete(v62);
    if ((SHIBYTE(v65) & 0x80000000) == 0)
    {
LABEL_86:
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
        return;
      }

LABEL_91:
      operator delete(v66);
      return;
    }

    goto LABEL_90;
  }

  operator delete(v60);
  if (SHIBYTE(v63) < 0)
  {
    goto LABEL_89;
  }

LABEL_85:
  if ((SHIBYTE(v65) & 0x80000000) == 0)
  {
    goto LABEL_86;
  }

LABEL_90:
  operator delete(v64);
  if (SHIBYTE(v67) < 0)
  {
    goto LABEL_91;
  }
}

void sub_78EC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (*(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
    if (*(v41 - 89) < 0)
    {
LABEL_3:
      operator delete(*(v41 - 112));
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v41 - 89) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_78ED2C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 1120);
  if (v4)
  {
    if (v4 != 1)
    {
      sub_5AF20();
    }

    sub_52B7D8(v13, a2);
    if (a3)
    {
      if (v24[1])
      {
        v5 = v24;
LABEL_18:
        v7 = *v5;
        sub_3A9518(v13);
        return v7 & 1;
      }
    }

    else if (v25[1])
    {
      v5 = v25;
      goto LABEL_18;
    }

    sub_4F0F0C();
  }

  sub_52A464(v13, a2);
  v6 = 160;
  if (!a3)
  {
    v6 = 161;
  }

  v7 = v13[v6];
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v8 = v20;
  if (v20)
  {
    v9 = v21;
    v10 = v20;
    if (v21 != v20)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v20;
    }

    v21 = v8;
    operator delete(v10);
  }

  if ((v19 & 0x80000000) == 0)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
      return v7 & 1;
    }

    goto LABEL_28;
  }

  operator delete(v18);
  if (v17 < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if ((v15 & 0x80000000) == 0)
  {
    return v7 & 1;
  }

LABEL_28:
  operator delete(v14);
  return v7 & 1;
}

void *sub_78EE94(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v4 = sub_3B23FC(a2);
  a1[2] = *v4;
  v5 = v4[1];
  a1[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy(a1 + 4, v4 + 2, 0xF18uLL);
  v6 = v4[485];
  a1[487] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  HIBYTE(v21[2]) = 19;
  strcpy(v21, "GuidanceEligibility");
  __p = 0;
  v19 = 0;
  v20 = 0;
  v7 = sub_3AEC94(a2, v21, &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v19;
    v10 = __p;
    if (v19 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v19 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v21[2]) < 0)
  {
    operator delete(v21[0]);
  }

  a1[488] = v7;
  strcpy(v21, "GuidanceFeatureRegions");
  HIBYTE(v21[2]) = 22;
  __p = 0;
  v19 = 0;
  v20 = 0;
  v12 = sub_3AEC94(a2, v21, &__p);
  v13 = __p;
  if (__p)
  {
    v14 = v19;
    v15 = __p;
    if (v19 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = __p;
    }

    v19 = v13;
    operator delete(v15);
  }

  if (SHIBYTE(v21[2]) < 0)
  {
    operator delete(v21[0]);
  }

  a1[489] = v12;
  return a1;
}

void sub_78F07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3A0ED4(v18);
  _Unwind_Resume(a1);
}

void **sub_78F0AC(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_78F100(v2);
    operator delete();
  }

  return a1;
}

void *sub_78F100(void *a1)
{
  sub_78F220((a1 + 1166));
  v2 = a1[1165];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_3E3DF0(a1 + 497);
  v3 = a1[494];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[10];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

uint64_t sub_78F220(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_266C728[v4])(&v11, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    do
    {
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_266C728[v8])(&v12, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

uint64_t *sub_78F33C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_F4AF44(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_78F390(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 19)
    {
      __p[0] = 0;
      __p[1] = 0;
      v36 = 0;
      v8 = *i;
      v7 = i[1];
      v44 = __p;
      v45 = 0;
      if (v7 != v8)
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 4) < 0x333333333333334)
        {
          operator new();
        }

        sub_1794();
      }

      v37[0] = 0;
      v37[1] = 0;
      v38 = 0;
      v9 = i[3];
      v10 = i[4];
      v46 = v37;
      LOBYTE(v47) = 0;
      if (v10 != v9)
      {
        if (0xE21A291C077975B9 * ((v10 - v9) >> 3) < 0x3BCBADC7F10D15)
        {
          operator new();
        }

        sub_1794();
      }

      v11 = *(i + 3);
      v12 = *(i + 4);
      v13 = *(i + 5);
      *&v41[14] = *(i + 94);
      v40 = v12;
      *v41 = v13;
      v39 = v11;
      if (*(i + 127) < 0)
      {
        sub_325C(&v42, i[13], i[14]);
      }

      else
      {
        v14 = *(i + 13);
        v43 = i[15];
        v42 = v14;
      }

      v15 = a3[1];
      if (v15 >= a3[2])
      {
        v21 = sub_60BC14(a3, __p);
        v22 = SHIBYTE(v43);
        a3[1] = v21;
        if (v22 < 0)
        {
          operator delete(v42);
          v20 = v37[0];
          if (v37[0])
          {
LABEL_21:
            v23 = v37[1];
            v24 = v20;
            if (v37[1] != v20)
            {
              do
              {
                v23 = sub_3EEA68(v23 - 1096);
              }

              while (v23 != v20);
              v24 = v37[0];
            }

            v37[1] = v20;
            operator delete(v24);
          }
        }

        else
        {
          v20 = v37[0];
          if (v37[0])
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *v15 = 0;
        *(v15 + 8) = 0;
        *v15 = *__p;
        *(v15 + 16) = v36;
        __p[0] = 0;
        __p[1] = 0;
        v36 = 0;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        *(v15 + 24) = *v37;
        *(v15 + 40) = v38;
        v37[0] = 0;
        v37[1] = 0;
        v38 = 0;
        v16 = v39;
        v17 = v40;
        v18 = *v41;
        *(v15 + 94) = *&v41[14];
        *(v15 + 64) = v17;
        *(v15 + 80) = v18;
        *(v15 + 48) = v16;
        v19 = v42;
        *(v15 + 120) = v43;
        *(v15 + 104) = v19;
        v43 = 0;
        v42 = 0uLL;
        a3[1] = v15 + 128;
        v20 = v37[0];
        if (v37[0])
        {
          goto LABEL_21;
        }
      }

      v25 = __p[0];
      if (__p[0])
      {
        v26 = __p[1];
        v6 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v27 = *(v26 - 3);
            if (v27)
            {
              v28 = *(v26 - 2);
              v29 = *(v26 - 3);
              if (v28 != v27)
              {
                do
                {
                  v30 = v28 - 32;
                  v31 = *(v28 - 8);
                  if (v31 != -1)
                  {
                    (off_266C770[v31])(&v46, v28 - 32);
                  }

                  *(v28 - 8) = -1;
                  v28 -= 32;
                }

                while (v30 != v27);
                v29 = *(v26 - 3);
              }

              *(v26 - 2) = v27;
              operator delete(v29);
            }

            v32 = *(v26 - 8);
            if (v32 != -1)
            {
              (off_266C770[v32])(&v46, v26 - 7);
            }

            v33 = (v26 - 10);
            *(v26 - 8) = -1;
            if (*(v26 - 57) < 0)
            {
              operator delete(*v33);
            }

            v26 -= 10;
          }

          while (v33 != v25);
          v6 = __p[0];
        }

        __p[1] = v25;
        operator delete(v6);
      }
    }
  }

  return a3;
}

void sub_78F8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3EECC8(v9);
  sub_3ECF74(va);
  _Unwind_Resume(a1);
}

void sub_78F8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_419F70(va);
  _Unwind_Resume(a1);
}

void sub_78F8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3EEC50((v9 - 144));
  sub_3ECF74(va);
  _Unwind_Resume(a1);
}

void sub_78F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v11 != a10)
  {
    do
    {
      sub_3ED230(v12);
      v12 -= 80;
      v10 += 80;
    }

    while (v10);
  }

  sub_3ED324((v13 - 176));
  _Unwind_Resume(a1);
}

uint64_t sub_78F9E4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 1120);
  if (v4)
  {
    if (v4 != 1)
    {
      sub_5AF20();
    }

    sub_52B7D8(v13, a2);
    if (a3)
    {
      if (v24[1])
      {
        v5 = v24;
LABEL_18:
        v7 = *v5;
        sub_3A9518(v13);
        return v7 & 1;
      }
    }

    else if (v25[1])
    {
      v5 = v25;
      goto LABEL_18;
    }

    sub_4F0F0C();
  }

  sub_52A464(v13, a2);
  v6 = 160;
  if (!a3)
  {
    v6 = 161;
  }

  v7 = v13[v6];
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v8 = v20;
  if (v20)
  {
    v9 = v21;
    v10 = v20;
    if (v21 != v20)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v20;
    }

    v21 = v8;
    operator delete(v10);
  }

  if ((v19 & 0x80000000) == 0)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
      return v7 & 1;
    }

    goto LABEL_28;
  }

  operator delete(v18);
  if (v17 < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if ((v15 & 0x80000000) == 0)
  {
    return v7 & 1;
  }

LABEL_28:
  operator delete(v14);
  return v7 & 1;
}

void *sub_78FB4C(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v4 = sub_3B23FC(a2);
  a1[2] = *v4;
  v5 = v4[1];
  a1[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy(a1 + 4, v4 + 2, 0xF18uLL);
  v6 = v4[485];
  a1[487] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  HIBYTE(v21[2]) = 19;
  strcpy(v21, "GuidanceEligibility");
  __p = 0;
  v19 = 0;
  v20 = 0;
  v7 = sub_3AEC94(a2, v21, &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v19;
    v10 = __p;
    if (v19 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v19 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v21[2]) < 0)
  {
    operator delete(v21[0]);
  }

  a1[488] = v7;
  strcpy(v21, "GuidanceFeatureRegions");
  HIBYTE(v21[2]) = 22;
  __p = 0;
  v19 = 0;
  v20 = 0;
  v12 = sub_3AEC94(a2, v21, &__p);
  v13 = __p;
  if (__p)
  {
    v14 = v19;
    v15 = __p;
    if (v19 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = __p;
    }

    v19 = v13;
    operator delete(v15);
  }

  if (SHIBYTE(v21[2]) < 0)
  {
    operator delete(v21[0]);
  }

  a1[489] = v12;
  return a1;
}

void sub_78FD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3A0ED4(v18);
  _Unwind_Resume(a1);
}

void **sub_78FD64(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_78FDB8(v2);
    operator delete();
  }

  return a1;
}

void *sub_78FDB8(void *a1)
{
  sub_78FED8((a1 + 1166));
  v2 = a1[1165];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_3E3DF0(a1 + 497);
  v3 = a1[494];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[10];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

uint64_t sub_78FED8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_266C728[v4])(&v11, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    do
    {
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_266C728[v8])(&v12, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

uint64_t *sub_78FFF4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 19)
    {
      __p[0] = 0;
      __p[1] = 0;
      v36 = 0;
      v8 = *i;
      v7 = i[1];
      v44 = __p;
      v45 = 0;
      if (v7 != v8)
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 4) < 0x333333333333334)
        {
          operator new();
        }

        sub_1794();
      }

      v37[0] = 0;
      v37[1] = 0;
      v38 = 0;
      v9 = i[3];
      v10 = i[4];
      v46 = v37;
      LOBYTE(v47) = 0;
      if (v10 != v9)
      {
        if (0xE21A291C077975B9 * ((v10 - v9) >> 3) < 0x3BCBADC7F10D15)
        {
          operator new();
        }

        sub_1794();
      }

      v11 = *(i + 3);
      v12 = *(i + 4);
      v13 = *(i + 5);
      *&v41[14] = *(i + 94);
      v40 = v12;
      *v41 = v13;
      v39 = v11;
      if (*(i + 127) < 0)
      {
        sub_325C(&v42, i[13], i[14]);
      }

      else
      {
        v14 = *(i + 13);
        v43 = i[15];
        v42 = v14;
      }

      v15 = a3[1];
      if (v15 >= a3[2])
      {
        v21 = sub_60BC14(a3, __p);
        v22 = SHIBYTE(v43);
        a3[1] = v21;
        if (v22 < 0)
        {
          operator delete(v42);
          v20 = v37[0];
          if (v37[0])
          {
LABEL_21:
            v23 = v37[1];
            v24 = v20;
            if (v37[1] != v20)
            {
              do
              {
                v23 = sub_3EEA68(v23 - 1096);
              }

              while (v23 != v20);
              v24 = v37[0];
            }

            v37[1] = v20;
            operator delete(v24);
          }
        }

        else
        {
          v20 = v37[0];
          if (v37[0])
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *v15 = 0;
        *(v15 + 8) = 0;
        *v15 = *__p;
        *(v15 + 16) = v36;
        __p[0] = 0;
        __p[1] = 0;
        v36 = 0;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        *(v15 + 24) = *v37;
        *(v15 + 40) = v38;
        v37[0] = 0;
        v37[1] = 0;
        v38 = 0;
        v16 = v39;
        v17 = v40;
        v18 = *v41;
        *(v15 + 94) = *&v41[14];
        *(v15 + 64) = v17;
        *(v15 + 80) = v18;
        *(v15 + 48) = v16;
        v19 = v42;
        *(v15 + 120) = v43;
        *(v15 + 104) = v19;
        v43 = 0;
        v42 = 0uLL;
        a3[1] = v15 + 128;
        v20 = v37[0];
        if (v37[0])
        {
          goto LABEL_21;
        }
      }

      v25 = __p[0];
      if (__p[0])
      {
        v26 = __p[1];
        v6 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v27 = *(v26 - 3);
            if (v27)
            {
              v28 = *(v26 - 2);
              v29 = *(v26 - 3);
              if (v28 != v27)
              {
                do
                {
                  v30 = v28 - 32;
                  v31 = *(v28 - 8);
                  if (v31 != -1)
                  {
                    (off_266C770[v31])(&v46, v28 - 32);
                  }

                  *(v28 - 8) = -1;
                  v28 -= 32;
                }

                while (v30 != v27);
                v29 = *(v26 - 3);
              }

              *(v26 - 2) = v27;
              operator delete(v29);
            }

            v32 = *(v26 - 8);
            if (v32 != -1)
            {
              (off_266C770[v32])(&v46, v26 - 7);
            }

            v33 = (v26 - 10);
            *(v26 - 8) = -1;
            if (*(v26 - 57) < 0)
            {
              operator delete(*v33);
            }

            v26 -= 10;
          }

          while (v33 != v25);
          v6 = __p[0];
        }

        __p[1] = v25;
        operator delete(v6);
      }
    }
  }

  return a3;
}

void sub_79050C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3EECC8(v9);
  sub_3ECF74(va);
  _Unwind_Resume(a1);
}

void sub_790528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_419F70(va);
  _Unwind_Resume(a1);
}

void sub_79053C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_3EEC50((v9 - 144));
  sub_3ECF74(va);
  _Unwind_Resume(a1);
}

void sub_790574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v11 != a10)
  {
    do
    {
      sub_3ED230(v12);
      v12 -= 80;
      v10 += 80;
    }

    while (v10);
  }

  sub_3ED324((v13 - 176));
  _Unwind_Resume(a1);
}

uint64_t sub_790648(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v4 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v6)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v5 - v6) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_3EDA50((a1 + 72), (a2 + 72));
  v9 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v9;
  *(a1 + 136) = *(a2 + 136);
  v10 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v10;
  sub_3EDBB0(a1 + 168, (a2 + 168));
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  v11 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 320) = v11;
  sub_3EDBB0(a1 + 344, (a2 + 344));
  *(a1 + 480) = *(a2 + 480);
  v12 = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 488) = v12;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  v14 = *(a2 + 504);
  v13 = *(a2 + 512);
  if (v13 != v14)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v15 = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 528) = v15;
  *(a1 + 544) = *(a2 + 544);
  sub_3EDCF4(a1 + 552, (a2 + 552));
  *(a1 + 840) = *(a2 + 840);
  sub_3EE260((a1 + 856), (a2 + 856));
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  v16 = *(a2 + 1000);
  v17 = *(a2 + 1008);
  if (v17 != v16)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  sub_3EE524(a1 + 1024, *(a2 + 1024), *(a2 + 1032), (*(a2 + 1032) - *(a2 + 1024)) >> 6);
  sub_81988((a1 + 1048), a2 + 1048);
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  v18 = *(a2 + 1072);
  v19 = *(a2 + 1080);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_790A44(_Unwind_Exception *a1)
{
  sub_3EE86C((v1 + 1024));
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 1008) = v7;
    operator delete(v7);
  }

  sub_3EE920(v1 + 856);
  sub_3EE9A4((v1 + 552));
  v8 = *(v1 + 504);
  if (v8)
  {
    *(v1 + 512) = v8;
    operator delete(v8);
  }

  sub_3EDA0C((v1 + 312));
  sub_3EDA0C(v2);
  sub_21DB4B4(v1 + 72);
  v9 = *v4;
  if (*v4)
  {
    *(v1 + 56) = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v10;
    operator delete(v10);
    v11 = *v1;
    if (!*v1)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v11 = *v1;
    if (!*v1)
    {
      goto LABEL_10;
    }
  }

  *(v1 + 8) = v11;
  operator delete(v11);
  goto LABEL_10;
}

void sub_790B64()
{
  if (!*(v0 + 504))
  {
    JUMPOUT(0x790B08);
  }

  JUMPOUT(0x790B00);
}

void sub_790B74()
{
  if (!*v0)
  {
    JUMPOUT(0x790B30);
  }

  JUMPOUT(0x790B28);
}

void sub_790B8C()
{
  if (!*v0)
  {
    JUMPOUT(0x790B48);
  }

  JUMPOUT(0x790B40);
}

void sub_790B9C(uint64_t a1, void *a2)
{
  v4 = sub_588E0(*(a1 + 3904));
  v5 = sub_5FC5C();
  if (v4 != v5)
  {
    v6 = v5;
    do
    {
      if (*(v4 + 48) != 5)
      {
        sub_5AF20();
      }

      v7 = *(v4 + 40);
      HIBYTE(v17) = 5;
      strcpy(__p, "scope");
      v8 = sub_5F8FC(v7, __p);
      v9 = *(v8 + 23);
      if (v9 < 0)
      {
        if (v8[1] == 5)
        {
          v8 = *v8;
LABEL_11:
          v11 = *v8 == 1953853298 && *(v8 + 4) == 101;
          if ((SHIBYTE(v17) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          operator delete(__p[0]);
          goto LABEL_21;
        }
      }

      else if (v9 == 5)
      {
        goto LABEL_11;
      }

      v11 = 0;
      if (SHIBYTE(v17) < 0)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v11)
      {
        sub_790DC4(a1, a2, v7, v18);
        sub_790FB8(a1, v4 + 16, v18, __p);
        if (!sub_5FC6C(__p))
        {
          sub_618594((a2 + 1558), __p, v4 + 16);
        }

        v12 = v17;
        if (v17)
        {
          do
          {
            v14 = *v12;
            v15 = *(v12 + 12);
            if (v15 != -1)
            {
              (off_266C728[v15])(&v20, v12 + 5);
            }

            *(v12 + 12) = -1;
            if (*(v12 + 39) < 0)
            {
              operator delete(v12[2]);
            }

            operator delete(v12);
            v12 = v14;
          }

          while (v14);
        }

        v13 = __p[0];
        __p[0] = 0;
        if (v13)
        {
          operator delete(v13);
        }

        if (v19 < 0)
        {
          operator delete(v18[0]);
        }
      }

      v4 = *v4;
    }

    while (v4 != v6);
  }
}

void sub_790D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_790DC4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v19[0] = 0;
  v19[1] = 0;
  HIBYTE(__p[2]) = 21;
  v20 = 0;
  strcpy(__p, "feature_polygon_usage");
  v8 = sub_5FC3C(a3, __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_18;
  }

  v13 = v8;
  operator delete(__p[0]);
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  v9 = sub_4D1DC0(a2);
  HIBYTE(v17[2]) = 21;
  strcpy(v17, "feature_polygon_usage");
  v10 = sub_5F8FC(a3, v17);
  sub_7911F4(a1, a2, 0, v9 - 1, v10, __p);
  *v19 = *__p;
  v20 = __p[2];
  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  if (SHIBYTE(v17[2]) < 0)
  {
    operator delete(v17[0]);
    v11 = SHIBYTE(v20);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
LABEL_5:
      if (v11 == 5)
      {
        v12 = v19;
        goto LABEL_12;
      }

LABEL_16:
      *a4 = *v19;
      *(a4 + 16) = v20;
      return;
    }
  }

  else
  {
    v11 = SHIBYTE(v20);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  if (v19[1] != dword_4 + 1)
  {
    goto LABEL_16;
  }

  v12 = v19[0];
LABEL_12:
  v14 = *v12;
  v15 = *(v12 + 4);
  if (v14 != 1819438967 || v15 != 100)
  {
    goto LABEL_16;
  }

LABEL_18:
  sub_791478(a1, a2, a4);
  if (v11 < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_790F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p)
{
  if (v25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_790FB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_5F328(a4);
  v8 = sub_5F5AC(*(a1 + 3912), a2);
  if (sub_5FC3C(v8, a3))
  {
    if (*(a3 + 23) < 0)
    {
      sub_325C(v17, *a3, *(a3 + 8));
    }

    else
    {
      *v17 = *a3;
      v18 = *(a3 + 16);
    }
  }

  else
  {
    v16 = 5;
    strcpy(__p, "world");
    v9 = sub_5FC3C(v8, __p);
    if (v9)
    {
      v10 = 5;
    }

    else
    {
      v10 = 0;
    }

    HIBYTE(v18) = v10;
    if (v9)
    {
      strcpy(v17, "world");
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v17[0]) = 0;
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    operator delete(__p[0]);
  }

LABEL_13:
  v11 = HIBYTE(v18);
  v12 = HIBYTE(v18);
  if (v18 < 0)
  {
    v11 = v17[1];
  }

  if (v11)
  {
    v16 = 15;
    strcpy(__p, "region_template");
    v13 = sub_5FAAC(v8, __p, a4);
    if (v13 != a4)
    {
      *(a4 + 32) = *(v13 + 8);
      sub_618D4(a4, v13[2], 0);
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = sub_5F5AC(v8, v17);
    sub_5FC7C(a4, v14);
    v12 = HIBYTE(v18);
  }

  if (v12 < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_79117C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v21);
  _Unwind_Resume(a1);
}

void sub_7911F4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_4D1F50(a2, a3);
  sub_2B7A20(*(a1 + 8), (((*(v11 + 36) & 0x20000000) << 19) | (*(v11 + 36) << 32) | *(v11 + 32)) ^ 0x1000000000000, v30);
  v12 = sub_4D1F50(a2, a4);
  sub_2B7A20(*(a1 + 8), (((*(v12 + 36) & 0x20000000) << 19) | (*(v12 + 36) << 32) | *(v12 + 32)) ^ 0x1000000000000, v27);
  v33 = sub_31A76C(v30);
  *v34 = v13;
  *&v34[4] = sub_31AA0C(v27);
  v35 = v14;
  *v24 = 0u;
  *__p = 0u;
  v26 = 1065353216;
  sub_5280AC(v24, &v33);
  sub_5280AC(v24, &v34[4]);
  v15 = sub_3B6888(*a1);
  sub_617F8C(v15, v24, a5, &v33);
  v16 = v33;
  if (*(v33 + 23) < 0)
  {
    sub_325C(a6, *v33, *(v33 + 1));
    v16 = v33;
    if (!v33)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v17 = *v33;
    *(a6 + 16) = *(v33 + 2);
    *a6 = v17;
  }

  v18 = *v34;
  v19 = v16;
  if (*v34 != v16)
  {
    do
    {
      v20 = *(v18 - 1);
      v18 -= 3;
      if (v20 < 0)
      {
        operator delete(*v18);
      }
    }

    while (v18 != v16);
    v19 = v33;
  }

  *v34 = v16;
  operator delete(v19);
LABEL_11:
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

  v23 = v24[0];
  v24[0] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }
}

void sub_791400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  sub_1A104((v22 - 80));
  sub_11BD8(&a9);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (!a21)
  {
    _Unwind_Resume(a1);
  }

  a22 = a21;
  operator delete(a21);
  _Unwind_Resume(a1);
}

void sub_791478(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4D1F50(a2, 0);
  sub_4E51E0(*(a1 + 8), *(v6 + 32) | ((*(v6 + 36) & 0x1FFFFFFF) << 32), v19);
  v7 = sub_4D1DC0(a2);
  v8 = sub_4D1F50(a2, v7 - 1);
  sub_4E51E0(*(a1 + 8), *(v8 + 32) | ((*(v8 + 36) & 0x1FFFFFFF) << 32), __p);
  v9 = SHIBYTE(v20);
  v10 = v19[1];
  if (v20 >= 0)
  {
    v11 = HIBYTE(v20);
  }

  else
  {
    v11 = v19[1];
  }

  v12 = v18;
  v13 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v11 == v12 && ((v14 = v19[0], v20 >= 0) ? (v15 = v19) : (v15 = v19[0]), (v18 & 0x80u) == 0 ? (v16 = __p) : (v16 = __p[0]), !memcmp(v15, v16, v11)))
  {
    if (v9 < 0)
    {
      sub_325C(a3, v14, v10);
      v13 = v18;
    }

    else
    {
      *a3 = *v19;
      *(a3 + 16) = v20;
    }
  }

  else
  {
    *(a3 + 23) = 5;
    strcpy(a3, "world");
  }

  if ((v13 & 0x80) == 0)
  {
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v19[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_19;
  }
}

void sub_7915F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_79163C(uint64_t a1, void *a2)
{
  if (*(a1 + 7488) != *(a1 + 7496))
  {
    return;
  }

  v4 = sub_3AF6B4(a2);
  v5 = sub_3B2A90(a2);
  v6 = sub_4D1DC0(a1);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  v8 = sub_4D1F50(a1, 0);
  sub_4E51E0(v4, *(v8 + 32) | ((*(v8 + 36) & 0x1FFFFFFF) << 32), __p);
  if (!sub_4B9418(v5, __p))
  {
LABEL_7:
    v9 = *(a1 + 7496);
    if (v9 < *(a1 + 7504))
    {
      goto LABEL_8;
    }

LABEL_11:
    *(a1 + 7496) = sub_5C416C(a1 + 7488, __p);
    if (SHIBYTE(v33) < 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (v7 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    LOBYTE(__p[0]) = 0;
    HIBYTE(v33) = 0;
    goto LABEL_7;
  }

  *__p[0] = 0;
  __p[1] = 0;
  v9 = *(a1 + 7496);
  if (v9 >= *(a1 + 7504))
  {
    goto LABEL_11;
  }

LABEL_8:
  if (SHIBYTE(v33) < 0)
  {
    sub_325C(v9, __p[0], __p[1]);
  }

  else
  {
    v10 = *__p;
    *(v9 + 16) = v33;
    *v9 = v10;
  }

  *(a1 + 7496) = v9 + 24;
  *(a1 + 7496) = v9 + 24;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  operator delete(__p[0]);
  if (v7 != 1)
  {
LABEL_27:
    v16 = 1;
    while (1)
    {
      v18 = sub_4D1F50(a1, v16);
      v19 = (*v18 - **v18);
      if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
      {
        v21 = *(*v18 + v20);
      }

      else
      {
        v21 = 0;
      }

      v22 = v16 - 1;
      v23 = sub_4D1F50(a1, v22);
      v24 = (*v23 - **v23);
      if (*v24 >= 0xDu && (v25 = v24[6]) != 0)
      {
        if (*(*v23 + v25) == v21)
        {
          goto LABEL_45;
        }
      }

      else if (!v21)
      {
LABEL_45:
        v28 = *(a1 + 7496);
        v29 = (v28 - 24);
        if (v28 >= *(a1 + 7504))
        {
          v17 = sub_5C416C(a1 + 7488, v29);
        }

        else
        {
          if (*(v28 - 1) < 0)
          {
            sub_325C(*(a1 + 7496), *(v28 - 24), *(v28 - 16));
          }

          else
          {
            *v28 = *v29;
            *(v28 + 16) = *(v28 - 8);
          }

          v17 = v28 + 24;
          *(a1 + 7496) = v28 + 24;
        }

        *(a1 + 7496) = v17;
        goto LABEL_30;
      }

      sub_4E51E0(v4, *(v18 + 8) | ((*(v18 + 9) & 0x1FFFFFFF) << 32), __p);
      if (!sub_4B9418(v5, __p))
      {
        goto LABEL_41;
      }

      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        break;
      }

      *__p[0] = 0;
      __p[1] = 0;
      v26 = *(a1 + 7496);
      if (v26 < *(a1 + 7504))
      {
LABEL_42:
        if (SHIBYTE(v33) < 0)
        {
          sub_325C(v26, __p[0], __p[1]);
        }

        else
        {
          v27 = *__p;
          *(v26 + 16) = v33;
          *v26 = v27;
        }

        *(a1 + 7496) = v26 + 24;
        *(a1 + 7496) = v26 + 24;
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_55:
        operator delete(__p[0]);
        goto LABEL_30;
      }

LABEL_51:
      *(a1 + 7496) = sub_5C416C(a1 + 7488, __p);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_55;
      }

LABEL_30:
      v16 = v22 + 2;
      if (v16 == v7)
      {
        goto LABEL_17;
      }
    }

    LOBYTE(__p[0]) = 0;
    HIBYTE(v33) = 0;
LABEL_41:
    v26 = *(a1 + 7496);
    if (v26 < *(a1 + 7504))
    {
      goto LABEL_42;
    }

    goto LABEL_51;
  }

LABEL_17:
  v11 = *(a1 + 7488);
  v12 = *(a1 + 7496);
  if (v11 == v12)
  {
    return;
  }

  while (1)
  {
    v13 = *(v11 + 23);
    if ((v13 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (v11[1])
    {
      goto LABEL_23;
    }

LABEL_20:
    v11 += 3;
    if (v11 == v12)
    {
      return;
    }
  }

  if (!*(v11 + 23))
  {
    goto LABEL_20;
  }

LABEL_23:
  v14 = (a1 + 7464);
  if (v11 != (a1 + 7464))
  {
    if (*(a1 + 7487) < 0)
    {
      if (v13 >= 0)
      {
        v30 = v11;
      }

      else
      {
        v30 = *v11;
      }

      if (v13 >= 0)
      {
        v31 = *(v11 + 23);
      }

      else
      {
        v31 = v11[1];
      }

      sub_13B38(v14, v30, v31);
    }

    else if ((v13 & 0x80000000) != 0)
    {
      sub_13A68(v14, *v11, v11[1]);
    }

    else
    {
      v15 = *v11;
      *(a1 + 7480) = v11[2];
      *v14 = v15;
    }
  }
}

void sub_7919DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 7496) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_791A1C(void *a1, void *a2)
{
  if (!sub_4D1DC0(a1) || a1[156] != a1[157])
  {
    return;
  }

  v4 = a1[936];
  if (*(v4 + 23) < 0)
  {
    sub_325C(&v66, *v4, *(v4 + 1));
    v6 = a1[937];
    if ((*(v6 - 1) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *v4;
    v67 = *(v4 + 2);
    v66 = v5;
    v6 = a1[937];
    if ((*(v6 - 1) & 0x80000000) == 0)
    {
LABEL_5:
      v7 = *(v6 - 24);
      v65 = *(v6 - 8);
      v64 = v7;
      goto LABEL_8;
    }
  }

  sub_325C(&v64, *(v6 - 24), *(v6 - 16));
LABEL_8:
  v8 = SHIBYTE(v67);
  v9 = *(&v66 + 1);
  if (v67 >= 0)
  {
    v10 = HIBYTE(v67);
  }

  else
  {
    v10 = *(&v66 + 1);
  }

  v11 = HIBYTE(v65);
  if (v65 < 0)
  {
    v11 = *(&v64 + 1);
  }

  if (v10 == v11 && ((v12 = v66, v67 >= 0) ? (v13 = &v66) : (v13 = v66), v65 >= 0 ? (v14 = &v64) : (v14 = v64), !memcmp(v13, v14, v10)))
  {
    if (v8 < 0)
    {
      sub_325C(&v62, v12, v9);
    }

    else
    {
      v62 = v66;
      v63 = v67;
    }
  }

  else
  {
    HIBYTE(v63) = 0;
    LOBYTE(v62) = 0;
  }

  __p = 0uLL;
  v47 = 0;
  sub_885CC0(v59, a2, 0, &__p);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  v15 = sub_3AF6B4(a2);
  v16 = sub_4D1DC0(a1);
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v18 = sub_4D1F50(a1, v17);
      v19 = sub_53A634(a1 + 936, v17);
      v20 = *(v18 + 36);
      v56 = *(v18 + 32);
      v57 = v20;
      v58 = (v20 & 0x20000000) == 0;
      if (!v17)
      {
        sub_886C0C(v59, &v56, v19, &__p);
        v44 = 0;
        v26 = a1[157];
        if (v26 >= a1[158])
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      v21 = sub_4D1F50(a1, (v17 - 1));
      if (sub_31EE90(v15, (((*(v21 + 36) & 0x20000000) << 19) | (*(v21 + 36) << 32) | *(v21 + 32)) ^ 0x1000000000000, (((*(v18 + 36) & 0x20000000) << 19) | (*(v18 + 36) << 32) | *(v18 + 32)) ^ 0x1000000000000))
      {
        break;
      }

LABEL_68:
      sub_886C0C(v59, &v56, v19, &__p);
      if (sub_734D94(&__p, (a1[157] - 160)))
      {
        goto LABEL_73;
      }

      v44 = v17;
      v26 = a1[157];
      if (v26 >= a1[158])
      {
LABEL_71:
        v43 = sub_610738(a1 + 156, &__p, &v44);
        goto LABEL_72;
      }

LABEL_70:
      sub_5139E8(a1[157], &__p);
      *(v26 + 152) = v44;
      v43 = v26 + 160;
      a1[157] = v26 + 160;
LABEL_72:
      a1[157] = v43;
LABEL_73:
      if (v55 < 0)
      {
        operator delete(v54);
        if ((v53 & 0x80000000) == 0)
        {
LABEL_75:
          if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_80;
        }
      }

      else if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

      operator delete(v52);
      if ((v51 & 0x80000000) == 0)
      {
LABEL_76:
        if (v49 < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_81;
      }

LABEL_80:
      operator delete(v50);
      if (v49 < 0)
      {
LABEL_26:
        operator delete(v48);
        if (SHIBYTE(v47) < 0)
        {
          goto LABEL_82;
        }

        goto LABEL_27;
      }

LABEL_81:
      if (SHIBYTE(v47) < 0)
      {
LABEL_82:
        operator delete(__p);
      }

LABEL_27:
      if (++v17 == v16)
      {
        goto LABEL_83;
      }
    }

    v22 = sub_2B51D8(v15, *(v21 + 32) | ((*(v21 + 36) & 0x1FFFFFFF) << 32));
    v23 = (v22 - *v22);
    if (*v23 >= 0x25u && (v24 = v23[18]) != 0)
    {
      v25 = (v22 + v24 + *(v22 + v24));
    }

    else
    {
      v25 = 0;
    }

    sub_31077C(v25, &__p);
    v27 = sub_2B51D8(v15, *(v18 + 32) | ((*(v18 + 36) & 0x1FFFFFFF) << 32));
    v28 = (v27 - *v27);
    if (*v28 >= 0x25u && (v29 = v28[18]) != 0)
    {
      v30 = (v27 + v29 + *(v27 + v29));
    }

    else
    {
      v30 = 0;
    }

    sub_31077C(v30, &v44);
    v32 = *(&__p + 1);
    v31 = __p;
    v33 = v44;
    if (*(&__p + 1) - __p == v45 - v44)
    {
      if (__p == *(&__p + 1))
      {
        v34 = 1;
        if (!v44)
        {
          goto LABEL_59;
        }
      }

      else
      {
        do
        {
          v34 = sub_3106C0(v31, v33);
          v31 += 40;
          v33 += 5;
        }

        while (v31 != v32 && v34);
        v33 = v44;
        if (!v44)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      v34 = 0;
      if (!v44)
      {
        goto LABEL_59;
      }
    }

    v36 = v34;
    v37 = v45;
    v38 = v33;
    if (v45 != v33)
    {
      do
      {
        if (*(v37 - 9) < 0)
        {
          operator delete(*(v37 - 4));
        }

        v37 -= 5;
      }

      while (v37 != v33);
      v38 = v44;
    }

    v45 = v33;
    operator delete(v38);
    v34 = v36;
LABEL_59:
    v39 = __p;
    if (__p)
    {
      v40 = v34;
      v41 = *(&__p + 1);
      v42 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          if (*(v41 - 9) < 0)
          {
            operator delete(*(v41 - 32));
          }

          v41 -= 40;
        }

        while (v41 != v39);
        v42 = __p;
      }

      *(&__p + 1) = v39;
      operator delete(v42);
      v34 = v40;
    }

    if (v34)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_83:
  if ((v61 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_89:
    operator delete(v62);
    if ((SHIBYTE(v65) & 0x80000000) == 0)
    {
LABEL_86:
      if ((SHIBYTE(v67) & 0x80000000) == 0)
      {
        return;
      }

LABEL_91:
      operator delete(v66);
      return;
    }

    goto LABEL_90;
  }

  operator delete(v60);
  if (SHIBYTE(v63) < 0)
  {
    goto LABEL_89;
  }

LABEL_85:
  if ((SHIBYTE(v65) & 0x80000000) == 0)
  {
    goto LABEL_86;
  }

LABEL_90:
  operator delete(v64);
  if (SHIBYTE(v67) < 0)
  {
    goto LABEL_91;
  }
}

void sub_791F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (*(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
    if (*(v41 - 89) < 0)
    {
LABEL_3:
      operator delete(*(v41 - 112));
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v41 - 89) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_79208C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 1120);
  if (v4)
  {
    if (v4 != 1)
    {
      sub_5AF20();
    }

    sub_52B7D8(v13, a2);
    if (a3)
    {
      if (v24[1])
      {
        v5 = v24;
LABEL_18:
        v7 = *v5;
        sub_3A9518(v13);
        return v7 & 1;
      }
    }

    else if (v25[1])
    {
      v5 = v25;
      goto LABEL_18;
    }

    sub_4F0F0C();
  }

  sub_52A464(v13, a2);
  v6 = 160;
  if (!a3)
  {
    v6 = 161;
  }

  v7 = v13[v6];
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v8 = v20;
  if (v20)
  {
    v9 = v21;
    v10 = v20;
    if (v21 != v20)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v20;
    }

    v21 = v8;
    operator delete(v10);
  }

  if ((v19 & 0x80000000) == 0)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
      return v7 & 1;
    }

    goto LABEL_28;
  }

  operator delete(v18);
  if (v17 < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if ((v15 & 0x80000000) == 0)
  {
    return v7 & 1;
  }

LABEL_28:
  operator delete(v14);
  return v7 & 1;
}

void sub_7921F4()
{
  byte_27A7717 = 3;
  LODWORD(qword_27A7700) = 5136193;
  byte_27A772F = 3;
  LODWORD(qword_27A7718) = 5136194;
  byte_27A7747 = 3;
  LODWORD(qword_27A7730) = 5136195;
  byte_27A775F = 15;
  strcpy(&qword_27A7748, "vehicle_mass_kg");
  byte_27A7777 = 21;
  strcpy(&xmmword_27A7760, "vehicle_cargo_mass_kg");
  byte_27A778F = 19;
  strcpy(&qword_27A7778, "vehicle_aux_power_w");
  byte_27A77A7 = 15;
  strcpy(&qword_27A7790, "dcdc_efficiency");
  strcpy(&qword_27A77A8, "drive_train_efficiency");
  HIBYTE(word_27A77BE) = 22;
  operator new();
}

void sub_795450(_Unwind_Exception *a1)
{
  if (qword_27A76C0)
  {
    qword_27A76C8 = qword_27A76C0;
    operator delete(qword_27A76C0);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_79572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = sub_7A9FE0(a1, a3, a6 + 1);
  memcpy(v11 + 4, a4, 0x92CuLL);
  if (*(a4 + 2375) < 0)
  {
    sub_325C((a1 + 2384), *(a4 + 2352), *(a4 + 2360));
  }

  else
  {
    v12 = *(a4 + 2352);
    *(a1 + 2400) = *(a4 + 2368);
    *(a1 + 2384) = v12;
  }

  v13 = *(a4 + 2376);
  v14 = *(a4 + 2392);
  v15 = *(a4 + 2424);
  *(a1 + 2440) = *(a4 + 2408);
  *(a1 + 2456) = v15;
  *(a1 + 2408) = v13;
  *(a1 + 2424) = v14;
  v16 = *(a4 + 2440);
  v17 = *(a4 + 2456);
  v18 = *(a4 + 2488);
  *(a1 + 2504) = *(a4 + 2472);
  *(a1 + 2520) = v18;
  *(a1 + 2472) = v16;
  *(a1 + 2488) = v17;
  v19 = *(a4 + 2504);
  v20 = *(a4 + 2520);
  v21 = *(a4 + 2552);
  *(a1 + 2568) = *(a4 + 2536);
  *(a1 + 2584) = v21;
  *(a1 + 2536) = v19;
  *(a1 + 2552) = v20;
  *(a1 + 2600) = sub_4D1DB8(a5);
  *(a1 + 2608) = sub_4D26B4(a5, 0);
  *(a1 + 2616) = 0x7FFFFFFF;
  *(a1 + 2620) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2632) = 0;
  *(a1 + 2640) = 0x7FFFFFFF;
  *(a1 + 2644) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2656) = 0;
  if (*(a1 + 2409) == 1)
  {
    v22 = 0;
    if (*(a5 + 10248) != 0x7FFFFFFFFFFFFFFFLL && *(a5 + 10256) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = *(a5 + 10288) != *(a5 + 10296);
    }
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 2664) = v22;
  v23 = sub_69B1A4(a5);
  if (*(v23 + 23) < 0)
  {
    sub_325C((a1 + 2672), *v23, *(v23 + 8));
  }

  else
  {
    v24 = *v23;
    *(a1 + 2688) = *(v23 + 16);
    *(a1 + 2672) = v24;
  }

  v25 = sub_69B1B0(a5);
  if (*(v25 + 23) < 0)
  {
    sub_325C((a1 + 2696), *v25, *(v25 + 8));
  }

  else
  {
    v26 = *v25;
    *(a1 + 2712) = *(v25 + 16);
    *(a1 + 2696) = v26;
  }

  v27 = sub_69B1BC(a5);
  if (*(v27 + 23) < 0)
  {
    sub_325C((a1 + 2720), *v27, *(v27 + 8));
  }

  else
  {
    v28 = *v27;
    *(a1 + 2736) = *(v27 + 16);
    *(a1 + 2720) = v28;
  }

  v29 = sub_69B1C8(a5);
  if (*(v29 + 23) < 0)
  {
    sub_325C((a1 + 2744), *v29, *(v29 + 8));
  }

  else
  {
    v30 = *v29;
    *(a1 + 2760) = *(v29 + 16);
    *(a1 + 2744) = v30;
  }

  v31 = sub_69B1D4(a5);
  if (*(v31 + 23) < 0)
  {
    sub_325C((a1 + 2768), *v31, *(v31 + 8));
  }

  else
  {
    v32 = *v31;
    *(a1 + 2784) = *(v31 + 16);
    *(a1 + 2768) = v32;
  }

  *(a1 + 2792) = 0;
  *(a1 + 2793) = sub_69B004(a5);
  *(a1 + 2794) = sub_69B010(a5);
  *(a1 + 2795) = sub_69B01C(a5);
  *(a1 + 2796) = sub_69B0E0(a5);
  v33 = sub_4D2130(a5);
  sub_3EDBB0(a1 + 2800, v33);
  v34 = sub_73F54(a5);
  sub_3EDBB0(a1 + 2936, v34);
  v35 = *(a1 + 2936) != 0x7FFFFFFF && sub_4566B4((a1 + 2944));
  *(a1 + 3072) = v35;
  if (*(a5 + 12536) != 1 || (v36 = *(a3 + 1464), v37 = *(a3 + 1472), v36 == v37))
  {
    v39 = 0;
  }

  else
  {
    v38 = v36 + 4;
    do
    {
      v39 = *(v38 - 4) == 1;
      v40 = *(v38 - 4) == 1 || v38 == v37;
      v38 += 4;
    }

    while (!v40);
  }

  *(a1 + 3073) = v39;
  strcpy(v42, "GuidanceFeatureRegions");
  v42[23] = 22;
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, v42, __p);
  sub_795D4C();
}

void sub_795BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_528AB4(v22 + 3080);
  sub_49A8F8((v22 + 2936));
  sub_49A8F8((v22 + 2800));
  if (*(v22 + 2791) < 0)
  {
    operator delete(*v24);
    if ((*(v22 + 2767) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v22 + 2767) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v22 + 2743) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  operator delete(*v23);
  if (*(v22 + 2743) < 0)
  {
LABEL_4:
    operator delete(*a10);
    if ((*(v22 + 2719) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((*(v22 + 2719) & 0x80000000) == 0)
  {
LABEL_5:
    if (*(v22 + 2695) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*a11);
  if (*(v22 + 2695) < 0)
  {
LABEL_6:
    operator delete(*a12);
    if ((*(v22 + 2407) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((*(v22 + 2407) & 0x80000000) == 0)
  {
LABEL_7:
    sub_795FDC(v22);
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(*a13);
  sub_795FDC(v22);
  _Unwind_Resume(a1);
}

void sub_795F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((*(v22 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v22 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v22 - 56));
  _Unwind_Resume(exception_object);
}

uint64_t sub_795FDC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_796058@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 2664) == 1)
  {
    if (*(a1 + 3072) == 1)
    {
      sub_796374(a1, v14);
    }

    else
    {
      sub_796558(a1, v14);
    }

    v4 = a2[1];
    if (v4 >= a2[2])
    {
      v5 = sub_7A585C(a2, v14);
    }

    else
    {
      sub_5F4D20(a2[1], v14);
      v5 = v4 + 1120;
    }

    a2[1] = v5;
    sub_5938B0(v14);
  }

  if (*(a1 + 3072) == 1)
  {
    sub_796738(a1, v14);
  }

  else
  {
    sub_79691C(a1, v14);
  }

  v6 = a2[1];
  if (v6 >= a2[2])
  {
    v7 = sub_7A585C(a2, v14);
  }

  else
  {
    sub_5F4D20(a2[1], v14);
    v7 = v6 + 1120;
  }

  a2[1] = v7;
  if (*(a1 + 3072) == 1)
  {
    v8 = *(a1 + 2976);
    if (v8 != *(a1 + 2984))
    {
      if (*v8)
      {
        sub_796AFC(a1, 0, v13);
      }
    }

    sub_796D44(a1, v13);
  }

  if (*(a1 + 2536) == 1)
  {
    sub_797008(a1, v13);
  }

  else
  {
    sub_797130(a1, v13);
  }

  v9 = a2[1];
  if (v9 >= a2[2])
  {
    v11 = sub_7A5C30(a2, v13);
  }

  else
  {
    sub_7A5A3C(v9, v13);
    v11 = v10 + 1120;
  }

  a2[1] = v11;
  sub_5938B0(v13);
  return sub_5938B0(v14);
}

void sub_7962C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5938B0(&a9);
  sub_5938B0(&STACK[0x460]);
  sub_5EC628(v9);
  _Unwind_Resume(a1);
}

void sub_796344(_Unwind_Exception *a1)
{
  sub_5938B0(&STACK[0x460]);
  sub_5EC628(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_796374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA298(&v19, a1, a1 + 2696);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA018(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 20);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_796500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_796530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_796558@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA028(&v19);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA018(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 19);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_7966E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_796710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_796738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA29C(a1 + 2696, &v19);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA4A0(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 21);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_7968C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_7968F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_79691C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA02C(a1, &v19);
  sub_809E48(a2, &v19, 0);
  v4 = v22;
  if (v22)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA4A0(&v19);
  sub_80A374(a2, &v19);
  v11 = v22;
  if (v22)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 24);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  return sub_809E40(a2, *(a1 + 450));
}

void sub_796AA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_796AD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_796AFC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 2976);
  sub_7AA8C8(*v6, *(v6 + 1) != 0x7FFFFFFF, &v16);
  sub_809E48(a3, &v16, 0);
  v7 = *v21;
  if (*v21)
  {
    do
    {
      v8 = *v7;
      sub_55F7FC((v7 + 2));
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = __p;
  __p = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = v16;
  if (v16)
  {
    v11 = v17;
    v12 = v16;
    if (v17 != v16)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v16;
    }

    v17 = v10;
    operator delete(v12);
  }

  sub_6819B8(a3, (a1 + 2936));
  if (a2)
  {
    v14 = 23;
  }

  else
  {
    v14 = 22;
  }

  sub_68179C(a3, v14);
  sub_6817B4(a3, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a3, *(a1 + 451));
  v15 = sub_67A848((a1 + 32), *v6);
  *(&__p + 3) = 0;
  LODWORD(__p) = 0;
  v17 = 0;
  v18 = 0;
  v16 = (v15 | 0xFFFFFF00000000);
  HIBYTE(__p) = 0;
  v20 = 1;
  *v21 = -1;
  *&v21[3] = -1;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v26 = 0;
  memset(&v21[7], 0, 24);
  v22 = 0;
  sub_682248();
}

void sub_796CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_796D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_796D44(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AA6E0(&v19);
  sub_809E48(a2, &v19, 0);
  v4 = *v24;
  if (*v24)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v19;
  if (v19)
  {
    v8 = v20;
    v9 = v19;
    if (v20 != v19)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v19;
    }

    v20 = v7;
    operator delete(v9);
  }

  sub_7AA4B0(*(a1 + 2503), &v19);
  sub_80A374(a2, &v19);
  v11 = *v24;
  if (*v24)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v20;
    v16 = v19;
    if (v20 != v19)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v19;
    }

    v20 = v14;
    operator delete(v16);
  }

  sub_68179C(a2, 25);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a2, *(a1 + 450));
  sub_6819B8(a2, (a1 + 2936));
  v18 = *(a1 + 2012);
  LODWORD(__p) = 0;
  *(&__p + 3) = 0;
  v20 = 0;
  v21 = 0;
  v19 = (v18 | 0xFFFFFF00000000);
  HIBYTE(__p) = 0;
  v23 = 1;
  *v24 = -1;
  *&v24[3] = -1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  memset(&v24[7], 0, 24);
  v25 = 0;
  sub_682248();
}

void sub_796F94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_796FB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_5938B0(v2);
  _Unwind_Resume(a1);
}

void sub_796FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_797008@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AAB3C(&v12);
  sub_809E48(a2, &v12, 0);
  v4 = v15;
  if (v15)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v12;
  if (v12)
  {
    v8 = v13;
    v9 = v12;
    if (v13 != v12)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v12;
    }

    v13 = v7;
    operator delete(v9);
  }

  sub_68179C(a2, 16);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a2, *(a1 + 450));
  return sub_809E38(a2, 97);
}

void sub_797108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_797130@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AAB2C(&v12);
  sub_809E48(a2, &v12, 0);
  v4 = v15;
  if (v15)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p;
  __p = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = v12;
  if (v12)
  {
    v8 = v13;
    v9 = v12;
    if (v13 != v12)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = v12;
    }

    v13 = v7;
    operator delete(v9);
  }

  sub_68179C(a2, 16);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_809E40(a2, *(a1 + 450));
  return sub_809E38(a2, 17);
}

void sub_797230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void *sub_797258@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(result + 3072) == 1)
  {
    sub_7972EC(result, v3);
    a2[1] = sub_7A5D94(a2, v3);
    return sub_5936E4(v3);
  }

  return result;
}

void sub_7972BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5936E4(va);
  sub_5ED1D0(v2);
  _Unwind_Resume(a1);
}

double sub_7972EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_608080(a2);
  sub_E6F038(a1 + 4320, &v71);
  v4 = v71;
  if (v71 != v72)
  {
    while (*v4 != 10)
    {
      v4 += 2;
      if (v4 == v72)
      {
        goto LABEL_4;
      }
    }

LABEL_20:
    sub_7AA6E0(&v67);
    v61 = 0;
    v62 = 0;
    sub_680484(&v71, &v67, 1, &v61);
    sub_681A64(a2, &v71);
    v15 = v75;
    if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = v74;
    if (v74)
    {
      do
      {
        v17 = *v16;
        sub_55F7FC((v16 + 2));
        operator delete(v16);
        v16 = v17;
      }

      while (v17);
    }

    v18 = __p;
    __p = 0;
    if (v18)
    {
      operator delete(v18);
    }

    v19 = v71;
    if (v71)
    {
      v20 = v72;
      v21 = v71;
      if (v72 != v71)
      {
        do
        {
          v22 = *(v20 - 1);
          v20 -= 3;
          if (v22 < 0)
          {
            operator delete(*v20);
          }
        }

        while (v20 != v19);
        v21 = v71;
      }

      v72 = v19;
      operator delete(v21);
    }

    v23 = v62;
    if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v24 = v70;
    if (v70)
    {
      do
      {
        v25 = *v24;
        sub_55F7FC((v24 + 2));
        operator delete(v24);
        v24 = v25;
      }

      while (v25);
    }

    v26 = v69;
    v69 = 0;
    if (v26)
    {
      operator delete(v26);
    }

    v27 = v67;
    if (v67)
    {
      v28 = v68;
      v29 = v67;
      if (v68 == v67)
      {
        goto LABEL_94;
      }

      do
      {
        v30 = *(v28 - 1);
        v28 -= 3;
        if (v30 < 0)
        {
          operator delete(*v28);
        }
      }

      while (v28 != v27);
LABEL_93:
      v29 = v67;
LABEL_94:
      v68 = v27;
      operator delete(v29);
      goto LABEL_95;
    }

    goto LABEL_95;
  }

LABEL_4:
  v5 = *(a1 + 2976);
  v6 = *(a1 + 2984);
  if (v5 != v6)
  {
    while (*v5 == 10)
    {
      v5 += 16;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_20;
  }

LABEL_7:
  sub_7AA82C(&v67);
  v65 = 0;
  v66 = 0;
  sub_680484(&v71, &v67, 1, &v65);
  sub_681A64(a2, &v71);
  v7 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v74;
  if (v74)
  {
    do
    {
      v9 = *v8;
      sub_55F7FC((v8 + 2));
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = __p;
  __p = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = v71;
  if (v71)
  {
    v12 = v72;
    v13 = v71;
    if (v72 != v71)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v71;
    }

    v72 = v11;
    operator delete(v13);
  }

  v31 = v66;
  if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = v70;
  if (v70)
  {
    do
    {
      v33 = *v32;
      sub_55F7FC((v32 + 2));
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  v34 = v69;
  v69 = 0;
  if (v34)
  {
    operator delete(v34);
  }

  v35 = v67;
  if (v67)
  {
    v36 = v68;
    v37 = v67;
    if (v68 != v67)
    {
      do
      {
        v38 = *(v36 - 1);
        v36 -= 3;
        if (v38 < 0)
        {
          operator delete(*v36);
        }
      }

      while (v36 != v35);
      v37 = v67;
    }

    v68 = v35;
    operator delete(v37);
  }

  LODWORD(v71) = 19;
  sub_681B08(a2, &v71);
  sub_7AA6E0(&v67);
  v63 = 0;
  v64 = 0;
  sub_680484(&v71, &v67, 1, &v63);
  sub_681A64(a2, &v71);
  v39 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = v74;
  if (v74)
  {
    do
    {
      v41 = *v40;
      sub_55F7FC((v40 + 2));
      operator delete(v40);
      v40 = v41;
    }

    while (v41);
  }

  v42 = __p;
  __p = 0;
  if (v42)
  {
    operator delete(v42);
  }

  v43 = v71;
  if (v71)
  {
    v44 = v72;
    v45 = v71;
    if (v72 != v71)
    {
      do
      {
        v46 = *(v44 - 1);
        v44 -= 3;
        if (v46 < 0)
        {
          operator delete(*v44);
        }
      }

      while (v44 != v43);
      v45 = v71;
    }

    v72 = v43;
    operator delete(v45);
  }

  v47 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  v48 = v70;
  if (v70)
  {
    do
    {
      v49 = *v48;
      sub_55F7FC((v48 + 2));
      operator delete(v48);
      v48 = v49;
    }

    while (v49);
  }

  v50 = v69;
  v69 = 0;
  if (v50)
  {
    operator delete(v50);
  }

  v27 = v67;
  if (v67)
  {
    v51 = v68;
    v29 = v67;
    if (v68 == v67)
    {
      goto LABEL_94;
    }

    do
    {
      v52 = *(v51 - 1);
      v51 -= 3;
      if (v52 < 0)
      {
        operator delete(*v51);
      }
    }

    while (v51 != v27);
    goto LABEL_93;
  }

LABEL_95:
  sub_7AA4B0(*(a1 + 2503), &v71);
  sub_6821CC(a2, &v71);
  v53 = v74;
  if (v74)
  {
    do
    {
      v54 = *v53;
      sub_55F7FC((v53 + 2));
      operator delete(v53);
      v53 = v54;
    }

    while (v54);
  }

  v55 = __p;
  __p = 0;
  if (v55)
  {
    operator delete(v55);
  }

  v56 = v71;
  if (v71)
  {
    v57 = v72;
    v58 = v71;
    if (v72 != v71)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
      v58 = v71;
    }

    v72 = v56;
    operator delete(v58);
  }

  sub_68179C(a2, 89);
  *&result = sub_6819B8(a2, (a1 + 2936)).n128_u64[0];
  return result;
}

void sub_79796C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void **);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  sub_662AC8(va2);
  sub_1F1A8(va);
  sub_53A58C(va1);
  sub_5936E4(v3);
  _Unwind_Resume(a1);
}

void sub_797A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_53A58C(va);
  sub_5936E4(v16);
  _Unwind_Resume(a1);
}

void sub_797A84(__n128 *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[174].n128_u8[8] == 1)
  {
    if (sub_67AE58(&a1[192].n128_i64[1]) && a1[281].n128_u8[4] == 1)
    {
      sub_79ABEC(a1);
    }

    if (a1[174].n128_u8[9] == 1)
    {
      sub_79AE80(a1, &v66);
    }

    else
    {
      sub_79A9F0(a1, &v66);
    }
  }

  else
  {
    sub_798090(a1, &v66);
  }

  v4 = a2[1];
  if (v4 >= a2[2])
  {
    v5 = sub_7A5EF8(a2, &v66);
  }

  else
  {
    sub_7A6070(a2[1], &v66);
    v5 = v4 + 448;
  }

  a2[1] = v5;
  if (a1[166].n128_u8[8] == 1)
  {
    if (a1[192].n128_u8[0] == 1)
    {
      sub_798364(a1, &v53);
    }

    else
    {
      sub_7984C8(a1, &v53);
    }

    v6 = a2[1];
    if (v6 >= a2[2])
    {
      v7 = sub_7A5EF8(a2, &v53);
    }

    else
    {
      sub_7A6070(a2[1], &v53);
      v7 = v6 + 448;
    }

    a2[1] = v7;
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    v8 = v60;
    if (v60)
    {
      v9 = v61;
      v10 = v60;
      if (v61 != v60)
      {
        do
        {
          v9 = sub_662AC8(v9 - 13);
        }

        while (v9 != v8);
        v10 = v60;
      }

      v61 = v8;
      operator delete(v10);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    v11 = v54;
    if (v54)
    {
      v12 = v55;
      v13 = v54;
      if (v55 != v54)
      {
        do
        {
          v12 = sub_53A868(v12 - 160);
        }

        while (v12 != v11);
        v13 = v54;
      }

      v55 = v11;
      operator delete(v13);
    }
  }

  if (a1[192].n128_u8[0] == 1)
  {
    sub_798640(a1, &v53);
  }

  else
  {
    sub_7987A0(a1, &v53);
  }

  v14 = a2[1];
  if (v14 >= a2[2])
  {
    v15 = sub_7A5EF8(a2, &v53);
  }

  else
  {
    sub_7A6070(a2[1], &v53);
    v15 = v14 + 448;
  }

  a2[1] = v15;
  if (a1[192].n128_u8[0] == 1)
  {
    sub_798AB4(a1, &v40);
    sub_798900(a2, &v40);
    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    v16 = v47;
    if (v47)
    {
      v17 = v48;
      v18 = v47;
      if (v48 != v47)
      {
        do
        {
          v17 = sub_662AC8(v17 - 13);
        }

        while (v17 != v16);
        v18 = v47;
      }

      v48 = v16;
      operator delete(v18);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    v19 = v41;
    if (v41)
    {
      v20 = v42;
      v21 = v41;
      if (v42 != v41)
      {
        do
        {
          v20 = sub_53A868(v20 - 160);
        }

        while (v20 != v19);
        v21 = v41;
      }

      v42 = v19;
      operator delete(v21);
    }
  }

  if (a1[158].n128_u8[8] == 1)
  {
    sub_798C24(a1, &v40);
  }

  else
  {
    sub_798D84(a1, &v40);
  }

  sub_798900(a2, &v40);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  v22 = v47;
  if (v47)
  {
    v23 = v48;
    v24 = v47;
    if (v48 != v47)
    {
      do
      {
        v23 = sub_662AC8(v23 - 13);
      }

      while (v23 != v22);
      v24 = v47;
    }

    v48 = v22;
    operator delete(v24);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v25 = v41;
  if (v41)
  {
    v26 = v42;
    v27 = v41;
    if (v42 != v41)
    {
      do
      {
        v26 = sub_53A868(v26 - 160);
      }

      while (v26 != v25);
      v27 = v41;
    }

    v42 = v25;
    operator delete(v27);
  }

  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  v28 = v60;
  if (v60)
  {
    v29 = v61;
    v30 = v60;
    if (v61 != v60)
    {
      do
      {
        v29 = sub_662AC8(v29 - 13);
      }

      while (v29 != v28);
      v30 = v60;
    }

    v61 = v28;
    operator delete(v30);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v31 = v54;
  if (v54)
  {
    v32 = v55;
    v33 = v54;
    if (v55 != v54)
    {
      do
      {
        v32 = sub_53A868(v32 - 160);
      }

      while (v32 != v31);
      v33 = v54;
    }

    v55 = v31;
    operator delete(v33);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  v34 = v72;
  if (v72)
  {
    v35 = v73;
    v36 = v72;
    if (v73 != v72)
    {
      do
      {
        v35 = sub_662AC8(v35 - 13);
      }

      while (v35 != v34);
      v36 = v72;
    }

    v73 = v34;
    operator delete(v36);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  v37 = v66.n128_u64[1];
  if (v66.n128_u64[1])
  {
    v38 = v67;
    v39 = v66.n128_u64[1];
    if (v67 != v66.n128_u64[1])
    {
      do
      {
        v38 = sub_53A868(v38 - 160);
      }

      while (v38 != v37);
      v39 = v66.n128_u64[1];
    }

    v67 = v37;
    operator delete(v39);
  }
}

void sub_797FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_682DB0(&a65);
  sub_682DB0(&STACK[0x380]);
  sub_5EC5AC(v65);
  _Unwind_Resume(a1);
}

void sub_798090(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1 + 4096;
  if (sub_67AE28((a1 + 3080)))
  {
    v5 = *(v4 + 544);
    v6 = *(a1 + 4656) == 1;
    v7 = *(a1 + 2794);
    v8 = *(a1 + 2793);
    v9 = *(a1 + 2796);
    v10 = sub_67AE94(a1 + 3080);
    v11 = *(a1 + 3073);
    v12 = *(a1 + 3074) << 40;
    v13 = 0x1000000;
    if (!v10 || !v6)
    {
      v13 = 0;
    }

    v36 = v13 | (v7 << 16) | (v8 << 8) | v9;
    v37 = (v12 | (v11 << 32)) >> 32;
    sub_7AC3A8(a1, v5, &v36, &v38);
  }

  else
  {
    v14 = *(a1 + 4656) == 1;
    v15 = *(a1 + 2794);
    v16 = *(a1 + 2793);
    v17 = *(a1 + 2796);
    v18 = sub_67AE94(a1 + 3080);
    v19 = *(a1 + 3073);
    v20 = *(a1 + 3074) << 40;
    v21 = 0x1000000;
    if (!v18 || !v14)
    {
      v21 = 0;
    }

    v36 = v21 | (v15 << 16) | (v16 << 8) | v17;
    v37 = (v20 | (v19 << 32)) >> 32;
    sub_7AB214(a1, &v36, &v38);
  }

  sub_6825E0(a2, &v38, 0, 0, 1);
  if (sub_67AE58(a1 + 3080) && *(v4 + 404) == 1)
  {
    v22 = *(a1 + 4656);
    v23 = sub_67AE94(a1 + 3080);
    if (v22 == 1 && v23)
    {
      v25 = 63;
    }

    else
    {
      if (*(a1 + 2794))
      {
        v34 = 56;
      }

      else
      {
        v34 = 55;
      }

      if (*(a1 + 2794))
      {
        v35 = 57;
      }

      else
      {
        v35 = 58;
      }

      if (*(a1 + 2793) == 1)
      {
        v25 = v35;
      }

      else
      {
        v25 = v34;
      }
    }
  }

  else
  {
    v25 = 55;
  }

  sub_68179C(a2, v25);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  sub_682A50(a2, *(a1 + 3073));
  sub_681D10(a2, *(a1 + 4656));
  v26 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v41;
  if (v41)
  {
    do
    {
      v28 = *v27;
      sub_55F7FC((v27 + 2));
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v29 = __p;
  __p = 0;
  if (v29)
  {
    operator delete(v29);
  }

  v30 = v38;
  if (v38)
  {
    v31 = v39;
    v32 = v38;
    if (v39 != v38)
    {
      do
      {
        v33 = *(v31 - 1);
        v31 -= 3;
        if (v33 < 0)
        {
          operator delete(*v31);
        }
      }

      while (v31 != v30);
      v32 = v38;
    }

    v39 = v30;
    operator delete(v32);
  }
}

void sub_798334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_798348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_682DB0(v2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_798364@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AF7E0(a1 + 2696, &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 67);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_7984A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_7984C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AF1A8(a1, &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  if (sub_67AE28((a1 + 3080)))
  {
    sub_681D10(a2, *(a1 + 4656));
  }

  sub_68179C(a2, 66);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_798618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_798640@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFC70(&v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 68);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_798778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_7987A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFAD0(a1, &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 69);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_7988D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_798900(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_7A640C(a1, a2);
    a1[1] = result;
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 80);
    v4 = *(a2 + 96);
    v6 = *(a2 + 64);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 80) = v5;
    *(v3 + 96) = v4;
    *(v3 + 64) = v6;
    v7 = *(a2 + 48);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = v7;
    v8 = *(a2 + 120);
    v9 = *(a2 + 152);
    *(v3 + 136) = *(a2 + 136);
    *(v3 + 120) = v8;
    *(v3 + 152) = v9;
    *(v3 + 160) = 0;
    *(v3 + 168) = 0;
    *(v3 + 176) = 0;
    *(v3 + 160) = *(a2 + 160);
    *(v3 + 176) = *(a2 + 176);
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(v3 + 184) = 0;
    *(v3 + 192) = 0;
    *(v3 + 200) = 0;
    *(v3 + 184) = *(a2 + 184);
    *(v3 + 200) = *(a2 + 200);
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    v10 = *(a2 + 208);
    v11 = *(a2 + 240);
    *(v3 + 224) = *(a2 + 224);
    *(v3 + 240) = v11;
    *(v3 + 208) = v10;
    v12 = *(a2 + 272);
    v13 = *(a2 + 288);
    *(v3 + 256) = *(a2 + 256);
    *(v3 + 272) = v12;
    *(v3 + 288) = v13;
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
    *(v3 + 312) = 0;
    *(v3 + 296) = *(a2 + 296);
    *(v3 + 304) = *(a2 + 304);
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a2 + 296) = 0;
    *(v3 + 320) = *(a2 + 320);
    *(v3 + 336) = 0;
    *(v3 + 344) = 0;
    *(v3 + 328) = 0;
    *(v3 + 328) = *(a2 + 328);
    *(v3 + 336) = *(a2 + 336);
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    v14 = *(a2 + 352);
    *(v3 + 361) = *(a2 + 361);
    *(v3 + 352) = v14;
    v15 = *(a2 + 380);
    *(v3 + 396) = *(a2 + 396);
    *(v3 + 380) = v15;
    *(v3 + 408) = 0;
    *(v3 + 416) = 0;
    *(v3 + 400) = 0;
    *(v3 + 400) = *(a2 + 400);
    *(v3 + 416) = *(a2 + 416);
    *(a2 + 400) = 0;
    *(a2 + 408) = 0;
    *(a2 + 416) = 0;
    v16 = *(a2 + 424);
    *(v3 + 440) = *(a2 + 440);
    *(v3 + 424) = v16;
    result = v3 + 448;
    a1[1] = v3 + 448;
  }

  return result;
}

double sub_798AB4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFDA0(*(a1 + 2504), &v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 70);
  sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
  *&result = sub_6819B8(a2, (a1 + 2936)).n128_u64[0];
  return result;
}

void sub_798BFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_798C24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7B0104(&v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 71);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_798D5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void *sub_798D84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_7AFFD4(&v13);
  sub_6825E0(a2, &v13, 0, 0, 1);
  v4 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v16;
  if (v16)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = __p;
  __p = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }

  sub_68179C(a2, 71);
  return sub_6817B4(a2, *(a1 + 2600), 0, *(a1 + 2600));
}

void sub_798EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_798EE4(uint64_t a1@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  if (!a2)
  {
    if (*(a1 + 2795) != 1)
    {
      goto LABEL_3;
    }

LABEL_12:

    sub_799AAC();
  }

  if (*(a1 + 2796))
  {
    goto LABEL_12;
  }

LABEL_3:
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v140 = 0u;
  v144 = 1065353216;
  v145 = 1;
  sub_608080(a3);
  if ((a2 & 1) != 0 || *(a1 + 4660) != 1)
  {
    sub_67E710("{Destination}", v127);
    v10 = v140;
    if (v140)
    {
      v11 = *(&v140 + 1);
      v12 = v140;
      if (*(&v140 + 1) != v140)
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = v140;
      }

      *(&v140 + 1) = v10;
      operator delete(v12);
    }

    v140 = *v127;
    *&v141 = v128;
    v127[1] = 0;
    v128 = 0;
    v127[0] = 0;
    if (v143)
    {
      v14 = *(&v142 + 1);
      if (*(&v142 + 1))
      {
        do
        {
          v15 = *v14;
          sub_55F7FC((v14 + 2));
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      *(&v142 + 1) = 0;
      if (v142)
      {
        bzero(*(&v141 + 1), 8 * v142);
      }

      v143 = 0;
    }

    v16 = __p;
    __p = 0;
    v17 = *(&v141 + 1);
    *(&v141 + 1) = v16;
    if (v17)
    {
      operator delete(v17);
    }

    v18 = v130;
    v19 = v131;
    v130 = 0;
    *(&v142 + 1) = v131;
    v143 = v132;
    v144 = v133;
    *&v142 = v18;
    if (v132)
    {
      v20 = v131[1];
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v20 >= v18)
        {
          v20 %= v18;
        }
      }

      else
      {
        v20 &= v18 - 1;
      }

      *(*(&v141 + 1) + 8 * v20) = &v142 + 8;
      v131 = 0;
      v132 = 0;
      v145 = v134;
    }

    else
    {
      v145 = v134;
      if (v131)
      {
        do
        {
          v21 = *v19;
          sub_55F7FC((v19 + 2));
          operator delete(v19);
          v19 = v21;
        }

        while (v21);
      }
    }

    v22 = __p;
    __p = 0;
    if (v22)
    {
      operator delete(v22);
    }

    v23 = v127[0];
    if (v127[0])
    {
      v24 = v127[1];
      v25 = v127[0];
      if (v127[1] != v127[0])
      {
        do
        {
          v26 = *(v24 - 1);
          v24 -= 3;
          if (v26 < 0)
          {
            operator delete(*v24);
          }
        }

        while (v24 != v23);
        v25 = v127[0];
      }

      v127[1] = v23;
      operator delete(v25);
    }

    sub_68179C(a3, 27);
    v27 = 0;
  }

  else
  {
    sub_67E494(v127, qword_27A7EE0);
    v6 = v140;
    if (v140)
    {
      v7 = *(&v140 + 1);
      v8 = v140;
      if (*(&v140 + 1) != v140)
      {
        do
        {
          v9 = *(v7 - 1);
          v7 -= 3;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = v140;
      }

      *(&v140 + 1) = v6;
      operator delete(v8);
    }

    v140 = *v127;
    *&v141 = v128;
    v127[1] = 0;
    v128 = 0;
    v127[0] = 0;
    if (v143)
    {
      v28 = *(&v142 + 1);
      if (*(&v142 + 1))
      {
        do
        {
          v29 = *v28;
          sub_55F7FC((v28 + 2));
          operator delete(v28);
          v28 = v29;
        }

        while (v29);
      }

      *(&v142 + 1) = 0;
      if (v142)
      {
        bzero(*(&v141 + 1), 8 * v142);
      }

      v143 = 0;
    }

    v30 = __p;
    __p = 0;
    v31 = *(&v141 + 1);
    *(&v141 + 1) = v30;
    if (v31)
    {
      operator delete(v31);
    }

    v32 = v130;
    v33 = v131;
    v130 = 0;
    *(&v142 + 1) = v131;
    v143 = v132;
    v144 = v133;
    *&v142 = v32;
    if (v132)
    {
      v34 = v131[1];
      if ((v32 & (v32 - 1)) != 0)
      {
        if (v34 >= v32)
        {
          v34 %= v32;
        }
      }

      else
      {
        v34 &= v32 - 1;
      }

      *(*(&v141 + 1) + 8 * v34) = &v142 + 8;
      v131 = 0;
      v132 = 0;
      v145 = v134;
    }

    else
    {
      v145 = v134;
      if (v131)
      {
        do
        {
          v35 = *v33;
          sub_55F7FC((v33 + 2));
          operator delete(v33);
          v33 = v35;
        }

        while (v35);
      }
    }

    v36 = __p;
    __p = 0;
    if (v36)
    {
      operator delete(v36);
    }

    v37 = v127[0];
    if (v127[0])
    {
      v38 = v127[1];
      v39 = v127[0];
      if (v127[1] != v127[0])
      {
        do
        {
          v40 = *(v38 - 1);
          v38 -= 3;
          if (v40 < 0)
          {
            operator delete(*v38);
          }
        }

        while (v38 != v37);
        v39 = v127[0];
      }

      v127[1] = v37;
      operator delete(v39);
    }

    sub_68179C(a3, 29);
    v27 = 1;
  }

  sub_6821CC(a3, &v140);
  sub_681D10(a3, *(a1 + 4656) - (a2 ^ 1));
  v41 = 2793;
  if (a2)
  {
    v41 = 2794;
    v42 = 3;
  }

  else
  {
    v42 = 1;
  }

  if (*(a1 + v41))
  {
    v43 = 2;
  }

  else
  {
    v43 = v42;
  }

  sub_681D18(a3, v43);
  sub_67E710("{Destination}", &v136);
  v125 = 0;
  v126 = 0;
  sub_680484(v127, &v136, 1, &v125);
  v44 = v126;
  if (v126 && !atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

  sub_681A64(a3, v127);
  if (v27 | a2) == 1 && (*(a1 + 2792))
  {
    LODWORD(v116) = 19;
    sub_681B08(a3, &v116);
    sub_67E710("{Icon1}", &v121);
    v114 = 0;
    v115 = 0;
    sub_680484(&v116, &v121, 1, &v114);
    v45 = v115;
    if (v115 && !atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    sub_681A64(a3, &v116);
    LODWORD(v105) = 18;
    sub_681B08(a3, &v105);
    if (v27)
    {
      v46 = "Charge_At_Start";
    }

    else
    {
      v46 = "Arrival_Charge_List";
    }

    sub_67E494(&v110, v46);
    v103 = 0;
    v104 = 0;
    sub_680484(&v105, &v110, 1, &v103);
    v47 = v104;
    if (v104 && !atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }

    sub_681A64(a3, &v105);
    v48 = 2800;
    if (a2)
    {
      v48 = 2936;
    }

    sub_6819B8(a3, (a1 + v48));
    v49 = 2640;
    if (v27)
    {
      v49 = 2616;
    }

    v50 = sub_681A38(a3, (a1 + v49));
    v51 = v109;
    if (v109 && !atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51, v50);
      std::__shared_weak_count::__release_weak(v51);
    }

    v52 = v108;
    if (v108)
    {
      do
      {
        v53 = *v52;
        sub_55F7FC((v52 + 2));
        operator delete(v52);
        v52 = v53;
      }

      while (v53);
    }

    v54 = v107;
    v107 = 0;
    if (v54)
    {
      operator delete(v54);
    }

    v55 = v105;
    if (v105)
    {
      v56 = v106;
      v57 = v105;
      if (v106 != v105)
      {
        do
        {
          v58 = *(v56 - 1);
          v56 -= 3;
          if (v58 < 0)
          {
            operator delete(*v56);
          }
        }

        while (v56 != v55);
        v57 = v105;
      }

      v106 = v55;
      operator delete(v57);
    }

    v59 = v113;
    if (v113)
    {
      do
      {
        v60 = *v59;
        sub_55F7FC((v59 + 2));
        operator delete(v59);
        v59 = v60;
      }

      while (v60);
    }

    v61 = v112;
    v112 = 0;
    if (v61)
    {
      operator delete(v61);
    }

    v62 = v110;
    if (v110)
    {
      v63 = v111;
      v64 = v110;
      if (v111 != v110)
      {
        do
        {
          v65 = *(v63 - 1);
          v63 -= 3;
          if (v65 < 0)
          {
            operator delete(*v63);
          }
        }

        while (v63 != v62);
        v64 = v110;
      }

      v111 = v62;
      operator delete(v64);
    }

    v66 = v120;
    if (v120 && !atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v66->__on_zero_shared)(v66, v50);
      std::__shared_weak_count::__release_weak(v66);
    }

    v67 = v119;
    if (v119)
    {
      do
      {
        v68 = *v67;
        sub_55F7FC((v67 + 2));
        operator delete(v67);
        v67 = v68;
      }

      while (v68);
    }

    v69 = v118;
    v118 = 0;
    if (v69)
    {
      operator delete(v69);
    }

    v70 = v116;
    if (v116)
    {
      v71 = v117;
      v72 = v116;
      if (v117 != v116)
      {
        do
        {
          v73 = *(v71 - 1);
          v71 -= 3;
          if (v73 < 0)
          {
            operator delete(*v71);
          }
        }

        while (v71 != v70);
        v72 = v116;
      }

      v117 = v70;
      operator delete(v72);
    }

    v74 = v124;
    if (v124)
    {
      do
      {
        v75 = *v74;
        sub_55F7FC((v74 + 2));
        operator delete(v74);
        v74 = v75;
      }

      while (v75);
    }

    v76 = v123;
    v123 = 0;
    if (v76)
    {
      operator delete(v76);
    }

    v77 = v121;
    if (v121)
    {
      v78 = v122;
      v79 = v121;
      if (v122 != v121)
      {
        do
        {
          v80 = *(v78 - 1);
          v78 -= 3;
          if (v80 < 0)
          {
            operator delete(*v78);
          }
        }

        while (v78 != v77);
        v79 = v121;
      }

      v122 = v77;
      operator delete(v79);
    }
  }

  v81 = v135;
  if (v135 && !atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v81->__on_zero_shared)(v81);
    std::__shared_weak_count::__release_weak(v81);
  }

  v82 = v131;
  if (v131)
  {
    do
    {
      v83 = *v82;
      sub_55F7FC((v82 + 2));
      operator delete(v82);
      v82 = v83;
    }

    while (v83);
  }

  v84 = __p;
  __p = 0;
  if (v84)
  {
    operator delete(v84);
  }

  v85 = v127[0];
  if (v127[0])
  {
    v86 = v127[1];
    v87 = v127[0];
    if (v127[1] != v127[0])
    {
      do
      {
        v88 = *(v86 - 1);
        v86 -= 3;
        if (v88 < 0)
        {
          operator delete(*v86);
        }
      }

      while (v86 != v85);
      v87 = v127[0];
    }

    v127[1] = v85;
    operator delete(v87);
  }

  v89 = v139;
  if (v139)
  {
    do
    {
      v90 = *v89;
      sub_55F7FC((v89 + 2));
      operator delete(v89);
      v89 = v90;
    }

    while (v90);
  }

  v91 = v138;
  v138 = 0;
  if (v91)
  {
    operator delete(v91);
  }

  v92 = v136;
  if (v136)
  {
    v93 = v137;
    v94 = v136;
    if (v137 != v136)
    {
      do
      {
        v95 = *(v93 - 1);
        v93 -= 3;
        if (v95 < 0)
        {
          operator delete(*v93);
        }
      }

      while (v93 != v92);
      v94 = v136;
    }

    v137 = v92;
    operator delete(v94);
  }

  v96 = *(&v142 + 1);
  if (*(&v142 + 1))
  {
    do
    {
      v97 = *v96;
      sub_55F7FC((v96 + 2));
      operator delete(v96);
      v96 = v97;
    }

    while (v97);
  }

  v98 = *(&v141 + 1);
  *(&v141 + 1) = 0;
  if (v98)
  {
    operator delete(v98);
  }

  v99 = v140;
  if (v140)
  {
    v100 = *(&v140 + 1);
    v101 = v140;
    if (*(&v140 + 1) != v140)
    {
      do
      {
        v102 = *(v100 - 1);
        v100 -= 3;
        if (v102 < 0)
        {
          operator delete(*v100);
        }
      }

      while (v100 != v99);
      v101 = v140;
    }

    *(&v140 + 1) = v99;
    operator delete(v101);
  }
}