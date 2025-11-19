__n128 sub_1A211C390@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls11ArtworkView_style);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_1A211C42C(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

double sub_1A211C524()
{
  v1 = OBJC_IVAR____TtC13MediaControls11PackageView_scale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A211C568()
{
  v1 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_layout;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A211C5AC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC8))();
  if (!sub_1A210E438(v3, 1))
  {
    goto LABEL_5;
  }

  v4 = [v1 window];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  [v2 contentSize];
  v7 = v6;
  [v1 bounds];
  Height = CGRectGetHeight(v14);
  v12 = v5;
  [v12 safeAreaInsets];
  sub_1A22E6A48();
  if (Height - v9 > v7)
  {

LABEL_5:
    [v2 contentInset];
    [v2 setContentInset_];
    sub_1A211C75C(0.0);
    return;
  }

  [v12 safeAreaInsets];
  [v12 safeAreaInsets];
  v11 = v10;

  [v2 contentInset];
  [v2 setContentInset_];
  sub_1A211C75C(v11);
}

id sub_1A211C75C(double a1)
{
  result = [v1 contentInset];
  if (v4 != a1)
  {
    [v1 contentOffset];
    [v1 setContentOffset_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1A2215490;
    *(v7 + 24) = v6;
    v11[4] = sub_1A22154EC;
    v11[5] = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A2212E7C;
    v11[3] = &block_descriptor;
    v8 = _Block_copy(v11);
    v9 = v1;

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A211C90C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1A211C9D0()
{
  v1 = MEMORY[0x1E69E7D40];
  if (((1 << (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))()) & 0xF) != 0)
  {
    v2 = (*((*v1 & *v0) + 0x158))();
    (*((*v1 & *v0) + 0x220))();
    (*((*v1 & *v2) + 0x170))();
  }

  else
  {
    v2 = (*((*v1 & *v0) + 0x158))();
    if ((*((*v1 & *v0) + 0xF8))())
    {
      CCUIExpandedModuleContinuousCornerRadius();
    }

    else
    {
      (*((*v1 & *v0) + 0x220))();
    }

    (*((*v1 & *v2) + 0x170))();
  }
}

uint64_t sub_1A211CC04()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_layout;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1A211CC48()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A211CC8C(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_cornerRadius;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C0))(result);
  }

  return result;
}

id sub_1A211CD6C()
{
  v47.receiver = v0;
  v47.super_class = type metadata accessor for MediaControlsModuleSessionView();
  objc_msgSendSuper2(&v47, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [*(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_backgroundView) setFrame_];
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x130);
  v12 = (v11)(v9);
  if (v12 == 7)
  {
    v18 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView);
    [v18 sizeThatFits_];
    v20 = v19;
    v22 = v21;
    [v18 setFrame_];
    v54.origin.x = v2;
    v54.origin.y = v4;
    v54.size.width = v20;
    v54.size.height = v22;
    CGRectGetWidth(v54);
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2127EF0();
    v23 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView);
    [v0 bounds];
    v48 = v24;
    v49 = v25;
    v50 = v26;
    v51 = v27;
    v52 = 0;
    sub_1A22E6BA8();
  }

  else
  {
    if (v12 == 6)
    {
      v13 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView);
      [v13 sizeThatFits_];
      v15 = v14;
      v17 = v16;
      [v13 setFrame_];
      v53.origin.x = v2;
      v53.origin.y = v4;
      v53.size.width = v15;
      v53.size.height = v17;
      CGRectGetHeight(v53);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2127EF0();
    }

    else
    {
      v28 = [objc_opt_self() currentDevice];
      v29 = [v28 userInterfaceIdiom];

      if (v29 != 1 && (sub_1A225CB4C() & 1) == 0)
      {
        v38 = (*((*v10 & *v0) + 0x160))([*(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView) setFrame_]);
        v39 = sub_1A2113050();
        sub_1A2121FCC(v38, v39 & 1, 6);

        v58.origin.x = v2;
        v58.origin.y = v4;
        v58.size.width = v6;
        v58.size.height = v8;
        CGRectGetHeight(v58);
        v59.origin.x = v2;
        v59.origin.y = v4;
        v59.size.width = v6;
        v59.size.height = v8;
        CGRectGetMaxX(v59);
        v60.origin.x = v2;
        v60.origin.y = v4;
        v60.size.width = v6;
        v60.size.height = v8;
        CGRectGetMinY(v60);
        v40 = v11();
        v41 = sub_1A2122014(v40);
        v23 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView);
        [v0 bounds];
        v48 = v42;
        v49 = v43;
        v50 = v44;
        v51 = v45;
        v52 = 0;
        sub_1A22E6BA8();
        return [v23 setFrame_];
      }

      v30 = (*((*v10 & *v0) + 0x160))([*(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView) setFrame_]);
      v31 = sub_1A2113050();
      v32 = sub_1A2121FCC(v30, v31 & 1, 6);
      v34 = v33;

      sub_1A21275D0();
      sub_1A229DA54(6, v32, v34);
      sub_1A2122014(6);
      v46 = v35;
      v55.origin.x = v2;
      v55.origin.y = v4;
      v55.size.width = v6;
      v55.size.height = v8;
      CGRectGetWidth(v55);
      sub_1A22E6A48();
      v56.origin.x = v2;
      v56.origin.y = v4;
      v56.size.width = v6;
      v56.size.height = v8;
      CGRectGetMinX(v56);
      v57.origin.x = v2;
      v57.origin.y = v4;
      v57.size.width = v6;
      v57.size.height = v8;
      CGRectGetMaxY(v57);
      v36 = v11();
      sub_1A2122014(v36);
    }

    v23 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView);
  }

  return [v23 setFrame_];
}

id sub_1A211D330()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v1253 - v2;
  v4 = type metadata accessor for MediaControlsModuleNowPlayingView();
  v1264.receiver = v0;
  v1264.super_class = v4;
  v5 = objc_msgSendSuper2(&v1264, sel_layoutSubviews);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8);
  if ((v7)(v5))
  {
    sub_1A21194E8();
  }

  v8 = [v0 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *((*v6 & *v0) + 0x190);
  v18 = (v17)(v8);
  if (v18)
  {
    v19 = v18;
    [v18 metricsScaleFactor];
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_backdropView) setFrame_];
  v23 = (*v6 & *v0) + 352;
  v24 = *((*v6 & *v0) + 0x160);
  v25 = (v24)(v22);
  v26 = sub_1A2122014(v25);
  v28 = UIEdgeInsetsInsetRect(v10, v12, v14, v16, v26, v27);
  v1263 = v29;
  v31 = v30;
  v33 = v32;
  v1261 = v23;
  v1262 = v24;
  v34 = v24();
  v1260 = v21;
  if (v34 > 4)
  {
    if (v34 > 7)
    {
      if (v34 == 8)
      {
        v431 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
        v432 = v17();
        v433 = sub_1A2113050();
        v434 = sub_1A2121FCC(v432, v433 & 1, 4);
        v436 = v435;

        [v431 sizeThatFits_];
        [v431 setFrame_];
        v439 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
        [v439 sizeThatFits_];
        v1370.origin.x = v28;
        v440 = v28;
        v441 = v1263;
        v1370.origin.y = v1263;
        v1370.size.width = v31;
        v1370.size.height = v33;
        CGRectGetMaxX(v1370);
        v1371.origin.x = v440;
        v1371.origin.y = v441;
        v1371.size.width = v31;
        v1371.size.height = v33;
        CGRectGetMinY(v1371);
        [v0 bounds];
        v1300 = v442;
        v1301 = v443;
        v1302 = v444;
        v1303 = v445;
        v1304 = 0;
        sub_1A22E6BA8();
        [v439 setFrame_];
        v446 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
        [v446 sizeThatFits_];
        v448 = v447;
        v450 = v449;
        v1255 = v449;
        v1372.origin.x = v440;
        v1372.origin.y = v441;
        v1372.size.width = v31;
        v1372.size.height = v33;
        MinX = CGRectGetMinX(v1372);
        v1373.origin.x = v440;
        v1373.origin.y = v441;
        v1373.size.width = v31;
        v1373.size.height = v33;
        MaxY = CGRectGetMaxY(v1373);
        [v446 setFrame_];
        v453 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
        [v453 sizeThatFits_];
        v454 = v440;
        v456 = v455;
        v1257 = v455;
        v1258 = v31;
        v1374.size.height = v33;
        v1254 = v33;
        v458 = v457;
        v1256 = v457;
        v1374.origin.x = v454;
        v459 = v454;
        v1259 = v454;
        v1374.origin.y = v441;
        v1374.size.width = v31;
        v460 = v441;
        v461 = CGRectGetMinX(v1374);
        v1375.origin.x = MinX;
        v1375.origin.y = MaxY;
        v1375.size.width = v448;
        v1375.size.height = v1255;
        v462 = CGRectGetMaxY(v1375);
        [v453 setFrame_];
        v463 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
        v464 = v1258;
        v465 = v1254;
        [v463 sizeThatFits_];
        v467 = v466;
        v469 = v468;
        v1376.origin.x = v459;
        v1376.origin.y = v460;
        v1376.size.width = v464;
        v470 = v464;
        v1376.size.height = v465;
        v471 = CGRectGetMinX(v1376);
        v1377.origin.x = v461;
        v1377.origin.y = v462;
        v1377.size.height = v1256;
        v1377.size.width = v1257;
        v472 = CGRectGetMaxY(v1377);
        [v463 setFrame_];
        v473 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
        [v473 sizeThatFits_];
        v475 = v474;
        v477 = v476;
        v1378.origin.x = v471;
        v1378.origin.y = v472;
        v1378.size.width = v467;
        v1378.size.height = v469;
        v478 = CGRectGetMaxY(v1378);
        v479 = v1259;
        v480 = v1263;
        sub_1A212286C(v1259, v1263, v470, v465, 0.0, v478, v475, v477);
        v481 = [v473 setFrame_];
        v482 = (v1262)(v481);
        v483 = sub_1A229DA54(v482, v470, v465);
        v485 = v484;
        v1379.origin.x = v479;
        v1379.origin.y = v480;
        v486 = v480;
        v1379.size.width = v470;
        v1379.size.height = v465;
        v487 = CGRectGetMinX(v1379);
        v1380.origin.x = v479;
        v1380.origin.y = v486;
        v1380.size.width = v470;
        v1380.size.height = v465;
        MinY = CGRectGetMinY(v1380);
        v489 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
        [v0 bounds];
        v1295 = v490;
        v1296 = v491;
        v1297 = v492;
        v1298 = v493;
        v1299 = 0;
        sub_1A22E6BA8();
        [v489 setFrame_];
        v1381.origin.x = v487;
        v1381.origin.y = MinY;
        v1381.size.width = v483;
        v1381.size.height = v485;
        CGRectGetWidth(v1381);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v495 = v494;
        v497 = v496;
        v499 = v498;
        v501 = v500;
        v1110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
        [v1110 sizeThatFits_];
        v503 = v502;
        v1382.origin.x = v495;
        v1382.origin.y = v497;
        v1382.size.width = v499;
        v1382.size.height = v501;
        v504 = CGRectGetMinX(v1382);
        v1383.origin.x = v495;
        v1383.origin.y = v497;
        v1383.size.width = v499;
        v1383.size.height = v501;
        Width = CGRectGetWidth(v1383);
        sub_1A210F570(v495, v497, v499, v501, v504, 0.0, Width, v503);
        [v0 bounds];
LABEL_81:
        v1290 = v506;
        v1291 = v507;
        v1292 = v508;
        v1293 = v509;
        v1294 = 0;
        goto LABEL_82;
      }

      if (v34 != 9)
      {
        v676 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
        [v676 sizeThatFits_];
        v1412.origin.x = v28;
        v677 = v1263;
        v1412.origin.y = v1263;
        v1412.size.width = v31;
        v1412.size.height = v33;
        CGRectGetMaxX(v1412);
        v1413.origin.x = v28;
        v1413.origin.y = v677;
        v1413.size.width = v31;
        v1413.size.height = v33;
        CGRectGetMinY(v1413);
        [v0 bounds];
        v1300 = v678;
        v1301 = v679;
        v1302 = v680;
        v1303 = v681;
        v1304 = 0;
        sub_1A22E6BA8();
        v682 = [v676 setFrame_];
        v683 = v1262;
        v684 = (v1262)(v682);
        sub_1A229DA54(v684, v31, v33);
        v1414.origin.x = v28;
        v1414.origin.y = v677;
        v1414.size.width = v31;
        v1414.size.height = v33;
        CGRectGetMinX(v1414);
        v1415.origin.x = v28;
        v1415.origin.y = v677;
        v1415.size.width = v31;
        v1415.size.height = v33;
        CGRectGetMinY(v1415);
        v685 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
        [v0 &selRef_cancellationReason];
        v1295 = v686;
        v1296 = v687;
        v1297 = v688;
        v1298 = v689;
        v1299 = 0;
        sub_1A22E6BA8();
        v690 = [v685 setFrame_];
        v691 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
        v692 = (v683)(v690);
        v693 = v17();
        v694 = sub_1A2113050();
        v695 = sub_1A2121FCC(v693, v694 & 1, v692);
        v697 = v696;

        [v691 sizeThatFits_];
        v699 = v698;
        v701 = v700;
        [v0 bounds];
        v1290 = v702;
        v1291 = v703;
        v1292 = v704;
        v1293 = v705;
        v1294 = 0;
        sub_1A22E6BA8();
        [v691 &selRef_setEndpointObserver_];
        v1416.origin.x = 0.0;
        v1416.origin.y = 0.0;
        v1416.size.width = v699;
        v1416.size.height = v701;
        CGRectGetWidth(v1416);
        v706 = v683();
        sub_1A2122014(v706);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v708 = v707;
        v710 = v709;
        v712 = v711;
        v714 = v713;
        v715 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
        [v715 sizeThatFits_];
        v717 = v716;
        v719 = v718;
        v1417.origin.x = v708;
        v1417.origin.y = v710;
        v1417.size.width = v712;
        v1417.size.height = v714;
        v720 = CGRectGetMaxY(v1417);
        sub_1A212286C(v708, v710, v712, v714, 0.0, v720 - v719, v717, v719);
        v722 = v721;
        v724 = v723;
        v726 = v725;
        v728 = v727;
        [v0 bounds];
        v1285 = v729;
        v1286 = v730;
        v1287 = v731;
        v1288 = v732;
        v1289 = 0;
        sub_1A22E6BA8();
        [v715 &selRef_setEndpointObserver_];
        v1418.origin.x = v722;
        v1418.origin.y = v724;
        v1418.size.width = v726;
        v1418.size.height = v728;
        CGRectGetHeight(v1418);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v734 = v733;
        v736 = v735;
        v738 = v737;
        v740 = v739;
        v741 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
        [v741 sizeThatFits_];
        v743 = v742;
        v1419.origin.x = v734;
        v1419.origin.y = v736;
        v1419.size.width = v738;
        v1419.size.height = v740;
        v744 = CGRectGetMinX(v1419);
        v1420.origin.x = v734;
        v1420.origin.y = v736;
        v1420.size.width = v738;
        v1420.size.height = v740;
        v745 = CGRectGetMinY(v1420);
        v1421.origin.x = v734;
        v1421.origin.y = v736;
        v1421.size.width = v738;
        v1421.size.height = v740;
        v746 = CGRectGetWidth(v1421);
        [v0 bounds];
        v1280 = v747;
        v1281 = v748;
        v1282 = v749;
        v1283 = v750;
        v1284 = 0;
        sub_1A22E6BA8();
        [v741 &selRef_setEndpointObserver_];
        v1422.origin.x = v744;
        v1422.origin.y = v745;
        v1422.size.width = v746;
        v1422.size.height = v743;
        CGRectGetHeight(v1422);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v752 = v751;
        v754 = v753;
        v756 = v755;
        v758 = v757;
        v759 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
        [v759 sizeThatFits_];
        v761 = v760;
        v763 = v762;
        v1423.origin.x = v752;
        v1423.origin.y = v754;
        v1423.size.width = v756;
        v1423.size.height = v758;
        v764 = CGRectGetMinX(v1423);
        v1424.origin.x = v752;
        v1424.origin.y = v754;
        v1424.size.width = v756;
        v1424.size.height = v758;
        v765 = CGRectGetMinY(v1424);
        [v0 bounds];
        v1275 = v766;
        v1276 = v767;
        v1277 = v768;
        v1278 = v769;
        v1279 = 0;
        sub_1A22E6BA8();
        [v759 &selRef_setEndpointObserver_];
        v1425.origin.x = v764;
        v1425.origin.y = v765;
        v1425.size.width = v761;
        v1425.size.height = v763;
        CGRectGetHeight(v1425);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v771 = v770;
        v773 = v772;
        v775 = v774;
        v777 = v776;
        v778 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
        [v778 sizeThatFits_];
        v780 = v779;
        v782 = v781;
        v1426.origin.x = v771;
        v1426.origin.y = v773;
        v1426.size.width = v775;
        v1426.size.height = v777;
        v783 = CGRectGetMinX(v1426);
        v1427.origin.x = v771;
        v1427.origin.y = v773;
        v1427.size.width = v775;
        v1427.size.height = v777;
        v784 = CGRectGetMaxY(v1427) - v782;
        [v0 bounds];
        v1270 = v785;
        v1271 = v786;
        v1272 = v787;
        v1273 = v788;
        v1274 = 0;
        sub_1A22E6BA8();
        [v778 &selRef_setEndpointObserver_];
        v1428.origin.x = v783;
        v1428.origin.y = v784;
        v1428.size.width = v780;
        v1428.size.height = v782;
        CGRectGetHeight(v1428);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v790 = v789;
        v792 = v791;
        v794 = v793;
        v796 = v795;
        v1110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
        [v1110 sizeThatFits_];
        v798 = v797;
        v800 = v799;
        v1429.origin.x = v790;
        v1429.origin.y = v792;
        v1429.size.width = v794;
        v1429.size.height = v796;
        v801 = CGRectGetMinX(v1429);
        sub_1A210F570(v790, v792, v794, v796, v801, 0.0, v798, v800);
        [v0 bounds];
LABEL_79:
        v1265 = v1221;
        v1266 = v1222;
        v1267 = v1223;
        v1268 = v1224;
        v1269 = 0;
        goto LABEL_82;
      }

      v110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
      v111 = v1262;
      v112 = v1262();
      v113 = v17();
      v114 = sub_1A2113050();
      v115 = sub_1A2121FCC(v113, v114 & 1, v112);
      v117 = v116;

      [v110 sizeThatFits_];
      v1256 = v118;
      v1257 = v119;
      [v110 setFrame_];
      v120 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
      [v120 sizeThatFits_];
      v1316.origin.x = v28;
      v121 = v1263;
      v1316.origin.y = v1263;
      v1316.size.width = v31;
      v1316.size.height = v33;
      CGRectGetMaxX(v1316);
      v1317.origin.x = v28;
      v1317.origin.y = v121;
      v1317.size.width = v31;
      v1317.size.height = v33;
      CGRectGetMinY(v1317);
      [v0 bounds];
      v1300 = v122;
      v1301 = v123;
      v1302 = v124;
      v1303 = v125;
      v1304 = 0;
      sub_1A22E6BA8();
      v126 = (v111)([v120 setFrame_]);
      v127 = sub_1A229DA54(v126, v31, v33);
      v129 = v128;
      v1318.origin.x = v28;
      v1318.origin.y = v121;
      v1318.size.width = v31;
      v1318.size.height = v33;
      v130 = CGRectGetMinX(v1318);
      v1319.origin.x = v28;
      v1319.origin.y = v121;
      v1319.size.width = v31;
      v1319.size.height = v33;
      [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl) setFrame_];
      v1320.origin.x = 0.0;
      v1320.origin.y = 0.0;
      v1320.size.width = v1256;
      v1320.size.height = v1257;
      CGRectGetHeight(v1320);
      v131 = v111();
      sub_1A2122014(v131);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2127EF0();
      v133 = v132;
      v135 = v134;
      v137 = v136;
      v139 = v138;
      v140 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
      [v140 sizeThatFits_];
      v142 = v141;
      v144 = v143;
      v1321.origin.x = v133;
      v1321.origin.y = v135;
      v1321.size.width = v137;
      v1321.size.height = v139;
      v145 = CGRectGetMaxY(v1321);
      sub_1A212286C(v133, v135, v137, v139, 0.0, v145 - v144, v142, v144);
      v147 = v146;
      v149 = v148;
      v151 = v150;
      v153 = v152;
      [v140 setFrame_];
      v1322.origin.x = v147;
      v1322.origin.y = v149;
      v1322.size.width = v151;
      v1322.size.height = v153;
      CGRectGetHeight(v1322);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2127EF0();
      v155 = v154;
      v157 = v156;
      v159 = v158;
      v161 = v160;
      v162 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
      [v162 sizeThatFits_];
      v164 = v163;
      v166 = v165;
      v1323.origin.x = v155;
      v1323.origin.y = v157;
      v1323.size.width = v159;
      v1323.size.height = v161;
      v167 = CGRectGetMinX(v1323);
      v1324.origin.x = v155;
      v1324.origin.y = v157;
      v1324.size.width = v159;
      v1324.size.height = v161;
      v168 = CGRectGetMinY(v1324);
      [v162 setFrame_];
      v1325.origin.x = v167;
      v1325.origin.y = v168;
      v1325.size.width = v164;
      v1325.size.height = v166;
      CGRectGetHeight(v1325);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2127EF0();
      v170 = v169;
      v172 = v171;
      v174 = v173;
      v176 = v175;
      v177 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
      [v177 sizeThatFits_];
      v179 = v178;
      v181 = v180;
      v1326.origin.x = v170;
      v1326.origin.y = v172;
      v1326.size.width = v174;
      v1326.size.height = v176;
      v182 = CGRectGetMinX(v1326);
      v1327.origin.x = v170;
      v1327.origin.y = v172;
      v1327.size.width = v174;
      v1327.size.height = v176;
      [v177 setFrame_];
      v183 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
      [v183 sizeThatFits_];
      v185 = v184;
      v187 = v186;
      v1328.origin.x = v170;
      v1328.origin.y = v172;
      v1328.size.width = v174;
      v1328.size.height = v176;
      v188 = CGRectGetMinX(v1328);
      v1329.origin.x = v170;
      v1329.origin.y = v172;
      v1329.size.width = v174;
      v1329.size.height = v176;
      v189 = CGRectGetMaxY(v1329) - v187;
      [v183 setFrame_];
    }

    else
    {
      v1259 = v28;
      if (v34 != 5)
      {
        v1258 = v31;
        if (v34 == 6)
        {
          (*((*v6 & *v0) + 0x100))();
          v35 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
          if ((*(*(v35 - 8) + 48))(v3, 1, v35))
          {
            v36 = sub_1A210D9B0(v3, &qword_1EB088820);
          }

          else
          {
            v802 = v3[*(v35 + 44)];
            v36 = sub_1A210D9B0(v3, &qword_1EB088820);
            if (v802)
            {
              v803 = v1262;
              v804 = (v1262)(v36);
              sub_1A2122014(v804);
              sub_1A2209D24();
              sub_1A2209D24();
              sub_1A2209D24();
              v805 = sub_1A2127EF0();
              v807 = v806;
              v809 = v808;
              v811 = v810;
              v813 = v812;
              v814 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
              v815 = (v17)(v805);
              v816 = sub_1A2113050();
              v817 = sub_1A2121FCC(v815, v816 & 1, 4);
              v819 = v818;

              [v814 sizeThatFits_];
              [v814 setFrame_];
              v822 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
              [v822 sizeThatFits_];
              v1430.origin.x = v807;
              v1430.origin.y = v809;
              v1430.size.width = v811;
              v1430.size.height = v813;
              CGRectGetMaxX(v1430);
              v1431.origin.x = v807;
              v1431.origin.y = v809;
              v1431.size.width = v811;
              v823 = v811;
              v1431.size.height = v813;
              v824 = v813;
              CGRectGetMinY(v1431);
              [v0 bounds];
              v1300 = v825;
              v1301 = v826;
              v1302 = v827;
              v1303 = v828;
              v1304 = 0;
              sub_1A22E6BA8();
              [v822 setFrame_];
              v829 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
              v830 = v823;
              [v829 sizeThatFits_];
              v832 = v831;
              v834 = v833;
              v1432.origin.x = v807;
              v1432.origin.y = v809;
              v1432.size.width = v823;
              v1432.size.height = v824;
              v835 = v824;
              v836 = CGRectGetMaxY(v1432);
              sub_1A212286C(v807, v809, v830, v824, 0.0, v836, v832, v834);
              [v829 setFrame_];
              v837 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
              [v837 sizeThatFits_];
              v839 = v838;
              v1259 = v838;
              v841 = v840;
              v842 = v807;
              v1433.origin.x = v807;
              v1433.origin.y = v809;
              v1433.size.width = v830;
              v1433.size.height = v824;
              v843 = CGRectGetMinX(v1433);
              v1258 = v843;
              v1434.origin.x = v807;
              v1263 = v807;
              v1434.origin.y = v809;
              v1434.size.width = v830;
              v1434.size.height = v835;
              v844 = CGRectGetMaxY(v1434);
              [v837 setFrame_];
              v845 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
              [v845 sizeThatFits_];
              v847 = v846;
              v849 = v848;
              v1435.origin.x = v842;
              v1435.origin.y = v809;
              v1435.size.width = v830;
              v1435.size.height = v835;
              v850 = CGRectGetMinX(v1435);
              v1436.origin.x = v1258;
              v1436.size.width = v1259;
              v1436.origin.y = v844;
              v1436.size.height = v841;
              [v845 setFrame_];
              v851 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
              [v851 sizeThatFits_];
              v853 = v852;
              v855 = v854;
              v856 = v1263;
              v1437.origin.x = v1263;
              v857 = v809;
              v1437.origin.y = v809;
              v1437.size.width = v830;
              v1437.size.height = v835;
              v858 = CGRectGetMinX(v1437);
              v1438.origin.x = v856;
              v1438.origin.y = v857;
              v1438.size.width = v830;
              v1438.size.height = v835;
              v859 = CGRectGetMaxY(v1438);
              v860 = v859 - v855;
              [v851 setFrame_];
              v1439.origin.x = v858;
              v1439.origin.y = v860;
              v1439.size.width = v853;
              v1439.size.height = v855;
              CGRectGetHeight(v1439);
              sub_1A2209D24();
              sub_1A2209D24();
              sub_1A2209D24();
              v861 = sub_1A2127EF0();
              v863 = v862;
              v865 = v864;
              v867 = v866;
              v869 = v868;
              v870 = (v803)(v861);
              v871 = sub_1A229DA54(v870, v867, v869);
              v873 = v872;
              v1440.origin.x = v863;
              v1440.origin.y = v865;
              v1440.size.width = v867;
              v1440.size.height = v869;
              v874 = CGRectGetMinX(v1440);
              v1441.origin.x = v863;
              v1441.origin.y = v865;
              v1441.size.width = v867;
              v1441.size.height = v869;
              v875 = CGRectGetMinY(v1441);
              v876 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
              [v0 bounds];
              v1295 = v877;
              v1296 = v878;
              v1297 = v879;
              v1298 = v880;
              v1299 = 0;
              sub_1A22E6BA8();
              [v876 setFrame_];
              v1258 = v874;
              v1259 = v873;
              v1442.origin.x = v874;
              v1442.origin.y = v875;
              v1263 = v871;
              v1442.size.width = v871;
              v1442.size.height = v873;
              CGRectGetWidth(v1442);
              v803();
              sub_1A2209D24();
              sub_1A2209D24();
              sub_1A2209D24();
              sub_1A2127EF0();
              v1237 = v1236;
              v1239 = v1238;
              v1241 = v1240;
              v1243 = v1242;
              v1110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
              [v1110 sizeThatFits_];
              v1245 = v1244;
              v1247 = v1246;
              v1497.origin.x = v1237;
              v1497.origin.y = v1239;
              v1497.size.width = v1241;
              v1497.size.height = v1243;
              v1248 = CGRectGetMinX(v1497);
              v1249 = v1258;
              v1250 = v1259;
              v1251 = v875;
              v1252 = v1263;
LABEL_80:
              sub_1A210F570(v1249, v1251, v1252, v1250, v1248, 0.0, v1245, v1247);
              [v0 bounds];
              goto LABEL_81;
            }
          }

          v881 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
          v882 = (v17)(v36);
          v883 = sub_1A2113050();
          v884 = sub_1A2121FCC(v882, v883 & 1, 4);
          v886 = v885;

          [v881 sizeThatFits_];
          [v881 setFrame_];
          v889 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
          [v889 sizeThatFits_];
          v1443.origin.x = v28;
          v890 = v1263;
          v1443.origin.y = v1263;
          v1443.size.width = v31;
          v1443.size.height = v33;
          CGRectGetMaxX(v1443);
          v1444.origin.x = v28;
          v1444.origin.y = v890;
          v1444.size.width = v31;
          v1444.size.height = v33;
          CGRectGetMinY(v1444);
          [v0 bounds];
          v1300 = v891;
          v1301 = v892;
          v1302 = v893;
          v1303 = v894;
          v1304 = 0;
          sub_1A22E6BA8();
          [v889 setFrame_];
          v895 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
          [v895 sizeThatFits_];
          v897 = v896;
          v899 = v898;
          v1445.origin.x = v28;
          v1445.origin.y = v890;
          v1445.size.width = v31;
          v1445.size.height = v33;
          v900 = CGRectGetMaxY(v1445);
          sub_1A212286C(v28, v890, v31, v33, 0.0, v900, v897, v899);
          [v895 setFrame_];
          v901 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
          [v901 sizeThatFits_];
          v903 = v902;
          v1256 = v904;
          v1257 = v902;
          v905 = v904;
          v1446.origin.x = v28;
          v1446.origin.y = v890;
          v1446.size.width = v31;
          v1446.size.height = v33;
          v906 = CGRectGetMinX(v1446);
          v1447.origin.x = v28;
          v1447.origin.y = v890;
          v1447.size.width = v31;
          v1447.size.height = v33;
          v907 = CGRectGetMaxY(v1447);
          [v901 setFrame_];
          v908 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
          [v908 sizeThatFits_];
          v1255 = v909;
          v911 = v910;
          v1448.origin.x = v28;
          v1448.origin.y = v890;
          v1448.size.width = v31;
          v1448.size.height = v33;
          v912 = CGRectGetMinX(v1448);
          v1449.origin.x = v906;
          v1449.origin.y = v907;
          v1449.size.height = v1256;
          v1449.size.width = v1257;
          [v908 setFrame_];
          v913 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
          [v913 sizeThatFits_];
          v915 = v914;
          v917 = v916;
          v1450.origin.x = v28;
          v1450.origin.y = v890;
          v1450.size.width = v31;
          v1450.size.height = v33;
          v918 = CGRectGetMinX(v1450);
          v1451.origin.x = v28;
          v1451.origin.y = v890;
          v1451.size.width = v31;
          v1451.size.height = v33;
          v919 = [v913 setFrame_];
          v920 = v1262;
          v921 = (v1262)(v919);
          v922 = sub_1A229DA54(v921, v31, v33);
          v924 = v923;
          v1452.origin.x = v28;
          v1452.origin.y = v890;
          v1452.size.width = v31;
          v1452.size.height = v33;
          v925 = CGRectGetMinX(v1452);
          v1453.origin.x = v28;
          v1453.origin.y = v890;
          v1453.size.width = v31;
          v1453.size.height = v33;
          v926 = v922;
          v927 = CGRectGetMinY(v1453);
          v928 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
          [v0 bounds];
          v1295 = v929;
          v1296 = v930;
          v1297 = v931;
          v1298 = v932;
          v1299 = 0;
          sub_1A22E6BA8();
          [v928 setFrame_];
          v1256 = v925;
          v1257 = v924;
          v1454.origin.x = v925;
          v1454.origin.y = v927;
          v1454.size.width = v922;
          v1454.size.height = v924;
          CGRectGetWidth(v1454);
          v920();
          sub_1A2209D24();
          sub_1A2209D24();
          sub_1A2209D24();
          sub_1A2127EF0();
          v1226 = v1225;
          v1228 = v1227;
          v1230 = v1229;
          v1232 = v1231;
          v1110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
          [v1110 sizeThatFits_];
          v1245 = v1233;
          v1247 = v1234;
          v1496.origin.x = v1226;
          v1496.origin.y = v1228;
          v1496.size.width = v1230;
          v1496.size.height = v1232;
          v1248 = CGRectGetMinX(v1496);
          v1249 = v1256;
          v1250 = v1257;
          v1251 = v927;
          v1252 = v926;
          goto LABEL_80;
        }

        v642 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
        [v642 sizeThatFits_];
        v1407.origin.x = v28;
        v643 = v1263;
        v1407.origin.y = v1263;
        v1407.size.width = v31;
        v1407.size.height = v33;
        CGRectGetMaxX(v1407);
        v1408.origin.x = v28;
        v1408.origin.y = v643;
        v1408.size.width = v31;
        v1408.size.height = v33;
        CGRectGetMinY(v1408);
        [v0 bounds];
        v1300 = v644;
        v1301 = v645;
        v1302 = v646;
        v1303 = v647;
        v1304 = 0;
        sub_1A22E6BA8();
        v648 = [v642 setFrame_];
        v649 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
        v650 = v1262;
        v651 = (v1262)(v648);
        v652 = v17();
        v653 = v650;
        v654 = v652;
        v655 = sub_1A2113050();
        v656 = sub_1A2121FCC(v654, v655 & 1, v651);
        v658 = v657;

        [v649 &selRef_showSuggestionsView];
        [v0 bounds];
        v1295 = v659;
        v1296 = v660;
        v1297 = v661;
        v1298 = v662;
        v1299 = 0;
        sub_1A22E6BA8();
        [v649 setFrame_];
        v663 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
        [v663 &selRef_showSuggestionsView];
        v665 = v664;
        v666 = v28;
        v668 = v667;
        v1409.origin.x = v666;
        v1409.origin.y = v643;
        v1409.size.width = v31;
        v1409.size.height = v33;
        v669 = CGRectGetMinX(v1409);
        v1410.size.height = v33;
        v670 = v669;
        v1410.origin.x = v666;
        v1410.origin.y = v643;
        v1410.size.width = v31;
        v671 = CGRectGetMaxY(v1410) - v668;
        [v0 bounds];
        v1290 = v672;
        v1291 = v673;
        v1292 = v674;
        v1293 = v675;
        v1294 = 0;
        sub_1A22E6BA8();
        [v663 setFrame_];
        v1411.origin.x = v670;
        v1411.origin.y = v671;
        v1257 = v665;
        v1411.size.width = v665;
        v1411.size.height = v668;
        CGRectGetHeight(v1411);
        v653();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        v1121 = sub_1A2127EF0();
        v1123 = v1122;
        v1125 = v1124;
        v1127 = v1126;
        v1129 = v1128;
        v1130 = (v653)(v1121);
        v1263 = v1127;
        v1259 = v1129;
        v1131 = sub_1A229DA54(v1130, v1127, v1129);
        v1133 = v1132;
        v1134 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
        [v0 bounds];
        v1285 = v1135;
        v1286 = v1136;
        v1287 = v1137;
        v1288 = v1138;
        v1289 = 0;
        v1258 = v1131;
        sub_1A22E6BA8();
        [v1134 &selRef_setEndpointObserver_];
        v1484.origin.x = v670;
        v1484.origin.y = v671;
        v1139 = v1257;
        v1484.size.width = v1257;
        v1484.size.height = v668;
        CGRectGetHeight(v1484);
        v1485.origin.x = v670;
        v1485.origin.y = v671;
        v1485.size.width = v1139;
        v1485.size.height = v668;
        CGRectGetHeight(v1485);
        v653();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v1141 = v1140;
        v1143 = v1142;
        v1145 = v1144;
        v1147 = v1146;
        v1486.origin.x = v1123;
        v1486.origin.y = v1125;
        v1486.size.width = v1258;
        v1486.size.height = v1133;
        v1148 = CGRectGetWidth(v1486);
        v1149 = v653();
        sub_1A2122014(v1149);
        v1151 = v1141 + v1148 + v1150;
        v1152 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
        [v1152 &selRef_showSuggestionsView];
        v1154 = v1153;
        v1156 = v1155;
        v1487.origin.x = v1151;
        v1487.origin.y = v1143;
        v1487.size.width = v1145;
        v1487.size.height = v1147;
        v1157 = CGRectGetMaxY(v1487);
        sub_1A212286C(v1151, v1143, v1145, v1147, 0.0, v1157 - v1156, v1154, v1156);
        v1159 = v1158;
        v1161 = v1160;
        v1163 = v1162;
        v1165 = v1164;
        [v0 bounds];
        v1280 = v1166;
        v1281 = v1167;
        v1282 = v1168;
        v1283 = v1169;
        v1284 = 0;
        sub_1A22E6BA8();
        [v1152 &selRef_setEndpointObserver_];
        v1488.origin.x = v1159;
        v1488.origin.y = v1161;
        v1488.size.width = v1163;
        v1488.size.height = v1165;
        CGRectGetHeight(v1488);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v1171 = v1170;
        v1173 = v1172;
        v1175 = v1174;
        v1177 = v1176;
        v1178 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
        [v1178 &selRef_showSuggestionsView];
        v1180 = v1179;
        v1182 = v1181;
        v1489.origin.x = v1171;
        v1489.origin.y = v1173;
        v1489.size.width = v1175;
        v1489.size.height = v1177;
        v1183 = CGRectGetMinX(v1489);
        v1490.origin.x = v1171;
        v1490.origin.y = v1173;
        v1490.size.width = v1175;
        v1490.size.height = v1177;
        v1184 = CGRectGetMaxY(v1490) - v1182;
        [v0 bounds];
        v1275 = v1185;
        v1276 = v1186;
        v1277 = v1187;
        v1278 = v1188;
        v1279 = 0;
        sub_1A22E6BA8();
        [v1178 &selRef_setEndpointObserver_];
        v1491.origin.x = v1183;
        v1491.origin.y = v1184;
        v1491.size.width = v1180;
        v1491.size.height = v1182;
        CGRectGetHeight(v1491);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v1190 = v1189;
        v1192 = v1191;
        v1194 = v1193;
        v1196 = v1195;
        v1197 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
        [v1197 &selRef_showSuggestionsView];
        v1199 = v1198;
        v1201 = v1200;
        v1492.origin.x = v1190;
        v1492.origin.y = v1192;
        v1492.size.width = v1194;
        v1492.size.height = v1196;
        v1202 = CGRectGetMinX(v1492);
        v1493.origin.x = v1190;
        v1493.origin.y = v1192;
        v1493.size.width = v1194;
        v1493.size.height = v1196;
        v1203 = CGRectGetMinY(v1493);
        [v0 bounds];
        v1270 = v1204;
        v1271 = v1205;
        v1272 = v1206;
        v1273 = v1207;
        v1274 = 0;
        sub_1A22E6BA8();
        [v1197 &selRef_setEndpointObserver_];
        v1494.origin.x = v1202;
        v1494.origin.y = v1203;
        v1494.size.width = v1199;
        v1494.size.height = v1201;
        CGRectGetHeight(v1494);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v1209 = v1208;
        v1211 = v1210;
        v1213 = v1212;
        v1215 = v1214;
        v1110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
        [v1110 &selRef_showSuggestionsView];
        v1217 = v1216;
        v1219 = v1218;
        v1495.origin.x = v1209;
        v1495.origin.y = v1211;
        v1495.size.width = v1213;
        v1495.size.height = v1215;
        v1220 = CGRectGetMinX(v1495);
        sub_1A210F570(v1209, v1211, v1213, v1215, v1220, 0.0, v1217, v1219);
        [v0 bounds];
        goto LABEL_79;
      }

      v328 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
      [v328 sizeThatFits_];
      v1353.origin.x = v28;
      v329 = v1263;
      v1353.origin.y = v1263;
      v1353.size.width = v31;
      v1353.size.height = v33;
      CGRectGetMaxX(v1353);
      v1354.origin.x = v28;
      v1354.origin.y = v329;
      v1354.size.width = v31;
      v1354.size.height = v33;
      CGRectGetMinY(v1354);
      [v0 bounds];
      v1300 = v330;
      v1301 = v331;
      v1302 = v332;
      v1303 = v333;
      v1304 = 0;
      sub_1A22E6BA8();
      v334 = [v328 setFrame_];
      v335 = v1262;
      v336 = (v1262)(v334);
      v337 = sub_1A229DA54(v336, v31, v33);
      v339 = v338;
      v340 = v1259;
      v1355.origin.x = v1259;
      v1355.origin.y = v329;
      v1355.size.width = v31;
      v1355.size.height = v33;
      v341 = CGRectGetMinX(v1355);
      v1356.origin.x = v340;
      v1356.origin.y = v329;
      v1356.size.width = v31;
      v1356.size.height = v33;
      v342 = CGRectGetMinY(v1356);
      v343 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
      [v0 bounds];
      v1295 = v344;
      v1296 = v345;
      v1297 = v346;
      v1298 = v347;
      v1299 = 0;
      sub_1A22E6BA8();
      [v343 setFrame_];
      v1357.origin.x = v341;
      v1357.origin.y = v342;
      v1357.size.width = v337;
      v1357.size.height = v339;
      CGRectGetWidth(v1357);
      v348 = v335();
      sub_1A2122014(v348);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2127EF0();
      v350 = v349;
      v352 = v351;
      v354 = v353;
      v356 = v355;
      v357 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
      [v357 sizeThatFits_];
      v359 = v358;
      v361 = v360;
      v1358.origin.x = v350;
      v1358.origin.y = v352;
      v1358.size.width = v354;
      v1358.size.height = v356;
      v362 = CGRectGetMaxY(v1358);
      sub_1A212286C(v350, v352, v354, v356, 0.0, v362 - v361, v359, v361);
      v364 = v363;
      v366 = v365;
      v368 = v367;
      v370 = v369;
      [v0 bounds];
      v1290 = v371;
      v1291 = v372;
      v1292 = v373;
      v1293 = v374;
      v1294 = 0;
      sub_1A22E6BA8();
      [v357 setFrame_];
      v1359.origin.x = v364;
      v1359.origin.y = v366;
      v1359.size.width = v368;
      v1359.size.height = v370;
      CGRectGetHeight(v1359);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2127EF0();
      v376 = v375;
      v378 = v377;
      v380 = v379;
      v382 = v381;
      v383 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
      [v383 sizeThatFits_];
      v385 = v384;
      v1360.origin.x = v376;
      v1360.origin.y = v378;
      v1360.size.width = v380;
      v1360.size.height = v382;
      v386 = CGRectGetMinX(v1360);
      v1361.origin.x = v376;
      v1361.origin.y = v378;
      v1361.size.width = v380;
      v1361.size.height = v382;
      v387 = CGRectGetMinY(v1361);
      v1362.origin.x = v376;
      v1362.origin.y = v378;
      v1362.size.width = v380;
      v1362.size.height = v382;
      v388 = CGRectGetWidth(v1362);
      [v0 bounds];
      v1285 = v389;
      v1286 = v390;
      v1287 = v391;
      v1288 = v392;
      v1289 = 0;
      sub_1A22E6BA8();
      [v383 setFrame_];
      v1363.origin.x = v386;
      v1363.origin.y = v387;
      v1363.size.width = v388;
      v1363.size.height = v385;
      CGRectGetHeight(v1363);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2127EF0();
      v394 = v393;
      v396 = v395;
      v398 = v397;
      v400 = v399;
      v401 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
      [v401 sizeThatFits_];
      v403 = v402;
      v405 = v404;
      v1364.origin.x = v394;
      v1364.origin.y = v396;
      v1364.size.width = v398;
      v1364.size.height = v400;
      v406 = CGRectGetMinX(v1364);
      v1365.origin.x = v394;
      v1365.origin.y = v396;
      v1365.size.width = v398;
      v1365.size.height = v400;
      v407 = CGRectGetMinY(v1365);
      [v0 bounds];
      v1280 = v408;
      v1281 = v409;
      v1282 = v410;
      v1283 = v411;
      v1284 = 0;
      sub_1A22E6BA8();
      [v401 setFrame_];
      v1366.origin.x = v406;
      v1366.origin.y = v407;
      v1366.size.width = v403;
      v1366.size.height = v405;
      CGRectGetHeight(v1366);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2127EF0();
      v413 = v412;
      v415 = v414;
      v417 = v416;
      v419 = v418;
      v420 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
      [v420 sizeThatFits_];
      v185 = v421;
      v187 = v422;
      v1367.origin.x = v413;
      v1367.origin.y = v415;
      v1367.size.width = v417;
      v1367.size.height = v419;
      v188 = CGRectGetMinX(v1367);
      v1368.origin.x = v413;
      v1368.origin.y = v415;
      v1368.size.width = v417;
      v1368.size.height = v419;
      v189 = CGRectGetMaxY(v1368) - v187;
      [v0 bounds];
      v1275 = v423;
      v1276 = v424;
      v1277 = v425;
      v1278 = v426;
      v1279 = 0;
      sub_1A22E6BA8();
      [v420 setFrame_];
    }

    v1369.origin.x = v188;
    v1369.origin.y = v189;
    v1369.size.width = v185;
    v1369.size.height = v187;
    CGRectGetHeight(v1369);
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2209D24();
    goto LABEL_76;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      if (v34 != 3)
      {
        v510 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
        v511 = v1262();
        v512 = v17();
        v513 = sub_1A2113050();
        v514 = sub_1A2121FCC(v512, v513 & 1, v511);
        v516 = v515;

        [v510 sizeThatFits_];
        v517 = v1263;
        [v510 setFrame_];
        v520 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
        [v520 sizeThatFits_];
        v1384.origin.x = v28;
        v1384.origin.y = v517;
        v1384.size.width = v31;
        v1384.size.height = v33;
        CGRectGetMaxX(v1384);
        v1385.origin.x = v28;
        v1385.origin.y = v517;
        v1385.size.width = v31;
        v1385.size.height = v33;
        CGRectGetMinY(v1385);
        [v0 bounds];
        v1300 = v521;
        v1301 = v522;
        v1302 = v523;
        v1303 = v524;
        v1304 = 0;
        sub_1A22E6BA8();
        [v520 setFrame_];
        v525 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
        [v525 sizeThatFits_];
        v527 = v526;
        v529 = v528;
        v1386.origin.x = v28;
        v1386.origin.y = v517;
        v1386.size.width = v31;
        v1386.size.height = v33;
        v530 = CGRectGetMaxY(v1386);
        sub_1A212286C(v28, v517, v31, v33, 0.0, v530 - v529, v527, v529);
        v532 = v531;
        v534 = v533;
        v536 = v535;
        v538 = v537;
        [v525 setFrame_];
        v1387.origin.x = v532;
        v1387.origin.y = v534;
        v1387.size.width = v536;
        v1387.size.height = v538;
        CGRectGetHeight(v1387);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        v539 = sub_1A2127EF0();
        v541 = v540;
        v543 = v542;
        v545 = v544;
        v547 = v546;
        v548 = (v1262)(v539);
        sub_1A229DA54(v548, v545, v547);
        if (v7())
        {
          v549 = (*((*v6 & *v0) + 0x148))();
          v550 = v17();
          v551 = sub_1A2113050();
          sub_1A211313C(v550, v551 & 1, v549);

          [v0 bounds];
          CGRectGetWidth(v1388);
          [v0 bounds];
          CGRectGetHeight(v1389);
        }

        sub_1A22E6BF8();
        v553 = v552;
        v555 = v554;
        [*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl) setFrame_];
        v1390.origin.x = v541;
        v1390.origin.y = v543;
        v1390.size.width = v553;
        v1390.size.height = v555;
        CGRectGetHeight(v1390);
        v1262();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v970 = v969;
        v972 = v971;
        v974 = v973;
        v976 = v975;
        v977 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
        [v977 sizeThatFits_];
        v979 = v978;
        v981 = v980;
        v1463.origin.x = v970;
        v1463.origin.y = v972;
        v1463.size.width = v974;
        v1463.size.height = v976;
        v982 = CGRectGetMinX(v1463);
        v1464.origin.x = v970;
        v1464.origin.y = v972;
        v1464.size.width = v974;
        v1464.size.height = v976;
        v983 = CGRectGetMinY(v1464);
        [v977 setFrame_];
        v1465.origin.x = v982;
        v1465.origin.y = v983;
        v1465.size.width = v979;
        v1465.size.height = v981;
        CGRectGetHeight(v1465);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v985 = v984;
        v987 = v986;
        v989 = v988;
        v991 = v990;
        v992 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
        [v992 &selRef_showSuggestionsView];
        v994 = v993;
        v996 = v995;
        v1466.origin.x = v985;
        v1466.origin.y = v987;
        v1466.size.width = v989;
        v1466.size.height = v991;
        v997 = CGRectGetMinX(v1466);
        v1467.origin.x = v985;
        v1467.origin.y = v987;
        v1467.size.width = v989;
        v1467.size.height = v991;
        v998 = CGRectGetMinY(v1467);
        [v992 setFrame_];
        v1468.origin.x = v997;
        v1468.origin.y = v998;
        v1468.size.width = v994;
        v1468.size.height = v996;
        CGRectGetHeight(v1468);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v1000 = v999;
        v1002 = v1001;
        v1004 = v1003;
        v1006 = v1005;
        v1007 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
        [v1007 &selRef_showSuggestionsView];
        v1009 = v1008;
        v1011 = v1010;
        v1469.origin.x = v1000;
        v1469.origin.y = v1002;
        v1469.size.width = v1004;
        v1469.size.height = v1006;
        v1012 = CGRectGetMinX(v1469);
        v1470.origin.x = v1000;
        v1470.origin.y = v1002;
        v1470.size.width = v1004;
        v1470.size.height = v1006;
        v1013 = CGRectGetMaxY(v1470);
        v1014 = v1013 - v1011;
        [v1007 setFrame_];
        v1471.origin.x = v1012;
        v1471.origin.y = v1014;
        v1471.size.width = v1009;
        v1471.size.height = v1011;
        CGRectGetHeight(v1471);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v1016 = v1015;
        v1018 = v1017;
        v1020 = v1019;
        v1022 = v1021;
        v1110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
        [v1110 &selRef_showSuggestionsView];
        goto LABEL_77;
      }

      v37 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
      v38 = v17();
      v39 = sub_1A2113050();
      v40 = sub_1A2121FCC(v38, v39 & 1, 4);
      v42 = v41;

      [v37 sizeThatFits_];
      [v37 setFrame_];
      v45 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
      [v45 sizeThatFits_];
      v1305.origin.x = v28;
      v46 = v1263;
      v1305.origin.y = v1263;
      v1305.size.width = v31;
      v1305.size.height = v33;
      CGRectGetMaxX(v1305);
      v1306.origin.x = v28;
      v1306.origin.y = v46;
      v1306.size.width = v31;
      v1306.size.height = v33;
      CGRectGetMinY(v1306);
      [v0 bounds];
      v1300 = v47;
      v1301 = v48;
      v1302 = v49;
      v1303 = v50;
      v1304 = 0;
      sub_1A22E6BA8();
      [v45 setFrame_];
      v51 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
      [v51 sizeThatFits_];
      v53 = v52;
      v55 = v54;
      v1307.origin.x = v28;
      v1307.origin.y = v46;
      v1307.size.width = v31;
      v1307.size.height = v33;
      v56 = CGRectGetMaxY(v1307);
      sub_1A212286C(v28, v46, v31, v33, 0.0, v56 - v55, v53, v55);
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      [v51 setFrame_];
      v1308.origin.x = v58;
      v1308.origin.y = v60;
      v1308.size.width = v62;
      v1308.size.height = v64;
      CGRectGetHeight(v1308);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2127EF0();
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v73 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
      [v73 sizeThatFits_];
      v75 = v74;
      v77 = v76;
      v1309.origin.x = v66;
      v1309.origin.y = v68;
      v1309.size.width = v70;
      v1309.size.height = v72;
      v78 = CGRectGetMinX(v1309);
      v1310.origin.x = v66;
      v1310.origin.y = v68;
      v1310.size.width = v70;
      v1310.size.height = v72;
      v79 = CGRectGetMaxY(v1310);
      v80 = v79 - v77;
      [v73 setFrame_];
      v1311.origin.x = v78;
      v1311.origin.y = v80;
      v1311.size.width = v75;
      v1311.size.height = v77;
      CGRectGetHeight(v1311);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      v81 = sub_1A2127EF0();
      v83 = v82;
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v90 = v1262;
      v91 = (v1262)(v81);
      v92 = sub_1A229DA54(v91, v87, v89);
      v94 = v93;
      v1312.origin.x = v83;
      v1312.origin.y = v85;
      v1312.size.width = v87;
      v1312.size.height = v89;
      v95 = CGRectGetMinX(v1312);
      v1313.origin.x = v83;
      v1313.origin.y = v85;
      v1313.size.width = v87;
      v1313.size.height = v89;
      v96 = CGRectGetMinY(v1313);
      v97 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
      [v0 bounds];
      v1295 = v98;
      v1296 = v99;
      v1297 = v100;
      v1298 = v101;
      v1299 = 0;
      sub_1A22E6BA8();
      [v97 setFrame_];
      v102 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
      v1263 = v83;
      v1314.origin.x = v83;
      v1258 = v87;
      v1259 = v85;
      v1314.origin.y = v85;
      v1314.size.width = v87;
      v1257 = v89;
      v1314.size.height = v89;
      v103 = v92;
      v104 = v1260;
      v105 = CGRectGetWidth(v1314);
      v1315.origin.x = v95;
      v1315.origin.y = v96;
      v1315.size.width = v103;
      v1315.size.height = v94;
      v106 = CGRectGetWidth(v1315);
      v107 = v90();
      v108 = 0.0;
      if (v107 > 0xAu)
      {
        goto LABEL_63;
      }

      if (((1 << v107) & 0x1C8) != 0)
      {
        v109 = 12.0;
        goto LABEL_65;
      }

      if (((1 << v107) & 0x630) != 0)
      {
        v109 = 22.0;
LABEL_65:
        v108 = v104 * v109;
        goto LABEL_66;
      }

      if (v107 != 2)
      {
LABEL_63:
        if (v107)
        {
LABEL_66:
          v961 = v105 - (v106 + v108);
          v1461.origin.x = v95;
          v1461.origin.y = v96;
          v1461.size.width = v103;
          v1461.size.height = v94;
          [v102 sizeThatFits_];
          v963 = v962;
          v965 = v964;
          v1462.origin.x = v95;
          v1462.origin.y = v96;
          v1462.size.width = v103;
          v1462.size.height = v94;
          MaxX = CGRectGetMaxX(v1462);
          v967 = v90();
          if (v967 > 0xA)
          {
            goto LABEL_72;
          }

          if (((1 << v967) & 0x1C8) != 0)
          {
            v968 = 12.0;
            goto LABEL_74;
          }

          if (((1 << v967) & 0x630) != 0)
          {
            v968 = 22.0;
LABEL_74:
            v1025 = v104 * v968;
            goto LABEL_75;
          }

          if (v967 != 2)
          {
LABEL_72:
            v1025 = 0.0;
            if (v967)
            {
LABEL_75:
              sub_1A210F570(v95, v96, v103, v94, MaxX + v1025, 0.0, v963, v965);
              [v0 bounds];
              v1290 = v1026;
              v1291 = v1027;
              v1292 = v1028;
              v1293 = v1029;
              v1294 = 0;
              sub_1A22E6BA8();
              [v102 setFrame_];
              v1472.origin.x = v95;
              v1472.origin.y = v96;
              v1472.size.width = v103;
              v1472.size.height = v94;
              CGRectGetHeight(v1472);
              sub_1A2209D24();
              sub_1A2209D24();
              sub_1A2209D24();
              sub_1A2127EF0();
              v1031 = v1030;
              v1033 = v1032;
              v1035 = v1034;
              v1037 = v1036;
              v1038 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
              [v1038 sizeThatFits_];
              v1040 = v1039;
              v1042 = v1041;
              v1473.origin.x = v1031;
              v1473.origin.y = v1033;
              v1473.size.width = v1035;
              v1473.size.height = v1037;
              v1043 = CGRectGetMinX(v1473);
              v1474.origin.x = v1031;
              v1474.origin.y = v1033;
              v1474.size.width = v1035;
              v1474.size.height = v1037;
              v1044 = CGRectGetMinY(v1474);
              [v1038 setFrame_];
              v1475.origin.x = v1043;
              v1475.origin.y = v1044;
              v1475.size.width = v1040;
              v1475.size.height = v1042;
              CGRectGetHeight(v1475);
              sub_1A2209D24();
              sub_1A2209D24();
              sub_1A2209D24();
LABEL_76:
              sub_1A2127EF0();
              v1016 = v1045;
              v1018 = v1046;
              v1020 = v1047;
              v1022 = v1048;
              v1110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
              [v1110 sizeThatFits_];
LABEL_77:
              v632 = v1023;
              v634 = v1024;
              v1476.origin.x = v1016;
              v1476.origin.y = v1018;
              v1476.size.width = v1020;
              v1476.size.height = v1022;
              v641 = CGRectGetMinX(v1476);
              v636 = 0.0;
              v637 = v1016;
              v638 = v1018;
              v639 = v1020;
              v640 = v1022;
              goto LABEL_78;
            }
          }

          v968 = 10.0;
          goto LABEL_74;
        }
      }

      v109 = 10.0;
      goto LABEL_65;
    }

    v236 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
    v237 = v17();
    v238 = sub_1A2113050();
    v239 = sub_1A2121FCC(v237, v238 & 1, 4);
    v241 = v240;

    [v236 sizeThatFits_];
    [v236 setFrame_];
    v244 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
    [v244 sizeThatFits_];
    v246 = v245;
    v248 = v247;
    v1338.origin.x = v28;
    v249 = v1263;
    v1338.origin.y = v1263;
    v1338.size.width = v31;
    v1338.size.height = v33;
    v250 = CGRectGetMinX(v1338);
    v1339.origin.x = v28;
    v1339.origin.y = v249;
    v1339.size.width = v31;
    v1339.size.height = v33;
    v251 = CGRectGetMaxY(v1339);
    [v244 setFrame_];
    v252 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
    [v252 sizeThatFits_];
    v1256 = v254;
    v1257 = v253;
    v1340.origin.x = v250;
    v1340.origin.y = v251;
    v1340.size.width = v246;
    v1340.size.height = v248;
    v255 = CGRectGetMaxY(v1340);
    v256 = v33;
    sub_1A212286C(v28, v249, v31, v33, 0.0, v255, v1257, v1256);
    v257 = (v17)([v252 setFrame_]);
    sub_1A2121FCC(v257, 0, 2);
    v259 = v258;

    v260 = v1262;
    v261 = v1262();
    sub_1A2122014(v261);
    v262 = sub_1A22E6A48();
    v264 = v259 - v263;
    v265 = (v260)(v262);
    v1341.origin.x = v28;
    v1341.origin.y = v249;
    v1341.size.width = v31;
    v1341.size.height = v33;
    v266 = CGRectGetWidth(v1341);
    if ((*&v266 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v267 = v264;
    }

    else
    {
      v267 = v266;
    }

    if ((~*&v266 & 0x7FF0000000000000) != 0)
    {
      v267 = v266;
    }

    if (v264 > v266)
    {
      v268 = v267;
    }

    else
    {
      v268 = v264;
    }

    v1342.origin.x = v28;
    v269 = v28;
    v1342.origin.y = v249;
    v1342.size.width = v31;
    v1342.size.height = v256;
    Height = CGRectGetHeight(v1342);
    if ((*&Height & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v271 = v264;
    }

    else
    {
      v271 = Height;
    }

    if ((~*&Height & 0x7FF0000000000000) != 0)
    {
      v271 = Height;
    }

    if (v264 > Height)
    {
      v264 = v271;
    }

    sub_1A21275D0();
    v272 = sub_1A229DA54(v265, v268, v264);
    v274 = v273;
    v1343.origin.x = v269;
    v1343.origin.y = v249;
    v1343.size.width = v31;
    v1343.size.height = v256;
    v275 = CGRectGetMinX(v1343);
    v1344.origin.x = v269;
    v1344.origin.y = v249;
    v1344.size.width = v31;
    v1344.size.height = v256;
    v276 = CGRectGetMinY(v1344);
    v277 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
    [v0 bounds];
    v1300 = v278;
    v1301 = v279;
    v1302 = v280;
    v1303 = v281;
    v1304 = 0;
    sub_1A22E6BA8();
    [v277 &selRef_setEndpointObserver_];
    v1345.origin.x = v275;
    v1345.origin.y = v276;
    v1345.size.width = v272;
    v1345.size.height = v274;
    CGRectGetWidth(v1345);
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2127EF0();
    v283 = v282;
    v285 = v284;
    v287 = v286;
    v289 = v288;
    v290 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
    [v290 sizeThatFits_];
    v292 = v291;
    v1259 = v293;
    v1346.origin.x = v283;
    v1346.origin.y = v285;
    v1346.size.width = v287;
    v1346.size.height = v289;
    v1258 = CGRectGetMaxX(v1346) - v292;
    v1263 = v292;
    v1347.origin.x = v283;
    v1347.origin.y = v285;
    v1347.size.width = v287;
    v1347.size.height = v289;
    v1257 = CGRectGetMinY(v1347);
    [v0 bounds];
    v1295 = v294;
    v1296 = v295;
    v1297 = v296;
    v1298 = v297;
    v1299 = 0;
    sub_1A22E6BA8();
    [v290 &selRef_setEndpointObserver_];
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2127EF0();
    v299 = v298;
    v301 = v300;
    v303 = v302;
    v305 = v304;
    v306 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
    [v306 sizeThatFits_];
    v308 = v307;
    v310 = v309;
    v1348.origin.x = v299;
    v1348.origin.y = v301;
    v1348.size.width = v303;
    v1348.size.height = v305;
    v311 = CGRectGetMinX(v1348);
    v1349.origin.x = v299;
    v1349.origin.y = v301;
    v1349.size.width = v303;
    v1349.size.height = v305;
    v312 = CGRectGetMaxY(v1349) - v310;
    [v0 bounds];
    v1290 = v313;
    v1291 = v314;
    v1292 = v315;
    v1293 = v316;
    v1294 = 0;
    sub_1A22E6BA8();
    [v306 &selRef_setEndpointObserver_];
    v1350.origin.x = v311;
    v317 = v1260;
    v1350.origin.y = v312;
    v1350.size.width = v308;
    v1350.size.height = v310;
    CGRectGetHeight(v1350);
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2127EF0();
    x = v1351.origin.x;
    y = v1351.origin.y;
    v320 = v1351.size.width;
    v321 = v1351.size.height;
    v322 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
    v323 = CGRectGetWidth(v1351);
    v1352.origin.y = v1257;
    v1352.origin.x = v1258;
    v1352.size.width = v1263;
    v1352.size.height = v1259;
    v324 = CGRectGetWidth(v1352);
    v325 = v260();
    v326 = 0.0;
    if (v325 > 0xAu)
    {
      goto LABEL_58;
    }

    if (((1 << v325) & 0x1C8) != 0)
    {
      v327 = 12.0;
      goto LABEL_60;
    }

    if (((1 << v325) & 0x630) != 0)
    {
      v327 = 22.0;
LABEL_60:
      v326 = v317 * v327;
      goto LABEL_61;
    }

    if (v325 != 2)
    {
LABEL_58:
      if (v325)
      {
LABEL_61:
        v933 = v323 - v324 - v326;
        v1455.origin.x = x;
        v1455.origin.y = y;
        v1455.size.width = v320;
        v1455.size.height = v321;
        [v322 sizeThatFits_];
        v935 = v934;
        v937 = v936;
        v1456.origin.x = x;
        v1456.origin.y = y;
        v1456.size.width = v320;
        v1456.size.height = v321;
        v938 = CGRectGetMinX(v1456);
        v1457.origin.x = x;
        v1457.origin.y = y;
        v1457.size.width = v320;
        v1457.size.height = v321;
        v939 = CGRectGetMinY(v1457);
        [v0 bounds];
        v1285 = v940;
        v1286 = v941;
        v1287 = v942;
        v1288 = v943;
        v1289 = 0;
        sub_1A22E6BA8();
        [v322 &selRef_setEndpointObserver_];
        v1458.origin.x = v938;
        v1458.origin.y = v939;
        v1458.size.width = v935;
        v1458.size.height = v937;
        CGRectGetHeight(v1458);
        v1459.origin.y = v1257;
        v1459.origin.x = v1258;
        v1459.size.width = v1263;
        v1459.size.height = v1259;
        CGRectGetHeight(v1459);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v945 = v944;
        v947 = v946;
        v949 = v948;
        v951 = v950;
        v1110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
        [v1110 sizeThatFits_];
        v953 = v952;
        v955 = v954;
        v1460.origin.x = v945;
        v1460.origin.y = v947;
        v1460.size.width = v949;
        v1460.size.height = v951;
        v956 = CGRectGetMinX(v1460);
        sub_1A210F570(v945, v947, v949, v951, v956, 0.0, v953, v955);
        [v0 bounds];
        v1280 = v957;
        v1281 = v958;
        v1282 = v959;
        v1283 = v960;
        v1284 = 0;
        goto LABEL_82;
      }
    }

    v327 = 10.0;
    goto LABEL_60;
  }

  v1259 = v28;
  if (!v34)
  {
    v190 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
    v191 = v17();
    v192 = sub_1A2113050();
    v193 = sub_1A2121FCC(v191, v192 & 1, 4);
    v195 = v194;

    [v190 sizeThatFits_];
    [v190 setFrame_];
    v198 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
    [v198 sizeThatFits_];
    v200 = v199;
    v1256 = v201;
    v1257 = v199;
    v202 = v201;
    v203 = v1259;
    v1330.origin.x = v1259;
    v204 = v1263;
    v1330.origin.y = v1263;
    v1330.size.width = v31;
    v1330.size.height = v33;
    v205 = CGRectGetMinX(v1330);
    v1331.origin.x = v203;
    v1331.origin.y = v204;
    v1331.size.width = v31;
    v1331.size.height = v33;
    v206 = CGRectGetMaxY(v1331);
    [v198 setFrame_];
    v207 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
    [v207 sizeThatFits_];
    v209 = v208;
    v211 = v210;
    v1332.origin.x = v203;
    v1332.origin.y = v204;
    v1332.size.width = v31;
    v1332.size.height = v33;
    v212 = CGRectGetMinX(v1332);
    v1333.origin.x = v205;
    v1333.origin.y = v206;
    v1333.size.height = v1256;
    v1333.size.width = v1257;
    v213 = CGRectGetMaxY(v1333);
    [v207 setFrame_];
    v214 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
    [v214 sizeThatFits_];
    v216 = v215;
    v218 = v217;
    v1334.origin.x = v212;
    v1334.origin.y = v213;
    v1334.size.width = v209;
    v1334.size.height = v211;
    v219 = CGRectGetMaxY(v1334);
    v220 = v1259;
    v221 = v1263;
    sub_1A212286C(v1259, v1263, v31, v33, 0.0, v219, v216, v218);
    v222 = [v214 setFrame_];
    v223 = v1262;
    v224 = (v1262)(v222);
    v225 = sub_1A229DA54(v224, v31, v33);
    v227 = v226;
    v1335.origin.x = v220;
    v228 = v221;
    v1335.origin.y = v221;
    v1335.size.width = v31;
    v1335.size.height = v33;
    v229 = CGRectGetMinX(v1335);
    v1336.origin.x = v220;
    v1336.origin.y = v228;
    v1336.size.width = v31;
    v1336.size.height = v33;
    v230 = CGRectGetMinY(v1336);
    v231 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
    [v0 bounds];
    v1300 = v232;
    v1301 = v233;
    v1302 = v234;
    v1303 = v235;
    v1304 = 0;
    sub_1A22E6BA8();
    [v231 setFrame_];
    v1337.origin.x = v229;
    v1337.origin.y = v230;
    v1337.size.width = v225;
    v1337.size.height = v227;
    CGRectGetWidth(v1337);
    v223();
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2127EF0();
    v1050 = v1049;
    v1052 = v1051;
    v1054 = v1053;
    v1056 = v1055;
    v1057 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
    [v1057 sizeThatFits_];
    v1059 = v1058;
    v1061 = v1060;
    v1477.origin.x = v1050;
    v1477.origin.y = v1052;
    v1477.size.width = v1054;
    v1477.size.height = v1056;
    v1062 = CGRectGetMaxX(v1477);
    sub_1A210F570(v1050, v1052, v1054, v1056, v1062 - v1059, 0.0, v1059, v1061);
    v1064 = v1063;
    v1066 = v1065;
    v1068 = v1067;
    v1070 = v1069;
    [v0 bounds];
    v1295 = v1071;
    v1296 = v1072;
    v1297 = v1073;
    v1298 = v1074;
    v1299 = 0;
    sub_1A22E6BA8();
    [v1057 setFrame_];
    v1478.origin.x = v1064;
    v1478.origin.y = v1066;
    v1478.size.width = v1068;
    v1478.size.height = v1070;
    CGRectGetWidth(v1478);
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2127EF0();
    v1076 = v1075;
    v1078 = v1077;
    v1080 = v1079;
    v1082 = v1081;
    v1083 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
    [v1083 sizeThatFits_];
    v1085 = v1084;
    v1087 = v1086;
    v1479.origin.x = v1076;
    v1479.origin.y = v1078;
    v1479.size.width = v1080;
    v1479.size.height = v1082;
    v1088 = CGRectGetMaxX(v1479) - v1085;
    v1480.origin.x = v1076;
    v1480.origin.y = v1078;
    v1480.size.width = v1080;
    v1480.size.height = v1082;
    v1089 = CGRectGetMinY(v1480);
    sub_1A210F570(v1076, v1078, v1080, v1082, v1088, v1089, v1085, v1087);
    v1091 = v1090;
    v1093 = v1092;
    v1095 = v1094;
    v1097 = v1096;
    [v0 bounds];
    v1290 = v1098;
    v1291 = v1099;
    v1292 = v1100;
    v1293 = v1101;
    v1294 = 0;
    sub_1A22E6BA8();
    [v1083 setFrame_];
    v1481.origin.x = v1091;
    v1481.origin.y = v1093;
    v1481.size.width = v1095;
    v1481.size.height = v1097;
    CGRectGetWidth(v1481);
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2127EF0();
    v1103 = v1102;
    v1105 = v1104;
    v1107 = v1106;
    v1109 = v1108;
    v1110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
    [v1110 sizeThatFits_];
    v1112 = v1111;
    v1114 = v1113;
    v1482.origin.x = v1103;
    v1482.origin.y = v1105;
    v1482.size.width = v1107;
    v1482.size.height = v1109;
    v1115 = CGRectGetMinX(v1482);
    v1483.origin.x = v1103;
    v1483.origin.y = v1105;
    v1483.size.width = v1107;
    v1483.size.height = v1109;
    v1116 = CGRectGetMinY(v1483);
    sub_1A210F570(v1103, v1105, v1107, v1109, v1115, v1116, v1112, v1114);
    [v0 bounds];
    v1285 = v1117;
    v1286 = v1118;
    v1287 = v1119;
    v1288 = v1120;
    v1289 = 0;
LABEL_82:
    sub_1A22E6BA8();
    return [v1110 setFrame_];
  }

  v556 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
  v557 = v17();
  v558 = sub_1A2113050();
  v559 = sub_1A2121FCC(v557, v558 & 1, 4);
  v561 = v560;

  [v556 sizeThatFits_];
  [v556 setFrame_];
  v564 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
  [v564 sizeThatFits_];
  v1256 = v566;
  v1257 = v565;
  v567 = v1259;
  v1391.origin.x = v1259;
  v568 = v1263;
  v1391.origin.y = v1263;
  v1391.size.width = v31;
  v1391.size.height = v33;
  v1255 = CGRectGetMinX(v1391);
  v1392.origin.x = v567;
  v1392.origin.y = v568;
  v1392.size.width = v31;
  v1392.size.height = v33;
  v569 = CGRectGetMaxY(v1392);
  [v0 bounds];
  v1300 = v570;
  v1301 = v571;
  v1302 = v572;
  v1303 = v573;
  v1304 = 0;
  sub_1A22E6BA8();
  [v564 setFrame_];
  v574 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton);
  [v574 sizeThatFits_];
  v576 = v575;
  v578 = v577;
  v1393.origin.x = v567;
  v1393.origin.y = v568;
  v1393.size.width = v31;
  v1393.size.height = v33;
  v579 = CGRectGetMinX(v1393);
  v1394.origin.x = v1255;
  v1394.size.height = v1256;
  v1394.origin.y = v569;
  v1394.size.width = v1257;
  v580 = CGRectGetMaxY(v1394);
  sub_1A212286C(v567, v568, v31, v33, v579, v580, v576, v578);
  [v574 setFrame_];
  v581 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton);
  [v581 sizeThatFits_];
  v1395.origin.x = v567;
  v1395.origin.y = v568;
  v1395.size.width = v31;
  v1395.size.height = v33;
  CGRectGetMaxX(v1395);
  v1396.origin.x = v567;
  v1396.origin.y = v568;
  v1396.size.width = v31;
  v1396.size.height = v33;
  CGRectGetMinY(v1396);
  [v0 bounds];
  v1295 = v582;
  v1296 = v583;
  v1297 = v584;
  v1298 = v585;
  v1299 = 0;
  sub_1A22E6BA8();
  v586 = [v581 setFrame_];
  v587 = (v1262)(v586);
  v588 = sub_1A229DA54(v587, v31, v33);
  v590 = v589;
  v1397.origin.x = v567;
  v1397.origin.y = v568;
  v1397.size.width = v31;
  v1397.size.height = v33;
  v591 = CGRectGetMinX(v1397);
  v1398.origin.x = v567;
  v1398.origin.y = v568;
  v1398.size.width = v31;
  v1398.size.height = v33;
  v592 = CGRectGetMinY(v1398);
  v593 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
  [v0 bounds];
  v1290 = v594;
  v1291 = v595;
  v1292 = v596;
  v1293 = v597;
  v1294 = 0;
  sub_1A22E6BA8();
  [v593 setFrame_];
  v1399.origin.x = v591;
  v1399.origin.y = v592;
  v1399.size.width = v588;
  v1399.size.height = v590;
  CGRectGetHeight(v1399);
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2127EF0();
  v599 = v598;
  v601 = v600;
  v603 = v602;
  v605 = v604;
  v606 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
  [v606 sizeThatFits_];
  v608 = v607;
  v610 = v609;
  v1400.origin.x = v599;
  v1400.origin.y = v601;
  v1400.size.width = v603;
  v1400.size.height = v605;
  v611 = CGRectGetMinX(v1400);
  v1401.origin.x = v599;
  v1401.origin.y = v601;
  v1401.size.width = v603;
  v1401.size.height = v605;
  [v606 setFrame_];
  v612 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
  [v612 sizeThatFits_];
  v614 = v613;
  v616 = v615;
  v1402.origin.x = v599;
  v1402.origin.y = v601;
  v1402.size.width = v603;
  v1402.size.height = v605;
  v617 = CGRectGetMinX(v1402);
  v1403.origin.x = v599;
  v1403.origin.y = v601;
  v1403.size.width = v603;
  v1403.size.height = v605;
  v618 = CGRectGetMaxY(v1403) - v616;
  [v0 bounds];
  v1285 = v619;
  v1286 = v620;
  v1287 = v621;
  v1288 = v622;
  v1289 = 0;
  sub_1A22E6BA8();
  [v612 setFrame_];
  v1404.origin.x = v617;
  v1404.origin.y = v618;
  v1404.size.width = v614;
  v1404.size.height = v616;
  CGRectGetHeight(v1404);
  sub_1A2209D24();
  sub_1A2127EF0();
  v624 = v623;
  v626 = v625;
  v628 = v627;
  v630 = v629;
  v1110 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
  [v1110 sizeThatFits_];
  v632 = v631;
  v634 = v633;
  v1405.origin.x = v624;
  v1405.origin.y = v626;
  v1405.size.width = v628;
  v1405.size.height = v630;
  v635 = CGRectGetMinX(v1405);
  v1406.origin.x = v624;
  v1406.origin.y = v626;
  v1406.size.width = v628;
  v1406.size.height = v630;
  v636 = CGRectGetMinY(v1406);
  v637 = v624;
  v638 = v626;
  v639 = v628;
  v640 = v630;
  v641 = v635;
LABEL_78:
  sub_1A210F570(v637, v638, v639, v640, v641, v636, v632, v634);
  return [v1110 setFrame_];
}

uint64_t type metadata accessor for MediaControlsModuleNowPlayingView()
{
  result = qword_1ED952290;
  if (!qword_1ED952290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1A2121F24()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_contentMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

double sub_1A2121FCC(void *a1, uint64_t a2, char a3)
{
  sub_1A2122044(a3);

  return sub_1A2113198(a1);
}

void *sub_1A21220AC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  result = v1(v6);
  if (v6[0])
  {
    (v1)(v7, result);
    sub_1A22E6A18();
    v3 = sub_1A22E6BE8();
    result = (v1)(v8, v3);
    if (__OFSUB__(v8[2], 1))
    {
      __break(1u);
    }

    else
    {
      (v1)(&v9, result);
      v4 = [v0 traitCollection];
      sub_1A21222D8(v4);

      v5 = v1(&v10);
      result = (v1)(v11, v5);
      if (!__OFSUB__(v11[1], 1))
      {
        (v1)(v12, result);
        return sub_1A22E6B88();
      }
    }

    __break(1u);
  }

  return result;
}

__n128 sub_1A2122280@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_style;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

double sub_1A21222D8(uint64_t a1)
{
  if (qword_1ED952438 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9535C8;
  v3 = unk_1ED9535D0;
  v4 = dword_1ED9535D8;
  v5 = byte_1ED9535DC;
  v6 = qword_1ED9535E0;
  v7 = sub_1A21275D0();
  v8 = sub_1A21275D8(a1, v2, v3, v4 | (v5 << 32), v6, v7);
  [v8 lineHeight];
  v10 = v9;

  if (qword_1ED952430 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED9535A8;
  v12 = unk_1ED9535B0;
  v13 = dword_1ED9535B8;
  v14 = byte_1ED9535BC;
  v15 = qword_1ED9535C0;
  v16 = sub_1A21275D0();
  v17 = sub_1A21275D8(a1, v11, v12, v13 | (v14 << 32), v15, v16);
  [v17 lineHeight];
  v19 = v18;

  return v10 + v19 + 6.0;
}

__n128 sub_1A2122674@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_style;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 57) = *(v3 + 57);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

id sub_1A2122728(double a1, double a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC8))();
  if (v6)
  {
    v7 = v6;
    [v6 metricsScaleFactor];
  }

  if (((*((*v5 & *v2) + 0x98))() & 1) == 0)
  {
    return sub_1A22E6BF8();
  }

  sub_1A22E6A28();
  return [*(v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label) sizeThatFits_];
}

double sub_1A2122958@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls26NowPlayingTimeControlsView_style);
  swift_beginAccess();
  v4 = v3[5];
  v18 = v3[4];
  v19 = v4;
  v5 = v3[7];
  v20 = v3[6];
  v21 = v5;
  v6 = v3[1];
  v14 = *v3;
  v15 = v6;
  v7 = v3[3];
  v16 = v3[2];
  v17 = v7;
  sub_1A21229F8(&v14, v13);
  v8 = v19;
  a1[4] = v18;
  a1[5] = v8;
  v9 = v21;
  a1[6] = v20;
  a1[7] = v9;
  v10 = v15;
  *a1 = v14;
  a1[1] = v10;
  result = *&v16;
  v12 = v17;
  a1[2] = v16;
  a1[3] = v12;
  return result;
}

id sub_1A2122BF0()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for ArtworkView();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [*(v0 + OBJC_IVAR____TtC13MediaControls11ArtworkView_backgroundView) setFrame_];
  v9 = [*(v0 + OBJC_IVAR____TtC13MediaControls11ArtworkView_placeholderImageView) setFrame_];
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))(v9, v2, v4, v6, v8);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*((*v10 & *v0) + 0x88))(v20, [*(v0 + OBJC_IVAR____TtC13MediaControls11ArtworkView_imageView) setFrame_]);
  sub_1A211C464(v20);
  return [*(v0 + OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView) setFrame_];
}

CGFloat sub_1A2122D94(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA0))();
  v10 = v9;

  if (v10)
  {
    [v10 size];
    v12 = v11;
    v14 = v13;

    if (!sub_1A2122F70(v12, v14))
    {
      v30.origin.x = a1;
      v30.origin.y = a2;
      v30.size.width = a3;
      v30.size.height = a4;
      CGRectGetWidth(v30);
      v31.origin.x = a1;
      v31.origin.y = a2;
      v31.size.width = a3;
      v31.size.height = a4;
      CGRectGetHeight(v31);
      sub_1A22E6BF8();
      v18 = v24;
      v23 = v25;
      v19 = a1;
      v20 = a2;
      v21 = a3;
      v22 = a4;
LABEL_14:
      sub_1A2128200(v19, v20, v21, v22, 0.0, 0.0, v18, v23);
      return v26;
    }
  }

  if (!sub_1A2122F70(a3, a4))
  {
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = a4;
    Width = CGRectGetWidth(v28);
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    Height = CGRectGetHeight(v29);
    if ((*&Height & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v17 = Width;
    }

    else
    {
      v17 = Height;
    }

    if ((~*&Height & 0x7FF0000000000000) != 0)
    {
      v17 = Height;
    }

    if (Width > Height)
    {
      v18 = v17;
    }

    else
    {
      v18 = Width;
    }

    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = v18;
    goto LABEL_14;
  }

  return a1;
}

uint64_t sub_1A2122FA4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089F60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  sub_1A2123210(&v24 - v6);
  v8 = sub_1A22D5034();
  sub_1A22E6348();

  v9 = *sub_1A221CF04();
  v10 = *(sub_1A212397C() + 16);

  v11 = v9 * v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v11;
  if (a1)
  {
    v13 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xF8);
    v14 = v2;
    if (v13())
    {
      v16 = v15;
      ObjectType = swift_getObjectType();
      sub_1A22CD1DC(sub_1A22D8324, v12, ObjectType, v16);
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  else
  {
    v18 = v2;
  }

  v19 = *(v2 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_layoutConstraints);
  if (v19)
  {
    v20 = *(*v19 + 248);

    v22 = v20(v21);

    [v22 setConstant_];
  }

LABEL_7:

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A21231D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2123210@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089F60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v34 = v30 - v9;
  sub_1A22E62E8();
  sub_1A22E62B8();
  v10 = sub_1A212397C();
  v11 = *(v10 + 16);
  if (v11)
  {
    v30[2] = v1;
    v31 = v8;
    v32 = v7;
    v33 = a1;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1A210E5F8(0, v11, 0);
    v12 = v35;
    v13 = *(v4 + 80);
    v30[1] = v10;
    v14 = v10 + ((v13 + 32) & ~v13);
    v15 = *(v4 + 72);
    do
    {
      sub_1A2123C78(v14, v6);
      v16 = *v6;
      v17 = v6[1];

      sub_1A2123CDC(v6);
      v35 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1A210E5F8((v18 > 1), v19 + 1, 1);
        v12 = v35;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v14 += v15;
      --v11;
    }

    while (v11);

    v7 = v32;
    v8 = v31;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v35 = 0;
  LOBYTE(v36) = 1;
  sub_1A22E62A8();
  v21 = sub_1A22D5034();
  v22 = v34;
  sub_1A22E6358();

  v23 = sub_1A22E62C8();
  v24 = sub_1A210E724(v23);

  v25 = sub_1A2123578(v12, v24);

  v26 = *(v25 + 16);
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = sub_1A21238F8(*(v25 + 16), 0);
  v28 = sub_1A2124F34(&v35, v27 + 4, v26, v25);
  sub_1A212508C();
  if (v28 != v26)
  {
    __break(1u);
LABEL_11:
  }

  sub_1A22E62D8();

  return (*(v8 + 8))(v22, v7);
}

uint64_t sub_1A2123578(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1A2123718(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1A22D80A4(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x1A58DCD00](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_1A2123718(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_1A22E72A8();

          sub_1A22E6658();
          v13 = sub_1A22E72F8();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_1A22E71E8() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_1A2124D10(v25, a2, v24, a4);
}

void *sub_1A21238F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088780);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1A212397C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = v2;
  v6 = (*((*v1 & *v0) + 0xA8))();

  if ((v6 & 0x100) != 0)
  {
    v12 = v5;
    sub_1A22D6F1C(v4);
  }

  else
  {
    if (!*(v4 + 16))
    {

      return v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089F90);
    v7 = *(type metadata accessor for RoutePickerItemView.ViewModel(0) - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1A2308E80;
    v10 = sub_1A226B594();
    sub_1A2123C78(v10, v9 + v8);
    v12 = v5;
    sub_1A22D6F1C(v9);
  }

  return v12;
}

uint64_t sub_1A2123B18()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_viewModel);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2124CD0(*v1);
  return v2;
}

uint64_t sub_1A2123B74(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_viewModel;
  swift_beginAccess();
  sub_1A2123D38(v1 + v6, v5);
  swift_beginAccess();
  sub_1A2123DA8(a1, v1 + v6);
  swift_endAccess();
  sub_1A2123E18(v5);
  sub_1A210D9B0(a1, &qword_1EB088838);
  return sub_1A210D9B0(v5, &qword_1EB088838);
}

uint64_t sub_1A2123C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2123CDC(uint64_t a1)
{
  v2 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2123D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2123DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A2123E18(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088848);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView);
  v18 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_viewModel;
  swift_beginAccess();
  sub_1A2123D38(v2 + v18, v16);
  (*((*MEMORY[0x1E69E7D40] & *v17) + 0xB8))(v16);
  v19 = *(v8 + 56);
  sub_1A2123D38(v2 + v18, v10);
  sub_1A2123D38(v22, &v10[v19]);
  v20 = *(v4 + 48);
  if (v20(v10, 1, v3) == 1)
  {
    if (v20(&v10[v19], 1, v3) == 1)
    {
      sub_1A210D9B0(v10, &qword_1EB088838);
      return;
    }

    goto LABEL_6;
  }

  sub_1A2123D38(v10, v14);
  if (v20(&v10[v19], 1, v3) == 1)
  {
    sub_1A2123CDC(v14);
LABEL_6:
    sub_1A210D9B0(v10, &qword_1EB088848);
LABEL_7:
    sub_1A2124900();
    return;
  }

  sub_1A21245E0(&v10[v19], v6);
  sub_1A212684C();
  v21 = sub_1A22E6568();
  sub_1A2123CDC(v6);
  sub_1A2123CDC(v14);
  sub_1A210D9B0(v10, &qword_1EB088838);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void *sub_1A2124134()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_1A2124178()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_state);
  swift_beginAccess();
  v2 = *v1;
  if (v1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

uint64_t type metadata accessor for RoutePickerItemCell()
{
  result = qword_1ED952D10;
  if (!qword_1ED952D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1A2124238@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls20RoutePickerItemsView_metrics;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1A21242A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2124354(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_viewModel;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v6, v5, &qword_1EB088838);
  swift_beginAccess();
  sub_1A2123DA8(a1, v1 + v6);
  swift_endAccess();
  sub_1A2124644(v5);
  sub_1A210D9B0(a1, &qword_1EB088838);
  return sub_1A210D9B0(v5, &qword_1EB088838);
}

id sub_1A2124460(char a1, id a2)
{
  v3 = a2;
  LOBYTE(v4) = a1;
  v5 = [a2 userInterfaceStyle];
  v6 = 56;
  if (v5 == 2)
  {
    v6 = 64;
  }

  v7 = *&v2[v6];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = qword_1A2310FB8[v4];
  v2 = v7;
  result = [v2 _visualStylingForStyle_];
  if (result)
  {
    v4 = result;
    v3 = [result color];

    if (v3)
    {
LABEL_17:

      return v3;
    }

    __break(1u);
LABEL_7:
    (*(*v2 + 104))(&v12);
    if (v4 <= 1u)
    {
      if (v4)
      {
        v10 = v13;
      }

      else
      {
        v10 = v12;
      }
    }

    else if (v4 == 2)
    {
      v10 = v14;
    }

    else if (v4 == 3)
    {
      v10 = v15;
    }

    else
    {
      v10 = v16;
    }

    v11 = v12;
    v2 = v10;

    v3 = [v2 resolvedColorWithTraitCollection_];
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A21245E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2124644(uint64_t a1)
{
  v18 = a1;
  v2 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088848);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_viewModel;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1A2214CF8(v1 + v13, v12, &qword_1EB088838);
  sub_1A2214CF8(v18, &v12[v14], &qword_1EB088838);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_1A210D9B0(v12, &qword_1EB088838);
    }

    goto LABEL_6;
  }

  sub_1A2214CF8(v12, v8, &qword_1EB088838);
  if (v15(&v12[v14], 1, v2) == 1)
  {
    sub_1A2123CDC(v8);
LABEL_6:
    sub_1A210D9B0(v12, &qword_1EB088848);
LABEL_7:
    sub_1A226D5B8();
    return sub_1A226ECC0();
  }

  sub_1A21245E0(&v12[v14], v5);
  v17 = sub_1A2125B80(v8, v5);
  sub_1A2123CDC(v5);
  sub_1A2123CDC(v8);
  result = sub_1A210D9B0(v12, &qword_1EB088838);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1A2124900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - v6;
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  (v8)(v5);
  v9 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9))
  {
    sub_1A210D9B0(v7, &qword_1EB088838);
    v11 = 0;
  }

  else
  {

    sub_1A210D9B0(v7, &qword_1EB088838);
    v11 = sub_1A22E6598();
  }

  [v0 setAccessibilityLabel_];

  v8();
  if (v10(v4, 1, v9))
  {
    sub_1A210D9B0(v4, &qword_1EB088838);
    v12 = 0;
  }

  else
  {

    sub_1A210D9B0(v4, &qword_1EB088838);
    v12 = sub_1A22E6598();
  }

  [v0 setAccessibilityIdentifier_];
}

uint64_t sub_1A2124B40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_viewModel;
  swift_beginAccess();
  return sub_1A2123D38(v1 + v3, a1);
}

id sub_1A2124B9C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v12 = v1[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v12;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;

  return v12;
}

uint64_t sub_1A2124C28()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls29RoutePickerItemBackgroundView_state);
  swift_beginAccess();
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return v2 | (v1[1] << 8) | *v1;
}

void *sub_1A2124C8C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1A2124CD0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A2124D10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0899B0);
  result = sub_1A22E6E68();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1A22E72A8();

    sub_1A22E6658();
    result = sub_1A22E72F8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1A2124F34(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1A21250A0(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 41);
  v5 = *(*a1 + 42);
  v6 = *(*a1 + 43);
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  v12 = v3 == v7 && v4 == v8 && v5 == v9;
  if (!v12 || ((v6 ^ v10) & 1) != 0)
  {
    sub_1A226EA4C();
    sub_1A226ECC0();
  }

  free(v1);
}

void (*sub_1A2125130(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemView_state;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 1);
  v8 = *(v6 + 3);
  *(v4 + 40) = *v6;
  v4 += 40;
  *(v4 + 1) = v7;
  *(v4 + 3) = v8;
  return sub_1A21250A0;
}

uint64_t sub_1A21251D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2125248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A212530C(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *&v2[OBJC_IVAR____TtC13MediaControls11PackageView_stateController];
  if (!v6 || !*&v2[OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer])
  {
    return;
  }

  v35 = *&v2[OBJC_IVAR____TtC13MediaControls11PackageView_stateController];
  v36 = *&v2[OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer];
  v7 = *(a1 + 8);
  v8 = v6;
  v9 = v36;
  if (v7)
  {
    v7 = sub_1A22E6598();
  }

  v10 = [v36 stateWithName_];

  if (!v10)
  {

    v16 = v36;
    goto LABEL_10;
  }

  v11 = v36;
  v12 = [v35 stateOfLayer_];
  if (v12)
  {
    v13 = v12;
    sub_1A2115288(0, &qword_1ED94E970);
    v14 = v10;
    v15 = sub_1A22E6C88();

    if (v15)
    {

      v16 = v35;
LABEL_10:

      return;
    }
  }

  else
  {
    v17 = v10;
  }

  if (qword_1ED951250 != -1)
  {
    swift_once();
  }

  v18 = sub_1A22E6248();
  __swift_project_value_buffer(v18, qword_1ED951258);
  sub_1A21174DC(a1, v43);
  v19 = v3;
  v20 = sub_1A22E6238();
  v21 = sub_1A22E6A98();
  sub_1A2117514(a1);

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v22 = 136315650;
    v23 = sub_1A22E7388();
    v25 = sub_1A2103450(v23, v24, &v38);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = sub_1A21268F4();
    v28 = sub_1A2103450(v26, v27, &v38);

    *(v22 + 14) = v28;
    *(v22 + 22) = 2080;
    (*((*MEMORY[0x1E69E7D40] & *v19) + 0x90))(v39, v29);
    if (*(&v40 + 1))
    {
      v43[2] = v39[2];
      v43[3] = v40;
      v43[4] = v41;
      v43[5] = v42;
      v43[0] = v39[0];
      v43[1] = v39[1];
      v30 = sub_1A2126A68();
      v32 = v31;
      sub_1A210D9B0(v39, &qword_1EB088B18);
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = sub_1A2103450(v30, v32, &v38);

    *(v22 + 24) = v33;
    _os_log_impl(&dword_1A20FC000, v20, v21, "[%s] Setting a new state: %s for asset: %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v37, -1, -1);
    MEMORY[0x1A58DCD00](v22, -1, -1);
  }

  v34 = 0.0;
  if (a2)
  {
    *&v34 = 1.0;
  }

  [v35 setState:v10 ofLayer:v11 transitionSpeed:v34];
}

uint64_t sub_1A212571C(float a1)
{
  v2 = sub_1A22E5678();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0893D0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v24 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v24 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v24 - v13);
  if (a1 <= 0.0)
  {
    sub_1A22E6578();
    v15 = 0xE400000000000000;
    v16 = 1702131053;
  }

  else if (a1 >= 0.33)
  {
    if (a1 >= 0.66)
    {
      if (a1 >= 1.0)
      {
        sub_1A22E6578();
        v15 = 0xE300000000000000;
        v16 = 7889261;
      }

      else
      {
        v15 = 0xE400000000000000;
        sub_1A22E6578();
        v16 = 1819047270;
      }
    }

    else
    {
      sub_1A22E6578();
      v15 = 0xE400000000000000;
      v16 = 1718378856;
    }
  }

  else
  {
    v15 = 0xE300000000000000;
    sub_1A22E6578();
    v16 = 7235949;
  }

  v17 = *(v3 + 48);
  *v14 = v16;
  v14[1] = v15;
  v18 = sub_1A22E6588();
  v19 = *(v18 - 8);
  (*(v19 + 32))(v14 + v17, &v12[v17], v18);
  sub_1A2214CF8(v14, v9, &qword_1EB0893D0);
  v20 = *v9;
  v24[1] = *(v9 + 1);
  v25 = v20;
  v21 = *(v3 + 48);
  sub_1A2214CF8(v14, v6, &qword_1EB0893D0);

  v22 = *sub_1A21268A4();
  sub_1A22E5668();
  sub_1A22E6628();
  sub_1A210D9B0(v14, &qword_1EB0893D0);
  (*(v19 + 8))(&v9[v21], v18);
  return v25;
}

uint64_t sub_1A2125AB8@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v3 = sub_1A212571C(a2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = sub_1A22E7348();
  v12 = v11;

  *a1 = 3;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  *(a1 + 40) = 0;
  *(a1 + 41) = 256;
  *(a1 + 43) = 1;
  *(a1 + 48) = v7;
  *(a1 + 56) = v9;
  *(a1 + 64) = 0x656D756C6F56;
  *(a1 + 72) = 0xE600000000000000;
  *(a1 + 80) = nullsub_1;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_1A2125B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A22E5D98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F70);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1A22E71E8() & 1) == 0)
  {
    goto LABEL_21;
  }

  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  if (v14)
  {
    if (!v15 || (*(a1 + 16) != *(a2 + 16) || v14 != v15) && (sub_1A22E71E8() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v15)
  {
    goto LABEL_21;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1A22E71E8() & 1) == 0)
  {
    goto LABEL_21;
  }

  v16 = *(a1 + 80);
  v17 = *(a2 + 80);
  v18 = v17 & 0xFF00;
  if ((v16 & 0xFF00) == 0x200)
  {
    if (v18 != 512)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v18 == 512)
  {
    goto LABEL_21;
  }

  v23 = *(a1 + 72);
  v24 = *(a2 + 64);
  v25 = *(a2 + 72);
  if (*(a1 + 64) == 0xFF)
  {
    if (v24 != 0xFF)
    {
      goto LABEL_21;
    }
  }

  else if (v24 == 0xFF || !sub_1A226F6F0(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a2 + 48), *(a2 + 56), v24))
  {
    goto LABEL_21;
  }

  v21 = 0;
  if (v16)
  {
    if ((v17 & 1) == 0)
    {
      return v21 & 1;
    }

    goto LABEL_41;
  }

  if ((v17 & 1) == 0 && v23 == v25)
  {
LABEL_41:
    if (((v16 ^ v17) >> 8))
    {
      return v21 & 1;
    }

LABEL_16:
    v19 = *(a1 + 82);
    v20 = *(a2 + 82);
    if (v19 == 2)
    {
      if (v20 != 2)
      {
        goto LABEL_21;
      }
    }

    else if (v19 == 3)
    {
      if (v20 != 3)
      {
        goto LABEL_21;
      }
    }

    else if (v20 & 0xFE) == 2 || ((v20 ^ v19))
    {
      goto LABEL_21;
    }

    if (*(a1 + 83) == *(a2 + 83))
    {
      v26 = *(a2 + 88);
      if (*(a1 + 88))
      {
        if (!*(a2 + 88))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (*(a1 + 84) != *(a2 + 84))
        {
          v26 = 1;
        }

        if (v26)
        {
          goto LABEL_21;
        }
      }

      v33 = type metadata accessor for RoutePickerItemView.ViewModel(0);
      v27 = *(v33 + 44);
      v28 = *(v11 + 48);
      sub_1A2214CF8(a1 + v27, v13, &qword_1EB088BE8);
      sub_1A2214CF8(a2 + v27, &v13[v28], &qword_1EB088BE8);
      v29 = *(v5 + 48);
      if (v29(v13, 1, v4) == 1)
      {
        if (v29(&v13[v28], 1, v4) == 1)
        {
          sub_1A210D9B0(v13, &qword_1EB088BE8);
LABEL_53:
          v21 = sub_1A226C528(*(a1 + *(v33 + 48)), *(a2 + *(v33 + 48)));
          return v21 & 1;
        }

        goto LABEL_51;
      }

      sub_1A2214CF8(v13, v10, &qword_1EB088BE8);
      if (v29(&v13[v28], 1, v4) == 1)
      {
        (*(v5 + 8))(v10, v4);
LABEL_51:
        sub_1A210D9B0(v13, &qword_1EB088F70);
        goto LABEL_21;
      }

      (*(v5 + 32))(v7, &v13[v28], v4);
      sub_1A226F8A0(&qword_1ED9506F0, MEMORY[0x1E69AE690]);
      v30 = sub_1A22E6568();
      v31 = *(v5 + 8);
      v31(v7, v4);
      v31(v10, v4);
      sub_1A210D9B0(v13, &qword_1EB088BE8);
      if (v30)
      {
        goto LABEL_53;
      }
    }

LABEL_21:
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1A2126078(uint64_t a1)
{
  v2 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A21260D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_viewModel;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v6, v5, &qword_1EB088820);
  swift_beginAccess();
  sub_1A212AC04(a1, v1 + v6);
  swift_endAccess();
  sub_1A2117FEC(v5);
  sub_1A210D9B0(a1, &qword_1EB088820);
  return sub_1A210D9B0(v5, &qword_1EB088820);
}

uint64_t sub_1A21261E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x130);
  v10 = (v9)(v5);
  if (sub_1A229DADC(v10) && (v11 = (*((*v8 & *v0) + 0xE8))()) != 0)
  {
    (*(*v11 + 256))(v11);

    v12 = &v7[*(v27 + 40)];
    v13 = *v12;
    v14 = v12[1];
    sub_1A2124CD0(*v12);
    sub_1A2126078(v7);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v13;
  v15[4] = v14;
  sub_1A2124CD0(v13);
  v16 = v0;
  v17 = v9();
  if (!sub_1A229DADC(v17))
  {
    goto LABEL_12;
  }

  (*((*MEMORY[0x1E69E7D40] & **(v16 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView)) + 0x100))();
  v18 = v27;
  if ((*(v26 + 48))(v3, 1, v27))
  {
    v19 = 2;
  }

  else
  {
    v19 = v3[*(v18 + 44)];
  }

  v20 = sub_1A221B938(v3);
  v21 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0xE8))(v20);
  if (v21)
  {
    (*(*v21 + 256))(v21);

    v22 = v7[*(v18 + 44)];
    sub_1A2126078(v7);
    if (v19 != 2 && ((v22 ^ v19) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v19 == 2)
  {
LABEL_12:
    sub_1A22194A8(v16, v13, v14);

    return sub_1A211BC80(v13);
  }

  sub_1A211BC80(v13);
  sub_1A220C0E8();
  sub_1A229C070(v28);
  v24 = swift_allocObject();
  v24[2] = sub_1A221B92C;
  v24[3] = v15;
  v24[4] = v16;
  v25 = v16;

  sub_1A21179EC(v28, sub_1A2215434, v24, 0, 0);

  return sub_1A2116928(v28);
}

uint64_t sub_1A2126610()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A212665C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A212669C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A2123C78(v13, v10);
        sub_1A2123C78(v14, v7);
        sub_1A212A328(&qword_1ED94F650);
        v16 = sub_1A22E6568();
        sub_1A2123CDC(v7);
        sub_1A2123CDC(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_1A212684C()
{
  result = qword_1ED94F650;
  if (!qword_1ED94F650)
  {
    type metadata accessor for RoutePickerItemView.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94F650);
  }

  return result;
}

uint64_t *sub_1A21268A4()
{
  if (qword_1ED950D50 != -1)
  {
    swift_once();
  }

  return &qword_1ED952E10;
}

uint64_t sub_1A21268F4()
{
  if (*(v0 + 56))
  {
    sub_1A22E6E88();

    v7 = 0x74616D6F7475615BLL;
    if (*(v0 + 8))
    {
      v1 = *v0;
      v2 = *(v0 + 8);
    }

    else
    {
      v1 = 7104878;
      v2 = 0xE300000000000000;
    }

    MEMORY[0x1A58DA8D0](v1, v2);

    MEMORY[0x1A58DA8D0](0x496574617473202CLL, 0xED00003A7865646ELL);
    v5 = sub_1A22E71D8();
    MEMORY[0x1A58DA8D0](v5);
  }

  else
  {
    v7 = 0x3A6C61756E616D5BLL;
    if (*(v0 + 8))
    {
      v3 = *v0;
      v4 = *(v0 + 8);
    }

    else
    {
      v3 = 7104878;
      v4 = 0xE300000000000000;
    }

    MEMORY[0x1A58DA8D0](v3, v4);
  }

  MEMORY[0x1A58DA8D0](93, 0xE100000000000000);
  return v7;
}

uint64_t sub_1A2126A68()
{
  sub_1A22E6E88();
  MEMORY[0x1A58DA8D0](0x203A656C6946, 0xE600000000000000);
  v1 = 0x656D756C6F56;
  v2 = *v0;
  v3 = 0xE800000000000000;
  if (v2 == 3)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v1 = 0x657469726F766146;
  }

  if (v2 == 2)
  {
    v1 = 1885956947;
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0xED0000706F745365;
  v6 = 0x7375615079616C50;
  if (*v0)
  {
    v6 = 0x4264726177726F46;
    v5 = 0xEF647261776B6361;
  }

  if (*v0 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v1;
  }

  if (*v0 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1A58DA8D0](v7, v8);

  MEMORY[0x1A58DA8D0](0x3A6574617473202CLL, 0xE900000000000020);
  sub_1A22E6FC8();
  MEMORY[0x1A58DA8D0](0x70696C467369202CLL, 0xEC0000003A646570);
  if (v0[41])
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v0[41])
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1A58DA8D0](v9, v10);

  MEMORY[0x1A58DA8D0](0x62616C207861202CLL, 0xEC000000203A6C65);
  MEMORY[0x1A58DA8D0](*(v0 + 6), *(v0 + 7));
  return 0;
}

uint64_t sub_1A2126C80()
{
  v3 = *v0;

  MEMORY[0x1A58DA8D0](58, 0xE100000000000000);
  v1 = sub_1A22E7328();
  MEMORY[0x1A58DA8D0](v1);

  return v3;
}

double sub_1A2126CF0@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A230E810;
  *(a1 + 16) = 36;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 3;
  return result;
}

void *sub_1A2126D1C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *sub_1A2126D60()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *sub_1A2126DA4()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *sub_1A2126DE8()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void *sub_1A2126E2C()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t sub_1A2126E70(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A22E6DE8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A22E6DE8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A2126F98(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A2127038(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A2126F98(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1A22E6DE8();
LABEL_9:
  result = sub_1A22E6EC8();
  *v1 = result;
  return result;
}

uint64_t sub_1A2127038(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A22E6DE8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A22E6DE8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A22E120C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB08A130);
            v9 = sub_1A22E1150(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A21271B8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A21271B8()
{
  result = qword_1ED94EA28;
  if (!qword_1ED94EA28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94EA28);
  }

  return result;
}

uint64_t sub_1A2127204()
{
  sub_1A2127B2C();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

void *sub_1A2127238(void *a1)
{
  v2 = a1;

  return a1;
}

uint64_t sub_1A2127274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1A21272C0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

void sub_1A2127318(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_1A2127360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1A21273AC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);
  v4 = *a1;
  return v3(v2);
}

void sub_1A2127404(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

id sub_1A2127458()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13MediaControls6Slider_configuration) minimumValueView];

  return v1;
}

id sub_1A2127498()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13MediaControls6Slider_configuration) maximumValueView];

  return v1;
}

void sub_1A21274F4(id a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls11PackageView_glyphTintColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      sub_1A2115288(0, &qword_1ED94E968);
      a1 = a1;
      v5 = v4;
      v6 = sub_1A22E6C88();

      if (v6)
      {

        v4 = v5;
LABEL_9:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    sub_1A2127B8C();

    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

id sub_1A21275D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a2 compatibleWithTraitCollection:a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A230A140;
  v12 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891F8);
  *(inited + 40) = a3;
  v14 = *MEMORY[0x1E69DB8B0];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089200);
  *(inited + 80) = a5;
  v15 = v10;
  v16 = v12;

  v17 = v14;

  sub_1A2127868(inited, &qword_1EB089300, &unk_1A230C6C0, &qword_1EB089208);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089208);
  swift_arrayDestroy();
  type metadata accessor for AttributeName(0);
  sub_1A2127994(&qword_1ED94E9A0, type metadata accessor for AttributeName);
  v18 = sub_1A22E64B8();

  v19 = [v15 fontDescriptorByAddingAttributes_];

  if ((a4 & 0x100000000) == 0)
  {
    v20 = [v19 fontDescriptorWithSymbolicTraits_];
    if (v20)
    {
      v21 = v20;

      v19 = v21;
    }
  }

  [v19 pointSize];
  v23 = [objc_opt_self() fontWithDescriptor:v19 size:v22 * a6];

  return v23;
}

unint64_t sub_1A2127868(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1A22E7078();
    v8 = a1 + 32;

    while (1)
    {
      sub_1A2214CF8(v8, &v15, a4);
      v9 = v15;
      result = sub_1A210E184(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_1A210E174(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A2127994(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A21279E4()
{
  sub_1A22E65C8();
  sub_1A22E72A8();
  sub_1A22E6658();
  v0 = sub_1A22E72F8();

  return v0;
}

uint64_t sub_1A2127A60()
{
  v0 = sub_1A22E65C8();
  v2 = v1;
  if (v0 == sub_1A22E65C8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A22E71E8();
  }

  return v5 & 1;
}

void *sub_1A2127AE8()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_1A2127B8C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  if (v1)
  {
    v2 = v1;
    if (*(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer))
    {
      v3 = [v0 traitCollection];
      v4 = [v2 resolvedColorWithTraitCollection_];

      v5 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
      v6 = sub_1A22E6998();
      [v5 setValue:v6 forKeyPath:*MEMORY[0x1E69799C8]];

      v7 = sub_1A22E6998();
      [v5 setValue:v7 forKeyPath:*MEMORY[0x1E6979990]];

      v8 = [v4 CGColor];
      [v5 setValue:v8 forKeyPath:*MEMORY[0x1E6979AA0]];

      v9 = [*(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_contentView) layer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088918);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1A2308E80;
      *(v10 + 56) = sub_1A2115288(0, &qword_1ED94E958);
      *(v10 + 32) = v5;
      v11 = v5;
      v12 = sub_1A22E6738();

      [v9 setFilters_];

      goto LABEL_6;
    }
  }

  v12 = [*(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_contentView) layer];
  [v12 setFilters_];
LABEL_6:
}

void *sub_1A2127E28()
{
  v1 = OBJC_IVAR____TtC13MediaControls11PackageView_glyphTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1A2127E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1A2127F6C()
{
  v32.receiver = v0;
  v32.super_class = type metadata accessor for MediaControlsModuleRouteButton();
  objc_msgSendSuper2(&v32, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_imageView];
  [v9 sizeThatFits_];
  sub_1A2128200(v2, v4, v6, v8, 0.0, 0.0, v10, v11);
  [v9 setFrame_];
  v12 = UIEdgeInsetsInsetRect_0(v2);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *&v0[OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_label];
  [v19 sizeThatFits_];
  v21 = v20;
  v23 = v22;
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = v12;
  v39.origin.y = v14;
  v39.size.width = v16;
  v39.size.height = v18;
  Width = CGRectGetWidth(v39);
  v26 = Width;
  if (Width > v21)
  {
    if ((*&v21 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      Width = v21;
    }

    if ((~*&v21 & 0x7FF0000000000000) != 0)
    {
      v26 = v21;
    }

    else
    {
      v26 = Width;
    }
  }

  sub_1A210F570(v12, v14, v16, v18, MinX, 0.0, v26, v23);
  [v0 bounds];
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = 0;
  sub_1A22E6BA8();
  return [v19 setFrame_];
}

double sub_1A2128180(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  Height = CGRectGetHeight(v13);
  if ((*&Height & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v10 = Width;
  }

  else
  {
    v10 = Height;
  }

  if ((~*&Height & 0x7FF0000000000000) != 0)
  {
    v10 = Height;
  }

  if (Width > Height)
  {
    v11 = v10;
  }

  else
  {
    v11 = Width;
  }

  return v11 * 0.5;
}

uint64_t sub_1A2128228()
{
  v1 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleRouteButton_showLabel;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A212826C(uint64_t a1)
{
  v2 = v1;
  v38 = *v1;
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionArtworkPresentationModel();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v14 = v2 + OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model;
  swift_beginAccess();
  sub_1A210B6BC(v14, v13);
  v15 = sub_1A210B890();
  sub_1A2129CA8(v13);
  result = sub_1A210B890();
  if (v15)
  {
    v40 = v15;
    if (result)
    {
      v39 = result;
      sub_1A22E5948();
      sub_1A22A10DC(&qword_1ED950760, MEMORY[0x1E69AE598]);
      v17 = sub_1A22E6568();

      if ((v17 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_6:
      if (*(v14 + *(v8 + 24)) == *(a1 + *(v8 + 24)) && *(v14 + *(v8 + 20)) == *(a1 + *(v8 + 20)))
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if (!result)
  {
    goto LABEL_6;
  }

LABEL_10:
  v37 = v11;
  v18 = sub_1A22987F8();
  (*(v5 + 16))(v7, v18, v4);

  v19 = sub_1A22E6238();
  v20 = sub_1A22E6A98();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v40 = v23;
    *v22 = 136315650;
    v24 = sub_1A22E7388();
    v26 = sub_1A2103450(v24, v25, &v40);
    v38 = v4;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1A2103450(v2[6], v2[7], &v40);
    *(v22 + 22) = 2080;
    v28 = v14;
    v29 = v37;
    sub_1A210B6BC(v28, v37);
    sub_1A22A10DC(&qword_1ED94EC58, type metadata accessor for SessionArtworkPresentationModel);
    v30 = sub_1A22E71D8();
    v32 = v31;
    sub_1A2129CA8(v29);
    v33 = sub_1A2103450(v30, v32, &v40);

    *(v22 + 24) = v33;
    _os_log_impl(&dword_1A20FC000, v19, v20, "[%s]<%s> Did update model: %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v23, -1, -1);
    MEMORY[0x1A58DCD00](v22, -1, -1);

    (*(v5 + 8))(v7, v38);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v34 = v2[3];
  v35 = sub_1A22A10DC(&qword_1ED94F0F0, type metadata accessor for SessionArtworkController);
  return (*(*v34 + 248))(v2, v35);
}

void (*sub_1A2128710(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for WaveformController.Model(0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = OBJC_IVAR____TtC13MediaControls18WaveformController_model;
  swift_beginAccess();
  sub_1A212EEFC(v1 + v9, v8);
  return sub_1A2128808;
}

void sub_1A2128808(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1A212EEFC(v4, v3);
    sub_1A22D2270(v3);
    sub_1A2128BA8(v4);
  }

  else
  {
    sub_1A22D2270(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1A2128884()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13MediaControls18WaveformController_audioAnalyzer;
  v7 = *(v1 + OBJC_IVAR____TtC13MediaControls18WaveformController_audioAnalyzer);
  if (v7)
  {
    v8 = v7;
    sub_1A2298A64();
    v9 = v8;
    v10 = sub_1A22E6238();
    v11 = sub_1A22E6A98();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v27 = v3;
      v13 = v12;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v13 = 136315394;
      v14 = sub_1A22E7388();
      v16 = sub_1A2103450(v14, v15, &v28);
      v26 = v2;
      v17 = v16;

      *(v13 + 4) = v17;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v9;
      v18 = v24;
      *v24 = v7;
      v19 = v9;
      _os_log_impl(&dword_1A20FC000, v10, v11, "[%s] tearDownAnalyzer: %@", v13, 0x16u);
      sub_1A210D9B0(v18, &unk_1EB089E80);
      MEMORY[0x1A58DCD00](v18, -1, -1);
      v20 = v25;
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1A58DCD00](v20, -1, -1);
      MEMORY[0x1A58DCD00](v13, -1, -1);

      (*(v27 + 8))(v5, v26);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    [v9 removeObserver_];
    v21 = *(v1 + v6);
    *(v1 + v6) = 0;

    v22 = [objc_opt_self() zero];
    sub_1A22D2CF8(v22, 0);
  }
}

__n128 sub_1A2128B30@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_1A210D9B0(a2, &qword_1EB0888D0);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v4 = *(a1 + 80);
  *(a2 + 144) = *(a1 + 64);
  *(a2 + 160) = v4;
  *(a2 + 176) = *(a1 + 96);
  v5 = *(a1 + 16);
  *(a2 + 80) = *a1;
  *(a2 + 96) = v5;
  result = *(a1 + 48);
  *(a2 + 112) = *(a1 + 32);
  *(a2 + 128) = result;
  return result;
}

uint64_t sub_1A2128BA8(uint64_t a1)
{
  v2 = type metadata accessor for WaveformController.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2128C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a2;
  v71 = sub_1A22E5808();
  v63 = *(v71 - 8);
  v5 = MEMORY[0x1EEE9AC00](v71);
  v70 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v53 - v7;
  v68 = sub_1A22E58D8();
  v72 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v73 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = (&v53 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_1A22E5C88();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  v21 = v20[6];
  v22 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  (*(*(v22 - 8) + 56))(a3 + v21, 1, 1, v22);
  v23 = v20[8];
  v64 = v23;
  v24 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v24 - 8) + 56))(v23 + a3, 1, 1, v24);
  v25 = (a3 + v20[9]);
  v65 = (a3 + v20[10]);
  *a3 = sub_1A22E59B8();
  a3[1] = v26;
  v58 = v17;
  v27 = *(v17 + 16);
  v27(v19, a1, v16);
  sub_1A2214CF8(v60, v15, &qword_1EB089540);
  sub_1A2286874(v19, v15, (a3 + v20[5]));
  v27(v19, a1, v16);
  v28 = v66;
  sub_1A212E554(v19, v66);
  sub_1A212E4EC(v28, a3 + v21, &qword_1EB088BD8);
  v27(v19, a1, v16);
  v57 = v20;
  v29 = sub_1A212BB54(v19, (a3 + v20[7]));
  (v27)(v19, a1, v16, v29);
  v30 = v73;
  sub_1A212B5D4(v19, v73);
  sub_1A212E4EC(v30, v64 + a3, &qword_1EB088828);
  v27(v19, a1, v16);
  *v25 = sub_1A2287B1C(v19);
  v25[1] = v31;
  v25[2] = v32;
  v25[3] = v33;
  v59 = v16;
  v27(v19, a1, v16);
  v34 = sub_1A2129284(v19);
  v35 = v65;
  *v65 = v34;
  v35[1] = v36;
  v37 = sub_1A22E5BA8();
  v38 = *(v37 + 16);
  if (v38)
  {
    v54 = a1;
    v55 = a3;
    v39 = 0;
    v66 = *(v72 + 16);
    v40 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v56 = v37;
    v41 = v37 + v40;
    v61 = *(v72 + 72);
    LODWORD(v65) = *MEMORY[0x1E69AE540];
    v42 = v63++;
    v64 = (v42 + 13);
    v72 += 16;
    v62 = (v72 - 8);
    v43 = v68;
    while (1)
    {
      v44 = v67;
      (v66)(v67, v41, v43);
      v45 = v69;
      sub_1A22E5818();
      v46 = v70;
      v47 = v71;
      (*v64)(v70, v65, v71);
      v73 = sub_1A22E57F8();
      v48 = *v63;
      (*v63)(v46, v47);
      v48(v45, v47);
      result = (*v62)(v44, v43);
      v50 = __OFADD__(v39, v73 & 1);
      v39 += v73 & 1;
      if (v50)
      {
        break;
      }

      v41 += v61;
      if (!--v38)
      {

        v51 = v39 > 1;
        a1 = v54;
        a3 = v55;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

    v51 = 0;
LABEL_7:
    v52 = v57[11];
    sub_1A210D9B0(v60, &qword_1EB089540);
    result = (*(v58 + 8))(a1, v59);
    *(a3 + v52) = v51;
  }

  return result;
}

char *sub_1A2129284(uint64_t a1)
{
  v50 = sub_1A22E58D8();
  v2 = *(v50 - 8);
  v3 = MEMORY[0x1EEE9AC00](v50);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - v5;
  v7 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v51 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = sub_1A22E5B58();
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v46 = a1;
  if (v14)
  {
    v45 = v10;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1A2129B8C(0, v14, 0);
    v16 = v53;
    v49 = v2[2];
    v17 = *(v2 + 80);
    v44 = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v19 = v2[9];
    v47 = v2;
    v48 = v19;
    v20 = v2 + 1;
    v21 = v49;
    do
    {
      v22 = v50;
      (v21)(v6, v18, v50);
      v23 = v52;
      (v21)(v52, v6, v22);
      sub_1A22C32E8(v23, v12);
      (*v20)(v6, v22);
      v53 = v16;
      v25 = *(v16 + 2);
      v24 = *(v16 + 3);
      v26 = v16;
      if (v25 >= v24 >> 1)
      {
        sub_1A2129B8C(v24 > 1, v25 + 1, 1);
        v26 = v53;
      }

      *(v26 + 2) = v25 + 1;
      sub_1A2129A98(v12, &v26[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v25], type metadata accessor for RoutePickerItemView.ViewModel);
      v18 += v48;
      --v14;
      v16 = v26;
    }

    while (v14);

    a1 = v46;
    v2 = v47;
    v10 = v45;
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v28 = MEMORY[0x1A58D9DA0](v27);
  v29 = *(v28 + 16);
  if (v29)
  {
    v45 = v16;
    v53 = v15;
    sub_1A2129B8C(0, v29, 0);
    v30 = v53;
    v32 = v2[2];
    v31 = v2 + 2;
    v33 = *(v31 + 64);
    v44 = v28;
    v34 = v28 + ((v33 + 32) & ~v33);
    v48 = v31[7];
    v49 = v32;
    v47 = v31 - 1;
    v35 = v32;
    do
    {
      v36 = v50;
      (v35)(v6, v34, v50);
      v37 = v52;
      v38 = v31;
      (v35)(v52, v6, v36);
      sub_1A22C32E8(v37, v10);
      (*v47)(v6, v36);
      v53 = v30;
      v40 = *(v30 + 2);
      v39 = *(v30 + 3);
      if (v40 >= v39 >> 1)
      {
        sub_1A2129B8C(v39 > 1, v40 + 1, 1);
        v30 = v53;
      }

      *(v30 + 2) = v40 + 1;
      sub_1A2129A98(v10, &v30[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v40], type metadata accessor for RoutePickerItemView.ViewModel);
      v34 += v48;
      --v29;
      v31 = v38;
    }

    while (v29);
    v41 = sub_1A22E5C88();
    (*(*(v41 - 8) + 8))(v46, v41);

    return v45;
  }

  else
  {

    v42 = sub_1A22E5C88();
    (*(*(v42 - 8) + 8))(a1, v42);
  }

  return v16;
}

uint64_t sub_1A21297AC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1A227F610();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1A58DB0F0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1A58DB0F0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1A22E6C88();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1A22E6C88();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1A22E6DE8();
  }

  result = sub_1A22E6DE8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A21299EC()
{
  v1 = OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_isEligibleForHardwareVolumeControls;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2129A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2129A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2129B00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

size_t sub_1A2129B8C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A2231F60(a1, a2, a3, *v3, &qword_1EB089F90, &unk_1A230A130, type metadata accessor for RoutePickerItemView.ViewModel);
  *v3 = result;
  return result;
}

uint64_t sub_1A2129BD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2129C38()
{
  sub_1A212EFD8();

  return sub_1A211B958();
}

size_t sub_1A2129C88(size_t a1, int64_t a2, char a3)
{
  result = sub_1A212ED24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A2129CA8(uint64_t a1)
{
  v2 = type metadata accessor for SessionArtworkPresentationModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A2129D04()
{
  result = qword_1ED94F590;
  if (!qword_1ED94F590)
  {
    type metadata accessor for SessionAccessoryView.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94F590);
  }

  return result;
}

uint64_t sub_1A2129D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A22E5BD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB08A118);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v29 - v16;
  v18 = (v29 + *(v15 + 56) - v16);
  sub_1A212A0A0(a1, v29 - v16);
  sub_1A212A0A0(a2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1A212A0A0(v17, v11);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1A211830C(v11);
        goto LABEL_13;
      }

      v20 = v18[9];
      v29[8] = v18[8];
      v29[9] = v20;
      v21 = v18[11];
      v29[10] = v18[10];
      v29[11] = v21;
      v22 = v18[5];
      v29[4] = v18[4];
      v29[5] = v22;
      v23 = v18[7];
      v29[6] = v18[6];
      v29[7] = v23;
      v24 = v18[1];
      v29[0] = *v18;
      v29[1] = v24;
      v25 = v18[3];
      v29[2] = v18[2];
      v29[3] = v25;
      v26 = sub_1A2113050();
      sub_1A211830C(v29);
      sub_1A211830C(v11);
    }

    else
    {
      sub_1A212A0A0(v17, v13);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v5 + 8))(v13, v4);
LABEL_13:
        sub_1A210D9B0(v17, &qword_1EB08A118);
        v26 = 0;
        return v26 & 1;
      }

      (*(v5 + 32))(v7, v18, v4);
      v26 = sub_1A22E5BC8();
      v27 = *(v5 + 8);
      v27(v7, v4);
      v27(v13, v4);
    }

    sub_1A212A104(v17);
    return v26 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_1A212A104(v17);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1A212A0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A212A104(uint64_t a1)
{
  v2 = type metadata accessor for SessionAccessoryView.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A212A160(uint64_t a1, uint64_t a2)
{
  sub_1A2214CF8(a1, v8, &qword_1EB088850);
  sub_1A2214CF8(a2, v10, &qword_1EB088850);
  if (!v9)
  {
    if (!*(&v11 + 1))
    {
      sub_1A210D9B0(v8, &qword_1EB088850);
      goto LABEL_7;
    }

LABEL_11:
    sub_1A210D9B0(v8, &qword_1EB0888D8);
LABEL_12:
    v4 = 0;
    return v4 & 1;
  }

  sub_1A2214CF8(v8, v7, &qword_1EB088850);
  if (!*(&v11 + 1))
  {
    sub_1A211830C(v7);
    goto LABEL_11;
  }

  v6[8] = v10[8];
  v6[9] = v10[9];
  v6[10] = v10[10];
  v6[11] = v11;
  v6[4] = v10[4];
  v6[5] = v10[5];
  v6[6] = v10[6];
  v6[7] = v10[7];
  v6[0] = v10[0];
  v6[1] = v10[1];
  v6[2] = v10[2];
  v6[3] = v10[3];
  sub_1A2220AD4();
  v3 = sub_1A22E6568();
  sub_1A211830C(v6);
  sub_1A211830C(v7);
  sub_1A210D9B0(v8, &qword_1EB088850);
  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((sub_1A2113050() & 1) == 0 || (sub_1A2113050() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = sub_1A2113050();
  return v4 & 1;
}

uint64_t sub_1A212A328(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RoutePickerItemView.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A212A36C(void *a1, void *a2)
{
  v4 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  v70 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891D0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v65 - v9;
  v10 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BD8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0895B0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A22E71E8() & 1) == 0)
  {
    goto LABEL_32;
  }

  v67 = v4;
  v20 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  if ((sub_1A22C799C(a1 + *(v20 + 20), a2 + *(v20 + 20)) & 1) == 0)
  {
    goto LABEL_32;
  }

  v72 = a2;
  v66 = v20;
  v21 = *(v20 + 24);
  v22 = *(v17 + 48);
  v65 = a1;
  sub_1A2214CF8(a1 + v21, v19, &qword_1EB088BD8);
  v23 = v72 + v21;
  v24 = v72;
  sub_1A2214CF8(v23, &v19[v22], &qword_1EB088BD8);
  v25 = *(v11 + 48);
  if (v25(v19, 1, v10) == 1)
  {
    if (v25(&v19[v22], 1, v10) == 1)
    {
      sub_1A210D9B0(v19, &qword_1EB088BD8);
      goto LABEL_13;
    }

LABEL_10:
    v26 = &qword_1EB0895B0;
    v27 = v19;
LABEL_11:
    sub_1A210D9B0(v27, v26);
    goto LABEL_32;
  }

  sub_1A2214CF8(v19, v16, &qword_1EB088BD8);
  if (v25(&v19[v22], 1, v10) == 1)
  {
    sub_1A211BB1C(v16, type metadata accessor for NowPlayingTimeControlsView.ViewModel);
    goto LABEL_10;
  }

  sub_1A2288F28(&v19[v22], v13, type metadata accessor for NowPlayingTimeControlsView.ViewModel);
  sub_1A22893B0(&qword_1ED950688, type metadata accessor for NowPlayingTimeControlsView.ViewModel);
  v28 = sub_1A22E6568();
  sub_1A211BB1C(v13, type metadata accessor for NowPlayingTimeControlsView.ViewModel);
  sub_1A211BB1C(v16, type metadata accessor for NowPlayingTimeControlsView.ViewModel);
  sub_1A210D9B0(v19, &qword_1EB088BD8);
  if ((v28 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  v30 = v65;
  v29 = v66;
  if ((sub_1A212A2FC(v65 + v66[7], v24 + v66[7]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v31 = v29[8];
  v32 = *(v8 + 48);
  v33 = v71;
  sub_1A2214CF8(v30 + v31, v71, &qword_1EB088828);
  v34 = v72 + v31;
  v35 = v72;
  sub_1A2214CF8(v34, v33 + v32, &qword_1EB088828);
  v36 = *(v70 + 48);
  v37 = v67;
  if (v36(v33, 1, v67) == 1)
  {
    if (v36(v33 + v32, 1, v37) == 1)
    {
      sub_1A210D9B0(v33, &qword_1EB088828);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v38 = v69;
  sub_1A2214CF8(v33, v69, &qword_1EB088828);
  if (v36(v33 + v32, 1, v37) == 1)
  {
    sub_1A211BB1C(v38, type metadata accessor for NowPlayingVolumeControlsView.ViewModel);
LABEL_19:
    v26 = &qword_1EB0891D0;
    v27 = v33;
    goto LABEL_11;
  }

  v39 = v33 + v32;
  v40 = v68;
  sub_1A2288F28(v39, v68, type metadata accessor for NowPlayingVolumeControlsView.ViewModel);
  sub_1A22893B0(&qword_1EB088830, type metadata accessor for NowPlayingVolumeControlsView.ViewModel);
  v41 = sub_1A22E6568();
  sub_1A211BB1C(v40, type metadata accessor for NowPlayingVolumeControlsView.ViewModel);
  sub_1A211BB1C(v38, type metadata accessor for NowPlayingVolumeControlsView.ViewModel);
  sub_1A210D9B0(v33, &qword_1EB088828);
  if ((v41 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  v42 = v66[9];
  v43 = v30 + v42;
  v45 = *(v30 + v42);
  v44 = *(v30 + v42 + 8);
  v47 = *(v43 + 16);
  v46 = *(v43 + 24);
  v48 = (v35 + v42);
  v50 = *v48;
  v49 = v48[1];
  v51 = v48[2];
  v52 = v48[3];
  if (v44)
  {
    v77 = v45;
    v78 = v44;
    v79 = v47;
    v80 = v46;
    if (v49)
    {
      v73 = v50;
      v74 = v49;
      v75 = v51;
      v76 = v52;
      sub_1A2117FA8(v45, v44);
      sub_1A2117FA8(v45, v44);
      sub_1A2117FA8(v50, v49);
      sub_1A228935C();
      v53 = sub_1A22E6568();

      sub_1A221467C(v45, v44);
      if ((v53 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    sub_1A2117FA8(v45, v44);
LABEL_31:
    sub_1A2117FA8(v50, v49);
    sub_1A221467C(v45, v44);
    sub_1A221467C(v50, v49);
    goto LABEL_32;
  }

  if (v49)
  {
    goto LABEL_31;
  }

LABEL_26:
  v54 = v65;
  v55 = v66[10];
  v56 = v65 + v55;
  v57 = *(v65 + v55);
  v58 = (v35 + v55);
  v59 = *v58;
  if (v57)
  {
    v60 = *(v56 + 1);
    v61 = v58[1];
    v77 = v57;
    v78 = v60;
    if (!v59)
    {
      goto LABEL_32;
    }

    v73 = v59;
    v74 = v61;
    sub_1A2124CD0(v59);
    sub_1A2124CD0(v57);
    sub_1A2289308();
    v62 = sub_1A22E6568();

    if ((v62 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    v63 = *(v54 + v66[11]) ^ *(v35 + v66[11]) ^ 1;
    return v63 & 1;
  }

  if (!v59)
  {
    goto LABEL_35;
  }

LABEL_32:
  v63 = 0;
  return v63 & 1;
}

uint64_t sub_1A212AC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

size_t sub_1A212AC74(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089F90);
  v10 = *(type metadata accessor for RoutePickerItemView.ViewModel(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RoutePickerItemView.ViewModel(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A212AE4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0888F0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v52 = v51 - v5;
  v55 = sub_1A22E5C48();
  v54 = *(v55 - 8);
  v6 = MEMORY[0x1EEE9AC00](v55);
  v51[1] = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51[0] = v51 - v8;
  v9 = sub_1A22E5808();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = v51 - v13;
  v58 = sub_1A22E58D8();
  v14 = *(v58 - 8);
  v15 = MEMORY[0x1EEE9AC00](v58);
  v68 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v56 = v51 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v51 - v19;
  v57 = a1;
  result = sub_1A22E5BA8();
  v22 = *(result + 16);
  v71 = v14;
  v67 = v22;
  if (!v22)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v35 = *(v24 + 16);
    if (v35)
    {
      v36 = v56;
      (*(v14 + 16))(v56, v24 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v58);

      if (v35 == 1)
      {
        v37 = sub_1A22E5838();
        v39 = v38;
        v40 = v52;
        sub_1A22E5C68();
        v41 = v54;
        v42 = v55;
        if ((*(v54 + 48))(v40, 1, v55) != 1)
        {
          v43 = *(v41 + 32);
          v44 = &v77;
LABEL_22:
          v47 = *(v44 - 32);
          v43(v47, v40, v42);
          if (sub_1A22E5C18())
          {
            if (sub_1A22E5C08())
            {
              v75 = 0;
              v76 = 0xE000000000000000;
              v48 = sub_1A22E5C28();
              if (!v49)
              {
                v48 = sub_1A22E5C38();
              }

              MEMORY[0x1A58DA8D0](v48);
            }

            else
            {
              v75 = sub_1A22E5C38();
              v76 = v50;
            }

            MEMORY[0x1A58DA8D0](0x209286E220, 0xA500000000000000);
            MEMORY[0x1A58DA8D0](v37, v39);

            v37 = v75;
          }

          (*(v41 + 8))(v47, v42);
          (*(v71 + 8))(v36, v58);
          return v37;
        }
      }

      else
      {
        v75 = sub_1A22E5838();
        v76 = v45;
        MEMORY[0x1A58DA8D0](2108192, 0xE300000000000000);
        v74 = v35 - 1;
        v46 = sub_1A22E71D8();
        MEMORY[0x1A58DA8D0](v46);

        v37 = v75;
        v39 = v76;
        v40 = v53;
        sub_1A22E5C68();
        v41 = v54;
        v42 = v55;
        if ((*(v54 + 48))(v40, 1, v55) != 1)
        {
          v43 = *(v41 + 32);
          v44 = &v78;
          goto LABEL_22;
        }
      }

      (*(v71 + 8))(v36, v58);
      sub_1A22219E8(v40);
    }

    else
    {

      return 0;
    }

    return v37;
  }

  v23 = 0;
  v65 = v14 + 16;
  v64 = *MEMORY[0x1E69AE540];
  v62 = (v10 + 8);
  v63 = (v10 + 104);
  v59 = (v14 + 8);
  v61 = (v14 + 32);
  v24 = MEMORY[0x1E69E7CC0];
  v25 = v58;
  v60 = v9;
  v66 = result;
  while (v23 < *(result + 16))
  {
    v73 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v72 = *(v14 + 72);
    (*(v14 + 16))(v20, result + v73 + v72 * v23, v25);
    v26 = v69;
    v27 = v25;
    sub_1A22E5818();
    v28 = v70;
    (*v63)(v70, v64, v9);
    v29 = sub_1A22E57F8();
    v30 = *v62;
    (*v62)(v28, v9);
    v30(v26, v9);
    if (v29)
    {
      v31 = *v61;
      (*v61)(v68, v20, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v24;
      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = v27;
      }

      else
      {
        sub_1A2129C88(0, *(v24 + 16) + 1, 1);
        v25 = v58;
        v24 = v75;
      }

      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1A2129C88(v33 > 1, v34 + 1, 1);
        v25 = v58;
        v24 = v75;
      }

      *(v24 + 16) = v34 + 1;
      v31((v24 + v73 + v34 * v72), v68, v25);
      v14 = v71;
      v9 = v60;
    }

    else
    {
      (*v59)(v20, v27);
      v25 = v27;
      v14 = v71;
    }

    ++v23;
    result = v66;
    if (v67 == v23)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A212B5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v40 - v4;
  v5 = sub_1A22E5DD8();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_1A22E6028();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = sub_1A22E5D98();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v44 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_1A22E5C58();
  sub_1A22E5F88();
  v23 = *(v11 + 8);
  v45 = v10;
  v23(v16, v10);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_1A210D9B0(v9, &qword_1EB088BE8);
  }

  else
  {
    v24 = v43;
    v41 = *(v18 + 32);
    v41(v43, v9, v17);
    v25 = sub_1A22E5BE8();
    if ((v25 & 0x100000000) == 0)
    {
      v26 = v25;
      v27 = sub_1A22E5C88();
      (*(*(v27 - 8) + 8))(v22, v27);
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890C0) + 48);
      v29 = v44;
      v41(v44, v24, v17);
      *(v29 + v28) = v26;
LABEL_9:
      v36 = v50;
      swift_storeEnumTagMultiPayload();
      v35 = v51;
      sub_1A2288F28(v29, v51, type metadata accessor for NowPlayingVolumeControlsView.ViewModel);
      v34 = 0;
      return (*(v49 + 56))(v35, v34, 1, v36);
    }

    (*(v18 + 8))(v24, v17);
  }

  sub_1A22E5C58();
  v30 = v48;
  sub_1A22E5F98();
  v31 = sub_1A22E5C88();
  (*(*(v31 - 8) + 8))(a1, v31);
  v23(v14, v45);
  v33 = v46;
  v32 = v47;
  if ((*(v46 + 48))(v30, 1, v47) != 1)
  {
    v37 = *(v33 + 32);
    v38 = v42;
    v37(v42, v30, v32);
    v29 = v44;
    v37(v44, v38, v32);
    goto LABEL_9;
  }

  sub_1A210D9B0(v30, &qword_1EB0890B8);
  v34 = 1;
  v36 = v50;
  v35 = v51;
  return (*(v49 + 56))(v35, v34, 1, v36);
}

double sub_1A212BB54@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v317 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089550);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v295 = &v252 - v4;
  v296 = sub_1A22E5F28();
  v306 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v282 = &v252 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089558);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v264 = &v252 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v260 = &v252 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089560);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v312 = &v252 - v11;
  v305 = sub_1A22E5D08();
  v314 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305);
  v276 = &v252 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089500);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v289 = &v252 - v14;
  v15 = sub_1A22E5DF8();
  v290 = *(v15 - 8);
  v291 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v271 = &v252 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089508);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v316 = &v252 - v18;
  v298 = sub_1A22E5E58();
  v309 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v274 = &v252 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_1A22E5AA8();
  v270 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v252 = &v252 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089510);
  MEMORY[0x1EEE9AC00](v266);
  v273 = &v252 - v21;
  v22 = sub_1A22E5AC8();
  v254 = *(v22 - 8);
  v255 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v253 = &v252 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v265 = &v252 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089518);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v256 = &v252 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v268 = &v252 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v269 = &v252 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089520);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v303 = &v252 - v33;
  v34 = sub_1A22E5E38();
  v310 = *(v34 - 8);
  v311 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v287 = &v252 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089568);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v293 = &v252 - v37;
  v308 = sub_1A22E5D68();
  v302 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v272 = &v252 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089570);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v262 = &v252 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v258 = &v252 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089578);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v300 = &v252 - v44;
  v315 = sub_1A22E5D48();
  v313 = *(v315 - 8);
  MEMORY[0x1EEE9AC00](v315);
  v275 = &v252 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089580);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v278 = &v252 - v47;
  v48 = sub_1A22E5CA8();
  v280 = *(v48 - 8);
  v281 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v279 = &v252 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089588);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v283 = &v252 - v51;
  v52 = sub_1A22E5E98();
  v285 = *(v52 - 8);
  v286 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v284 = &v252 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0894F8);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = &v252 - v55;
  v57 = sub_1A22E6028();
  v58 = *(v57 - 8);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v263 = &v252 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v294 = &v252 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v259 = &v252 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v304 = &v252 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v288 = &v252 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v297 = &v252 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v301 = &v252 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v261 = &v252 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v292 = &v252 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v257 = &v252 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v299 = &v252 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v277 = &v252 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v85 = &v252 - v84;
  MEMORY[0x1EEE9AC00](v83);
  v87 = &v252 - v86;
  v88 = sub_1A22E5F08();
  v89 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v252 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = a2;
  sub_1A2130548(a2);
  sub_1A22E5C58();
  sub_1A22E5FF8();
  v92 = v87;
  v93 = *(v58 + 8);
  v319 = v57;
  v318 = v58 + 8;
  v93(v92, v57);
  if ((*(v89 + 48))(v56, 1, v88) == 1)
  {
    sub_1A210D9B0(v56, &qword_1EB0894F8);
  }

  else
  {
    (*(v89 + 32))(v91, v56, v88);
    if (sub_1A211A6BC())
    {
      *(&v350 + 1) = v88;
      *&v351 = sub_1A22893B0(&qword_1EB089528, MEMORY[0x1E69AE758]);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v349);
      (*(v89 + 16))(boxed_opaque_existential_0Tm, v91, v88);
      *&v344 = 0;
      v342 = 0u;
      v343 = 0u;
      sub_1A212E350(&v349, &v342, &v323);
      (*(v89 + 8))(v91, v88);
      v95 = v307;
      v96 = v308;
      v97 = v315;
      v98 = v300;
      goto LABEL_18;
    }

    (*(v89 + 8))(v91, v88);
  }

  v97 = v315;
  v98 = v300;
  sub_1A22E5C58();
  v99 = v283;
  sub_1A22E6008();
  v93(v85, v319);
  v100 = v285;
  v101 = v286;
  v102 = (*(v285 + 48))(v99, 1, v286);
  v103 = v284;
  if (v102 == 1)
  {
    sub_1A210D9B0(v99, &qword_1EB089588);
    v95 = v307;
    v104 = v279;
  }

  else
  {
    (*(v100 + 32))(v284, v99, v101);
    v105 = v100;
    v106 = v103;
    v107 = sub_1A22E5718();
    v95 = v307;
    v96 = v308;
    if (v107)
    {
      *(&v350 + 1) = v101;
      *&v351 = sub_1A22893B0(&qword_1ED9506C0, MEMORY[0x1E69AE740]);
      v108 = __swift_allocate_boxed_opaque_existential_0Tm(&v349);
      (*(v105 + 16))(v108, v106, v101);
      *&v344 = 0;
      v342 = 0u;
      v343 = 0u;
      sub_1A212E350(&v349, &v342, &v323);
      (*(v105 + 8))(v106, v101);
      v97 = v315;
      goto LABEL_18;
    }

    (*(v105 + 8))(v106, v101);
    v104 = v279;
    v97 = v315;
  }

  v109 = v277;
  sub_1A22E5C58();
  v110 = v278;
  sub_1A22E5F38();
  v93(v109, v319);
  v111 = v280;
  v112 = v281;
  if ((*(v280 + 48))(v110, 1, v281) == 1)
  {
    sub_1A210D9B0(v110, &qword_1EB089580);
LABEL_16:
    v333 = 0u;
    v334 = 0u;
    v331 = 0u;
    v332 = 0u;
    v329 = 0u;
    v330 = 0u;
    v327 = 0u;
    v328 = 0u;
    v325 = 0u;
    v326 = 0u;
    v323 = 0u;
    v324 = 0u;
    goto LABEL_17;
  }

  (*(v111 + 32))(v104, v110, v112);
  if ((sub_1A22E5718() & 1) == 0)
  {
    (*(v111 + 8))(v104, v112);
    goto LABEL_16;
  }

  *(&v350 + 1) = v112;
  *&v351 = sub_1A22893B0(&qword_1EB089590, MEMORY[0x1E69AE620]);
  v113 = __swift_allocate_boxed_opaque_existential_0Tm(&v349);
  (*(v111 + 16))(v113, v104, v112);
  *&v344 = 0;
  v342 = 0u;
  v343 = 0u;
  sub_1A212E350(&v349, &v342, &v323);
  (*(v111 + 8))(v104, v112);
LABEL_17:
  v96 = v308;
LABEL_18:
  sub_1A212E4EC(&v323, v95, &qword_1EB088850);
  v114 = v299;
  sub_1A22E5C58();
  sub_1A22E5F68();
  v93(v114, v319);
  v115 = v313;
  if ((*(v313 + 48))(v98, 1, v97) == 1)
  {
    sub_1A210D9B0(v98, &qword_1EB089578);
LABEL_25:
    v120 = v302;
    goto LABEL_26;
  }

  v116 = v275;
  (*(v115 + 32))(v275, v98, v97);
  v117 = v115;
  v118 = *(sub_1A22E5CF8() + 16);

  if (!v118)
  {
    (*(v117 + 8))(v116, v97);
    goto LABEL_25;
  }

  v119 = sub_1A22E5718();
  v120 = v302;
  if ((v119 & 1) == 0)
  {
    (*(v313 + 8))(v116, v97);
LABEL_26:
    v126 = v292;
    sub_1A22E5C58();
    v127 = v293;
    sub_1A22E5F78();
    v93(v126, v319);
    if ((*(v120 + 48))(v127, 1, v96) == 1)
    {
      v128 = v312;
      sub_1A210D9B0(v127, &qword_1EB089568);
    }

    else
    {
      v129 = v272;
      (*(v120 + 32))(v272, v127, v96);
      if (sub_1A22E5718())
      {
        *(&v350 + 1) = v96;
        *&v351 = sub_1A22893B0(&qword_1ED950700, MEMORY[0x1E69AE680]);
        v130 = __swift_allocate_boxed_opaque_existential_0Tm(&v349);
        (*(v120 + 16))(v130, v129, v96);
        v131 = v261;
        sub_1A22E5C58();
        v132 = v262;
        sub_1A22E5FE8();
        v93(v131, v319);
        v133 = sub_1A22E5E78();
        v134 = *(v133 - 8);
        if ((*(v134 + 48))(v132, 1, v133) == 1)
        {
          sub_1A210D9B0(v132, &qword_1EB089570);
          v342 = 0u;
          v343 = 0u;
          *&v344 = 0;
        }

        else
        {
          *(&v343 + 1) = v133;
          *&v344 = sub_1A22893B0(&qword_1ED9506D0, MEMORY[0x1E69AE728]);
          v141 = __swift_allocate_boxed_opaque_existential_0Tm(&v342);
          (*(v134 + 32))(v141, v132, v133);
        }

        v128 = v312;
        sub_1A212E350(&v349, &v342, &v323);
        (*(v120 + 8))(v129, v96);
        goto LABEL_36;
      }

      v128 = v312;
      (*(v120 + 8))(v129, v96);
    }

    v135 = sub_1A2130630();
    v137 = v135[1];
    v136 = v135[2];
    v349 = *v135;
    v350 = v137;
    v351 = v136;
    v138 = v135[6];
    v140 = v135[3];
    v139 = v135[4];
    v354 = v135[5];
    v355 = v138;
    v352 = v140;
    v353 = v139;
    sub_1A213045C(&v349, &v323);
    sub_1A2128B30(&v349, &v323);
LABEL_36:
    v142 = v310;
    goto LABEL_37;
  }

  *(&v350 + 1) = v97;
  *&v351 = sub_1A22893B0(&qword_1ED950710, MEMORY[0x1E69AE668]);
  v121 = __swift_allocate_boxed_opaque_existential_0Tm(&v349);
  (*(v313 + 16))(v121, v116, v97);
  v122 = v257;
  sub_1A22E5C58();
  v123 = v258;
  sub_1A22E5FE8();
  v93(v122, v319);
  v124 = sub_1A22E5E78();
  v125 = *(v124 - 8);
  if ((*(v125 + 48))(v123, 1, v124) == 1)
  {
    sub_1A210D9B0(v123, &qword_1EB089570);
    v342 = 0u;
    v343 = 0u;
    *&v344 = 0;
  }

  else
  {
    *(&v343 + 1) = v124;
    *&v344 = sub_1A22893B0(&qword_1ED9506D0, MEMORY[0x1E69AE728]);
    v241 = __swift_allocate_boxed_opaque_existential_0Tm(&v342);
    (*(v125 + 32))(v241, v123, v124);
  }

  v128 = v312;
  v142 = v310;
  sub_1A212E350(&v349, &v342, &v323);
  (*(v313 + 8))(v116, v315);
LABEL_37:
  v143 = v332;
  v95[20] = v331;
  v95[21] = v143;
  v144 = v334;
  v95[22] = v333;
  v95[23] = v144;
  v145 = v328;
  v95[16] = v327;
  v95[17] = v145;
  v146 = v330;
  v95[18] = v329;
  v95[19] = v146;
  v147 = v324;
  v95[12] = v323;
  v95[13] = v147;
  v148 = v326;
  v95[14] = v325;
  v95[15] = v148;
  v149 = v301;
  sub_1A22E5C58();
  v150 = v303;
  sub_1A22E5FC8();
  v151 = v150;
  v93(v149, v319);
  v152 = v311;
  if ((*(v142 + 48))(v150, 1, v311) == 1)
  {
    sub_1A210D9B0(v150, &qword_1EB089520);
LABEL_43:
    v159 = v305;
    v160 = v128;
    goto LABEL_44;
  }

  v153 = v287;
  (*(v142 + 32))(v287, v151, v152);
  if ((sub_1A22E5C78() & 1) == 0)
  {
    (*(v142 + 8))(v153, v152);
    goto LABEL_43;
  }

  v315 = v93;
  v154 = v265;
  sub_1A22E5B48();
  v155 = sub_1A22E5B38();
  v156 = *(v155 - 8);
  if ((*(v156 + 48))(v154, 1, v155) == 1)
  {
    sub_1A210D9B0(v154, &unk_1EB089440);
    v157 = 1;
    v158 = v269;
  }

  else
  {
    v171 = v253;
    sub_1A22E5AD8();
    (*(v156 + 8))(v154, v155);
    v158 = v269;
    sub_1A22E5AB8();
    (*(v254 + 8))(v171, v255);
    v157 = 0;
  }

  v172 = v270;
  v173 = *(v270 + 56);
  v174 = v267;
  v173(v158, v157, 1, v267);
  v175 = v268;
  (*(v172 + 104))(v268, *MEMORY[0x1E69AE5D8], v174);
  v173(v175, 0, 1, v174);
  v176 = *(v266 + 48);
  v177 = v273;
  sub_1A2214CF8(v158, v273, &qword_1EB089518);
  v178 = v177;
  sub_1A2214CF8(v175, v177 + v176, &qword_1EB089518);
  v179 = *(v172 + 48);
  if (v179(v178, 1, v174) != 1)
  {
    v184 = v256;
    sub_1A2214CF8(v178, v256, &qword_1EB089518);
    if (v179(v178 + v176, 1, v174) != 1)
    {
      v244 = v270;
      v245 = v178 + v176;
      v246 = v252;
      (*(v270 + 32))(v252, v245, v174);
      sub_1A22893B0(&qword_1ED950748, MEMORY[0x1E69AE5E8]);
      v247 = v174;
      v248 = sub_1A22E6568();
      v249 = *(v244 + 8);
      v249(v246, v247);
      sub_1A210D9B0(v268, &qword_1EB089518);
      sub_1A210D9B0(v269, &qword_1EB089518);
      v249(v184, v247);
      sub_1A210D9B0(v178, &qword_1EB089518);
      v159 = v305;
      v160 = v312;
      v93 = v315;
      v182 = v310;
      v183 = v287;
      if (v248)
      {
        goto LABEL_90;
      }

LABEL_57:
      (*(v182 + 8))(v183, v311);
      goto LABEL_44;
    }

    sub_1A210D9B0(v268, &qword_1EB089518);
    v180 = v273;
    sub_1A210D9B0(v269, &qword_1EB089518);
    (*(v270 + 8))(v184, v174);
    v159 = v305;
    v182 = v310;
    v183 = v287;
LABEL_56:
    sub_1A210D9B0(v180, &qword_1EB089510);
    v160 = v312;
    v93 = v315;
    goto LABEL_57;
  }

  sub_1A210D9B0(v175, &qword_1EB089518);
  v180 = v273;
  sub_1A210D9B0(v158, &qword_1EB089518);
  v181 = v179(v180 + v176, 1, v174);
  v159 = v305;
  v182 = v310;
  v183 = v287;
  if (v181 != 1)
  {
    goto LABEL_56;
  }

  sub_1A210D9B0(v180, &qword_1EB089518);
  v93 = v315;
LABEL_90:
  v250 = v311;
  if (sub_1A22E5718())
  {
    *(&v343 + 1) = v250;
    *&v344 = sub_1A22893B0(&qword_1EB089538, MEMORY[0x1E69AE6F8]);
    v251 = __swift_allocate_boxed_opaque_existential_0Tm(&v342);
    (*(v182 + 16))(v251, v183, v250);
    *&v337 = 0;
    v335 = 0u;
    v336 = 0u;
    sub_1A212E350(&v342, &v335, &v323);
    (*(v182 + 8))(v183, v250);
    v167 = v306;
    v160 = v312;
    goto LABEL_66;
  }

  (*(v182 + 8))(v183, v250);
  v160 = v312;
LABEL_44:
  v161 = v297;
  sub_1A22E5C58();
  v162 = v316;
  sub_1A22E5FD8();
  v163 = v161;
  v164 = v93;
  v93(v163, v319);
  v165 = v309;
  v166 = v298;
  if ((*(v309 + 48))(v162, 1, v298) == 1)
  {
    sub_1A210D9B0(v316, &qword_1EB089508);
    v167 = v306;
  }

  else
  {
    v168 = v274;
    (*(v165 + 32))(v274, v316, v166);
    if (sub_1A22E5C78())
    {
      if (sub_1A22E5718())
      {
        *(&v343 + 1) = v166;
        *&v344 = sub_1A22893B0(&qword_1EB089530, MEMORY[0x1E69AE710]);
        v169 = __swift_allocate_boxed_opaque_existential_0Tm(&v342);
        v170 = v309;
        (*(v309 + 16))(v169, v168, v166);
        *&v337 = 0;
        v335 = 0u;
        v336 = 0u;
        sub_1A212E350(&v342, &v335, &v323);
        (*(v170 + 8))(v168, v166);
        v93 = v164;
        v167 = v306;
        goto LABEL_66;
      }

      (*(v309 + 8))(v168, v166);
    }

    else
    {
      (*(v165 + 8))(v168, v166);
    }

    v167 = v306;
  }

  v185 = v288;
  v186 = v289;
  sub_1A22E5C58();
  sub_1A22E5FA8();
  v187 = v185;
  v93 = v164;
  v164(v187, v319);
  v188 = v290;
  v189 = v291;
  if ((*(v290 + 48))(v186, 1, v291) == 1)
  {
    sub_1A210D9B0(v186, &qword_1EB089500);
  }

  else
  {
    v190 = v271;
    (*(v188 + 32))(v271, v186, v189);
    if (sub_1A22E5718())
    {
      *(&v343 + 1) = v189;
      *&v344 = sub_1A22893B0(&qword_1ED9506E8, MEMORY[0x1E69AE6D0]);
      v191 = __swift_allocate_boxed_opaque_existential_0Tm(&v342);
      (*(v188 + 16))(v191, v190, v189);
      *&v337 = 0;
      v335 = 0u;
      v336 = 0u;
      sub_1A212E350(&v342, &v335, &v323);
      (*(v188 + 8))(v190, v189);
      v93 = v164;
      goto LABEL_66;
    }

    (*(v188 + 8))(v190, v189);
    v93 = v164;
  }

  v192 = sub_1A2130494();
  v194 = v192[1];
  v193 = v192[2];
  v342 = *v192;
  v343 = v194;
  v344 = v193;
  v195 = v192[6];
  v197 = v192[3];
  v196 = v192[4];
  v347 = v192[5];
  v348 = v195;
  v345 = v197;
  v346 = v196;
  sub_1A213045C(&v342, &v323);
  sub_1A2128B30(&v342, &v323);
LABEL_66:
  v198 = v317;
  v199 = v332;
  v95[32] = v331;
  v95[33] = v199;
  v200 = v334;
  v95[34] = v333;
  v95[35] = v200;
  v201 = v328;
  v95[28] = v327;
  v95[29] = v201;
  v202 = v330;
  v95[30] = v329;
  v95[31] = v202;
  v203 = v324;
  v95[24] = v323;
  v95[25] = v203;
  v204 = v326;
  v95[26] = v325;
  v95[27] = v204;
  v205 = v304;
  sub_1A22E5C58();
  sub_1A22E5F58();
  v93(v205, v319);
  v206 = v314;
  if ((*(v314 + 48))(v160, 1, v159) == 1)
  {
    sub_1A210D9B0(v160, &qword_1EB089560);
  }

  else
  {
    v207 = v276;
    (*(v206 + 32))(v276, v160, v159);
    v208 = v206;
    v209 = *(sub_1A22E5CF8() + 16);

    if (v209)
    {
      if (sub_1A22E5718())
      {
        *(&v336 + 1) = v159;
        *&v337 = sub_1A22893B0(&qword_1ED950720, MEMORY[0x1E69AE650]);
        v210 = __swift_allocate_boxed_opaque_existential_0Tm(&v335);
        (*(v314 + 16))(v210, v207, v159);
        v211 = v259;
        sub_1A22E5C58();
        v212 = v93;
        v213 = v260;
        sub_1A22E5F48();
        v212(v211, v319);
        v214 = sub_1A22E5CC8();
        v215 = *(v214 - 8);
        if ((*(v215 + 48))(v213, 1, v214) == 1)
        {
          sub_1A210D9B0(v213, &qword_1EB089558);
          v320 = 0u;
          v321 = 0u;
          v322 = 0;
        }

        else
        {
          *(&v321 + 1) = v214;
          v322 = sub_1A22893B0(&qword_1ED950730, MEMORY[0x1E69AE638]);
          v242 = __swift_allocate_boxed_opaque_existential_0Tm(&v320);
          (*(v215 + 32))(v242, v213, v214);
        }

        sub_1A212E350(&v335, &v320, &v323);
        v243 = sub_1A22E5C88();
        (*(*(v243 - 8) + 8))(v198, v243);
        (*(v314 + 8))(v207, v159);
        goto LABEL_84;
      }

      (*(v314 + 8))(v207, v159);
    }

    else
    {
      (*(v208 + 8))(v207, v159);
    }
  }

  v216 = v294;
  sub_1A22E5C58();
  v217 = v295;
  sub_1A22E6018();
  v93(v216, v319);
  v218 = v296;
  if ((*(v167 + 48))(v217, 1, v296) == 1)
  {
    sub_1A210D9B0(v217, &qword_1EB089550);
LABEL_80:
    v225 = sub_1A2130704();
    v227 = v225[1];
    v226 = v225[2];
    v335 = *v225;
    v336 = v227;
    v337 = v226;
    v228 = v225[6];
    v230 = v225[3];
    v229 = v225[4];
    v340 = v225[5];
    v341 = v228;
    v338 = v230;
    v339 = v229;
    sub_1A213045C(&v335, &v323);
    sub_1A2128B30(&v335, &v323);
    v231 = sub_1A22E5C88();
    (*(*(v231 - 8) + 8))(v198, v231);
    goto LABEL_84;
  }

  v219 = v282;
  (*(v167 + 32))();
  if ((sub_1A22E5718() & 1) == 0)
  {
    (*(v167 + 8))(v219, v218);
    goto LABEL_80;
  }

  *(&v336 + 1) = v218;
  *&v337 = sub_1A22893B0(&qword_1ED9506B0, MEMORY[0x1E69AE770]);
  v220 = __swift_allocate_boxed_opaque_existential_0Tm(&v335);
  (*(v167 + 16))(v220, v219, v218);
  v221 = v263;
  sub_1A22E5C58();
  v222 = v264;
  sub_1A22E5F48();
  v93(v221, v319);
  v223 = sub_1A22E5CC8();
  v224 = *(v223 - 8);
  if ((*(v224 + 48))(v222, 1, v223) == 1)
  {
    sub_1A210D9B0(v222, &qword_1EB089558);
    v320 = 0u;
    v321 = 0u;
    v322 = 0;
  }

  else
  {
    *(&v321 + 1) = v223;
    v322 = sub_1A22893B0(&qword_1ED950730, MEMORY[0x1E69AE638]);
    v232 = __swift_allocate_boxed_opaque_existential_0Tm(&v320);
    (*(v224 + 32))(v232, v222, v223);
  }

  sub_1A212E350(&v335, &v320, &v323);
  v233 = sub_1A22E5C88();
  (*(*(v233 - 8) + 8))(v198, v233);
  (*(v167 + 8))(v282, v218);
LABEL_84:
  v234 = v332;
  v95[44] = v331;
  v95[45] = v234;
  v235 = v334;
  v95[46] = v333;
  v95[47] = v235;
  v236 = v328;
  v95[40] = v327;
  v95[41] = v236;
  v237 = v330;
  v95[42] = v329;
  v95[43] = v237;
  v238 = v324;
  v95[36] = v323;
  v95[37] = v238;
  result = *&v325;
  v240 = v326;
  v95[38] = v325;
  v95[39] = v240;
  return result;
}

uint64_t sub_1A212E318@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A2130704();

  return sub_1A213045C(v2, a1);
}

uint64_t sub_1A212E350@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(v9, 0, 80);
  sub_1A210D9B0(v9, &qword_1EB0888D0);
  sub_1A223A220(a1, v9);
  sub_1A2115EDC(a2, &v9[2] + 8, &qword_1EB0888C8);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(v10, v6, v7);
  sub_1A210D9B0(a2, &qword_1EB0888C8);
  v9[9] = v10[4];
  v9[10] = v10[5];
  v9[11] = v10[6];
  v9[5] = v10[0];
  v9[6] = v10[1];
  v9[7] = v10[2];
  v9[8] = v10[3];
  sub_1A211637C(v9, a3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1A211830C(v9);
}

uint64_t sub_1A212E47C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A2130494();

  return sub_1A213045C(v2, a1);
}

uint64_t sub_1A212E4B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A2130630();

  return sub_1A213045C(v2, a1);
}

uint64_t sub_1A212E4EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A212E554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1A22E6028();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E5A98();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A22E5AA8();
  v67 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_1A22E5AC8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  v22 = type metadata accessor for NowPlayingTimeControlsView.ViewModel(0);
  v68 = *(v22 - 8);
  v69 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v63 = (&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A22E5B48();
  v24 = sub_1A22E5B38();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) != 1)
  {
    v58 = a1;
    sub_1A22E5AD8();
    (*(v25 + 8))(v14, v24);
    (*(v16 + 32))(v21, v19, v15);
    sub_1A22E5AB8();
    v30 = v67;
    v31 = (*(v67 + 88))(v11, v7);
    v32 = v7;
    v33 = v30;
    if (v31 == *MEMORY[0x1E69AE5E0])
    {
      v57 = v21;
      v34 = v62;
      (*(v30 + 16))(v62, v11, v32);
      (*(v30 + 96))(v34, v32);
      v35 = v64;
      v36 = v65;
      v37 = v66;
      (*(v64 + 32))(v66, v34, v65);
      sub_1A22E5A88();
      v38 = v58;
      if (v39 > 0.0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089548);
        v40 = v35;
        v56 = v15;
        v41 = *(v35 + 16);
        v42 = v63;
        v41(v63, v37, v36);
        v62 = v11;
        v43 = v59;
        sub_1A22E5C58();
        sub_1A22E5FB8();
        v44 = sub_1A22E5C88();
        (*(*(v44 - 8) + 8))(v38, v44);
        v45 = v43;
        v11 = v62;
        (*(v60 + 8))(v45, v61);
        (*(v40 + 8))(v66, v36);
        (*(v16 + 8))(v57, v56);
LABEL_8:
        v29 = v69;
        swift_storeEnumTagMultiPayload();
        (*(v33 + 8))(v11, v32);
        v51 = v42;
        v28 = v70;
        sub_1A2288F28(v51, v70, type metadata accessor for NowPlayingTimeControlsView.ViewModel);
        v27 = 0;
        return (*(v68 + 56))(v28, v27, 1, v29);
      }

      v52 = sub_1A22E5C88();
      (*(*(v52 - 8) + 8))(v38, v52);
      (*(v35 + 8))(v37, v36);
      v29 = v69;
      v28 = v70;
      v21 = v57;
    }

    else
    {
      if (v31 == *MEMORY[0x1E69AE5D8])
      {
        v46 = [objc_opt_self() scrubberLive];
        v47 = sub_1A22E65C8();
        v49 = v48;

        v50 = sub_1A22E5C88();
        (*(*(v50 - 8) + 8))(v58, v50);
        (*(v16 + 8))(v21, v15);
        v42 = v63;
        *v63 = v47;
        v42[1] = v49;
        goto LABEL_8;
      }

      v53 = sub_1A22E5C88();
      (*(*(v53 - 8) + 8))(v58, v53);
      v29 = v69;
      v28 = v70;
    }

    (*(v16 + 8))(v21, v15);
    (*(v33 + 8))(v11, v32);
    v27 = 1;
    return (*(v68 + 56))(v28, v27, 1, v29);
  }

  sub_1A210D9B0(v14, &unk_1EB089440);
  v26 = sub_1A22E5C88();
  (*(*(v26 - 8) + 8))(a1, v26);
  v27 = 1;
  v29 = v69;
  v28 = v70;
  return (*(v68 + 56))(v28, v27, 1, v29);
}

size_t sub_1A212ED24(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0888F8);
  v10 = *(sub_1A22E58D8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A22E58D8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A212EEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaveformController.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A212EF60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls18WaveformController_model;
  swift_beginAccess();
  return sub_1A212EEFC(v1 + v3, a1);
}

uint64_t sub_1A212EFD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1A22E5C88();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(**(v0 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_sessionController) + 152);
  v19(v7);
  v10 = (*(**(v0 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_artworkController) + 192))(v20);
  v11 = *(v6 + 24);
  v11(v12, v9, v5);
  v10(v20, 0);
  v13 = (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_waveformController)) + 0x88))(v20);
  v11(v14, v9, v5);
  v15 = v13(v20, 0);
  v16 = *(v1 + OBJC_IVAR____TtC13MediaControls35MediaControlsModuleSessionPresenter_hapticController);
  v19(v15);
  (*(v6 + 56))(v4, 0, 1, v5);
  (*((*MEMORY[0x1E69E7D40] & *v16) + 0x1A8))(v4);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1A212F2B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls23SessionHapticController_routingSession;
  swift_beginAccess();
  sub_1A2127E74(a1, v1 + v3);
  swift_endAccess();
  sub_1A212F904();
  return sub_1A210D9B0(a1, &qword_1EB088C30);
}

uint64_t sub_1A212F334(unsigned __int8 a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___MRUHapticController_status;
  result = swift_beginAccess();
  if (v2[v8] != a1)
  {
    sub_1A2298A60(result);
    v10 = v2;
    v11 = sub_1A22E6238();
    v12 = sub_1A22E6A98();

    if (os_log_type_enabled(v11, v12))
    {
      LODWORD(v45) = v12;
      v13 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v13 = 136315394;
      v14 = sub_1A22E7388();
      v16 = sub_1A2103450(v14, v15, &v46);

      v17 = v2[v8];
      v18 = 0xE700000000000000;
      v19 = 0x6576697463612ELL;
      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v20 = 0xEC000000656C6261;
      v21 = 0x6C696176616E752ELL;
      v22 = 0x656C62617369642ELL;
      v23 = 0xEC00000064657472;
      if (v17 == 3)
      {
        v23 = 0xE900000000000064;
      }

      else
      {
        v22 = 0x6F707075736E752ELL;
      }

      if (v17 != 2)
      {
        v21 = v22;
        v20 = v23;
      }

      if (v17)
      {
        v19 = 0x76697463616E692ELL;
        v18 = 0xE900000000000065;
      }

      if (v17 <= 1)
      {
        v24 = v19;
      }

      else
      {
        v24 = v21;
      }

      if (v17 <= 1)
      {
        v25 = v18;
      }

      else
      {
        v25 = v20;
      }

      v26 = sub_1A2103450(v24, v25, &v46);

      *(v13 + 14) = v26;
      _os_log_impl(&dword_1A20FC000, v11, v45, "[%s] status did change: %s", v13, 0x16u);
      v27 = v44;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v27, -1, -1);
      MEMORY[0x1A58DCD00](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v28 = *(**&v10[OBJC_IVAR___MRUHapticController__observers] + 120);

    v30 = v28(v29);

    v31 = v30;
    v45 = *(v30 + 16);
    if (v45)
    {
      v32 = 0;
      v33 = (v30 + 40);
      while (v32 < *(v31 + 16))
      {
        ++v32;
        v34 = *v33;
        ObjectType = swift_getObjectType();
        v30 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x110);
        v36 = swift_unknownObjectRetain();
        v37 = (v30)(v36);
        (*(v34 + 8))(v10, v37, ObjectType, v34);
        swift_unknownObjectRelease();
        v33 += 2;
        if (v45 == v32)
        {
          goto LABEL_21;
        }
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    else
    {
LABEL_21:

      v38 = *(**&v10[OBJC_IVAR___MRUHapticController__legacyObservers] + 120);

      v30 = v38(v39);

      if (!(v30 >> 62))
      {
        v40 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v40)
        {
        }

LABEL_23:
        for (i = 0; ; ++i)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x1A58DB0F0](i, v30);
            v43 = i + 1;
            if (__OFADD__(i, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v42 = *(v30 + 8 * i + 32);
            swift_unknownObjectRetain();
            v43 = i + 1;
            if (__OFADD__(i, 1))
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }
          }

          [v42 controller:v10 didResolveStatus:dword_1A230DDAC[(*((*MEMORY[0x1E69E7D40] & *v10) + 0x110))()]];
          swift_unknownObjectRelease();
          if (v43 == v40)
          {
          }
        }
      }
    }

    v40 = sub_1A22E6DE8();
    if (!v40)
    {
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1A212F870()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x180))();
  v2 = OBJC_IVAR___MRUHapticController_status;
  swift_beginAccess();
  v3 = *(v0 + v2);
  *(v0 + v2) = v1;
  return sub_1A212F334(v3);
}

uint64_t sub_1A212F904()
{
  v1 = v0;
  v2 = sub_1A22E5A08();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A22E5A28();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v53 - v15;
  v17 = sub_1A22E5C88();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC13MediaControls23SessionHapticController_routingSession;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v21, v16, &qword_1EB088C30);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_1A210D9B0(v16, &qword_1EB088C30);
  }

  v54 = v18;
  v55 = v17;
  (*(v18 + 32))(v20, v16, v17);
  sub_1A22E5B48();
  v23 = sub_1A22E5B38();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v13, 1, v23);
  v27 = v20;
  v53 = v24;
  if (v26 == 1)
  {
    sub_1A210D9B0(v13, &unk_1EB089440);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v30 = v24;
    v31 = sub_1A22E5B08();
    v33 = v32;
    (*(v30 + 8))(v13, v23);
    v29 = v33;
    v28 = v31;
  }

  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(v28, v29);
  sub_1A22E5B48();
  if (v25(v11, 1, v23) == 1)
  {
    sub_1A210D9B0(v11, &unk_1EB089440);
  }

  else
  {
    v35 = v57;
    sub_1A22E5A38();
    (*(v53 + 8))(v11, v23);
    v36 = v27;
    v37 = v60;
    sub_1A22E5A18();
    (*(v58 + 8))(v35, v59);
    v38 = sub_1A22E59F8();
    v40 = v39;
    v41 = v37;
    v27 = v36;
    (*(v61 + 8))(v41, v62);
    if (v40)
    {
      v42 = v40;
      v43 = 0;
      v44 = v38;
      goto LABEL_12;
    }
  }

  v45 = v56;
  sub_1A22E5B48();
  if (v25(v45, 1, v23) != 1)
  {
    v47 = v57;
    sub_1A22E5A38();
    (*(v53 + 8))(v45, v23);
    v48 = v60;
    sub_1A22E5A18();
    (*(v58 + 8))(v47, v59);
    v49 = sub_1A22E59E8();
    v51 = v50;
    (*(v61 + 8))(v48, v62);
    v46 = v54;
    if (v51)
    {
      v44 = 0;
      v42 = 0;
      v43 = 255;
    }

    else
    {
      v63 = v49;
      v44 = sub_1A22E71D8();
      v43 = 1;
    }

    goto LABEL_16;
  }

  sub_1A210D9B0(v45, &unk_1EB089440);
  v44 = 0;
  v42 = 0;
  v43 = 255;
LABEL_12:
  v46 = v54;
LABEL_16:
  v52 = (*((*v34 & *v1) + 0xC8))(v44, v42, v43);
  (*((*v34 & *v1) + 0x178))(v52);
  return (*(v46 + 8))(v27, v55);
}

uint64_t sub_1A212FFB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1A2130600();
  }

  return result;
}

uint64_t sub_1A212FFCC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = ~a3;
  v8 = v3 + OBJC_IVAR___MRUHapticController_mediaCode;
  result = swift_beginAccess();
  v11 = *v8;
  v10 = *(v8 + 8);
  v12 = *(v8 + 16);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  if (v7)
  {
    if (v12 != 255)
    {
      if (a3)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (v12)
      {
        goto LABEL_14;
      }

      v13 = a1;
      v14 = a2;
      if (v11 == a1 && v10 == a2)
      {
        return sub_1A212FFB4(v13, v14, v12);
      }

      if (sub_1A22E71E8())
      {
LABEL_15:
        v13 = v11;
        v14 = v10;
        return sub_1A212FFB4(v13, v14, v12);
      }
    }

LABEL_14:
    *(v3 + OBJC_IVAR___MRUHapticController_needsToCheckTrackAvailability) = 1;
    sub_1A228ADB0();
    goto LABEL_15;
  }

  if (v12 != 255)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1A21300C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v3[OBJC_IVAR____TtC13MediaControls23SessionHapticController_nowPlayingBundleIdentifier];
  result = swift_beginAccess();
  v12 = v10[1];
  if (v12)
  {
    if (a2)
    {
      result = *v10;
      if (*v10 == a1 && v12 == a2)
      {
        return result;
      }

      result = sub_1A22E71E8();
      if (result)
      {
        return result;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  sub_1A2298A60(result);
  v14 = v3;
  v15 = sub_1A22E6238();
  v16 = sub_1A22E6A98();

  if (os_log_type_enabled(v15, v16))
  {
    v26[1] = v14;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315394;
    v19 = sub_1A22E7388();
    v21 = sub_1A2103450(v19, v20, &v27);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v10[1];
    if (v22)
    {
      v23 = *v10;
      v24 = v22;
    }

    else
    {
      v24 = 0xE300000000000000;
      v23 = 7104878;
    }

    v25 = sub_1A2103450(v23, v24, &v27);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_1A20FC000, v15, v16, "[%s] nowPlayingBundleID changed: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v18, -1, -1);
    MEMORY[0x1A58DCD00](v17, -1, -1);

    (*(v7 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_1A22A1680();
}

uint64_t sub_1A2130370(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_nowPlayingBundleIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1A21300C4(v6, v7);
}

unint64_t sub_1A21303E8()
{
  result = qword_1ED950230;
  if (!qword_1ED950230)
  {
    type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED950230);
  }

  return result;
}

__int128 *sub_1A2130494()
{
  if (qword_1ED9512A0 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED953048;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

double sub_1A2130548@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1A2130568()
{
  v1 = OBJC_IVAR___MRUHapticController_status;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_1A21305AC()
{
  result = qword_1ED94FDD8[0];
  if (!qword_1ED94FDD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED94FDD8);
  }

  return result;
}

__int128 *sub_1A2130630()
{
  if (qword_1ED951278 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED952EF8;
}

uint64_t sub_1A2130680()
{
  if (*(v0 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics) != 1 || ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))() & 1) == 0)
  {
    return 4;
  }

  return sub_1A228B2AC();
}

__int128 *sub_1A2130704()
{
  if (qword_1ED9512B0 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED9530B8;
}

uint64_t sub_1A21307C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2130804()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2130844()
{

  return MEMORY[0x1EEE6BDD0](v0, 47, 7);
}

uint64_t sub_1A213087C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A21308BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A21308F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A213092C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2130964()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A213099C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A21309E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SessionHeaderView.ViewModel(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A2130B10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SessionHeaderView.ViewModel(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A2130C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SessionContentViewModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A2130CEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SessionContentViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2130D90()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2130DC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A2130E08()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2130E58()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2130E90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A2130ED8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2130F14()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A2130F5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2130F94()
{
  sub_1A22335B0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A2130FDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A2131098(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2131148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A22E58F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A2131204(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A22E58F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A21312BC()
{
  v1 = sub_1A22E5EE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A2131380()
{
  v1 = sub_1A22E5998();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1A213145C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A213149C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A21314E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A213151C()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131554()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131590()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A21315D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1A2131608()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131658()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131690()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A21316CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A213177C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A21317F8()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131830()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_1A2131888()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A21318C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2131908()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A213194C()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131988()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A21319D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131A40()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131A7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2131AB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2131AF8()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131B30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131B68()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2131BB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2131C14()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1A2131C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1A22E5628();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A2131CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1A22E5628();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A2131D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1A22E5D98();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A2131DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1A22E5D98();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A2131E78()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131EC0()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131EF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2131F30()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A2131F74()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2131FAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2132000()
{
  v1 = sub_1A22E5968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A21320C4()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A21320FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2132134()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A213218C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A21321CC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2132204()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A213224C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2132288()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A21322C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A2132308()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2132344()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A213237C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A21323B4()
{
  v1 = sub_1A22E5968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A2132478()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A21324B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A21324F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A213252C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2132590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A22E5C88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A213265C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A22E5C88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1A2132714()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A213274C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089A38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A21327E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2132828()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2132864()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A21328A4()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_1A2228B6C(*(v0 + 40), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A2132904()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A2132954()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2132994()
{
  swift_unknownObjectRelease();
  if (*(v0 + 144))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 120);
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1A21329E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2132A1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2132A58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2132AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089540);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}