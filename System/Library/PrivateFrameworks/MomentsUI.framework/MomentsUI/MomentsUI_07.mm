uint64_t type metadata accessor for VideoCollectionViewCell()
{
  result = type metadata singleton initialization cache for VideoCollectionViewCell;
  if (!type metadata singleton initialization cache for VideoCollectionViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EngagementEvent.clientBundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EngagementEvent.suggestionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EngagementEvent() + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EngagementEvent()
{
  result = type metadata singleton initialization cache for EngagementEvent;
  if (!type metadata singleton initialization cache for EngagementEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EngagementEvent.suggestionSubType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EngagementEvent();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t EngagementEvent.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EngagementEvent();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t EngagementEvent.uiContainer.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EngagementEvent();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t EngagementEvent.init(clientBundleID:ranking:suggestionID:suggestionSubType:type:uiContainer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X8>)
{
  v10 = *a5;
  v11 = *a6;
  v12 = *a7;
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  v13 = type metadata accessor for EngagementEvent();
  v14 = v13[6];
  v15 = type metadata accessor for UUID();
  result = (*(*(v15 - 8) + 32))(&a8[v14], a4, v15);
  a8[v13[7]] = v10;
  a8[v13[8]] = v11;
  a8[v13[9]] = v12;
  return result;
}

uint64_t type metadata completion function for EngagementEvent()
{
  result = type metadata accessor for SuggestionRanking();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t RouteSpotlightView.currentStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentStyle;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id RouteSpotlightView.currentStyle.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentStyle;
  result = swift_beginAccess();
  v1[v3] = v2;
  if (v2 != 9)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*RouteSpotlightView.currentStyle.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentStyle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return RouteSpotlightView.currentStyle.modify;
}

void RouteSpotlightView.currentStyle.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + v3[4]) != 9)
    {
      [v4 setNeedsLayout];
    }
  }

  free(v3);
}

id RouteSpotlightView.currentLayer.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentLayer;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void RouteSpotlightView.currentLayer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentLayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id RouteSpotlightView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *RouteSpotlightView.init()()
{
  v0[OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentStyle] = 9;
  v1 = OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentLayer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v13.receiver = v0;
  v13.super_class = type metadata accessor for RouteSpotlightView();
  v2 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentLayer;
  swift_beginAccess();
  v4 = *&v2[v3];
  v5 = objc_opt_self();
  v6 = v2;
  v7 = v4;
  v8 = [v5 blackColor];
  v9 = [v8 CGColor];

  [v7 setFillColor_];
  LODWORD(v10) = 1057803469;
  [*&v2[v3] setOpacity_];
  [*&v2[v3] setFillRule_];
  v11 = [v6 layer];

  [v11 addSublayer_];
  return v6;
}

id RouteSpotlightView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RouteSpotlightView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentStyle) = 9;
  v1 = OBJC_IVAR____TtC9MomentsUI18RouteSpotlightView_currentLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall RouteSpotlightView.updateStyle(_:)(MomentsUI::AssetViewModel::Style a1)
{
  v2 = *a1;
  [v1 bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (v2 > 3)
  {
    if (v2 <= 6)
    {
      if ((v2 - 4) < 2)
      {
LABEL_4:
        v11 = CGRectGetHeight(*&v3) + -30.0;
        v12 = [objc_opt_self() bezierPathWithRoundedRect:15.0 cornerRadius:{15.0, v11, v11, v11 * 0.5}];
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    if (v2 != 7)
    {
      goto LABEL_13;
    }

LABEL_9:
    v13 = CGRectGetHeight(*&v3) * 0.075;
    v29.origin.x = v7;
    v29.origin.y = v8;
    v29.size.width = v9;
    v29.size.height = v10;
    Height = CGRectGetHeight(v29);
    v15 = 0.85;
    goto LABEL_10;
  }

  if (v2 < 2)
  {
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    goto LABEL_4;
  }

LABEL_7:
  v13 = CGRectGetHeight(*&v3) * 0.166666667;
  v28.origin.x = v7;
  v28.origin.y = v8;
  v28.size.width = v9;
  v28.size.height = v10;
  Height = CGRectGetHeight(v28);
  v15 = 0.666666667;
LABEL_10:
  v12 = [objc_opt_self() bezierPathWithRoundedRect:v13 cornerRadius:{v13, Height * v15, Height * v15, Height * v15 * 0.5}];
LABEL_11:
  v16 = v12;
  if (v16)
  {
    v17 = v16;
    v30.origin.x = v7;
    v30.origin.y = v8;
    v30.size.width = v9;
    v30.size.height = v10;
    Width = CGRectGetWidth(v30);
    v31.origin.x = v7;
    v31.origin.y = v8;
    v31.size.width = v9;
    v31.size.height = v10;
    v19 = CGRectGetHeight(v31);
    v20 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, Width, v19, 0.0}];
    [v20 appendPath_];
    v21 = [v20 setUsesEvenOddFillRule_];
    v22 = (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v21);
    oslog = [v20 CGPath];
    [v22 setPath_];

    goto LABEL_17;
  }

LABEL_13:
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static CommonLogger.views);
  oslog = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_21607C000, oslog, v24, "[RouteSpotlightView] failed to calculate spotlight path", v25, 2u);
    MEMORY[0x21CE94770](v25, -1, -1);
  }

LABEL_17:
}

Swift::Void __swiftcall RouteSpotlightView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for RouteSpotlightView();
  v1 = objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))(v1);
  [v0 frame];
  [v3 setFrame_];

  (*((*v2 & *v0) + 0x60))(&v4);
  if (v4 != 9)
  {
    (*((*v2 & *v0) + 0x90))(&v4);
  }
}

id RouteSpotlightView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RouteSpotlightView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RouteSpotlightView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EngagementInfo.init(selectedUUIDs:removedUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for EngagementInfo(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EngagementInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id Suggestion.__allocating_init(suggestionID:title:subtitle:dateRange:ranking:assets:suggestionType:suggestionSubType:prompt:transferID:id:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, unsigned __int8 *a7, char *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v49 = a2;
  v50 = a3;
  v51 = a11;
  v52 = a5;
  v48 = a10;
  v46 = a6;
  v47 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v42 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v45 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_allocWithZone(v12);
  v24 = v23;
  v25 = *a7;
  v26 = *a8;
  v27 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
  *&v23[OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking] = 0;
  if (v25 == 13)
  {

    outlined destroy of UUID?(v51);
    outlined destroy of UUID?(v48);
    (*(v21 + 8))(a1, v20);

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v43 = v12;
    v44 = a1;
    (*(v21 + 16))(&v23[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID], a1, v20);
    v29 = v50;
    *&v24[OBJC_IVAR____TtC9MomentsUI10Suggestion_title] = v49;
    *&v24[OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle] = v29;
    v30 = a4;
    *&v24[OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange] = a4;
    swift_beginAccess();
    *&v24[v27] = v52;
    *&v24[OBJC_IVAR____TtC9MomentsUI10Suggestion_assets] = v46;
    v24[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType] = v25;
    v24[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType] = v26;
    v32 = v47;
    v31 = v48;
    *&v24[OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt] = v47;
    outlined init with copy of UUID?(v31, &v24[OBJC_IVAR____TtC9MomentsUI10Suggestion_transferID]);
    outlined init with copy of UUID?(v51, v19);
    v33 = *(v21 + 48);
    if (v33(v19, 1, v20) == 1)
    {
      v47 = v32;
      v34 = v49;
      v35 = v50;
      v36 = v30;
      v52 = v52;
      UUID.init()();
      if (v33(v19, 1, v20) != 1)
      {
        outlined destroy of UUID?(v19);
      }

      v37 = v43;
      v39 = v51;
      v38 = v52;
      v40 = v45;
    }

    else
    {
      v40 = v45;
      (*(v21 + 32))(v45, v19, v20);
      v47 = v32;
      v34 = v49;
      v35 = v50;
      v36 = v30;
      v38 = v52;
      v37 = v43;
      v39 = v51;
    }

    (*(v21 + 32))(&v24[OBJC_IVAR____TtC9MomentsUI10Suggestion_id], v40, v20);
    v53.receiver = v24;
    v53.super_class = v37;
    v41 = objc_msgSendSuper2(&v53, sel_init);

    outlined destroy of UUID?(v39);
    outlined destroy of UUID?(v48);
    (*(v21 + 8))(v44, v20);
    return v41;
  }
}

MomentsUI::InterfaceType_optional __swiftcall InterfaceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 18;
  if (rawValue < 0x12)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

MomentsUI::SuggestionType_optional __swiftcall SuggestionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 13;
  if ((rawValue + 1) < 0xD)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SuggestionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1 - 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1 - 1);
  return Hasher._finalize()();
}

MomentsUI::SuggestionSubType_optional __swiftcall SuggestionSubType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 800)
  {
    v2 = 47;
    switch(rawValue)
    {
      case 301:
        *v1 = 15;
        break;
      case 302:
        *v1 = 16;
        break;
      case 303:
        *v1 = 17;
        break;
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 340:
      case 341:
      case 342:
      case 343:
      case 344:
      case 345:
      case 346:
      case 347:
      case 348:
      case 349:
      case 350:
      case 351:
      case 352:
      case 353:
      case 354:
      case 355:
      case 356:
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
      case 376:
      case 377:
      case 378:
      case 379:
      case 380:
      case 381:
      case 382:
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 388:
      case 389:
      case 390:
      case 391:
      case 392:
      case 393:
      case 394:
      case 395:
      case 396:
      case 397:
      case 398:
      case 399:
      case 400:
      case 406:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 500:
      case 505:
      case 506:
      case 507:
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 534:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 540:
      case 541:
      case 542:
      case 543:
      case 544:
      case 545:
      case 546:
      case 547:
      case 548:
      case 549:
      case 550:
      case 551:
      case 552:
      case 553:
      case 554:
      case 555:
      case 556:
      case 557:
      case 558:
      case 559:
      case 560:
      case 561:
      case 562:
      case 563:
      case 564:
      case 565:
      case 566:
      case 567:
      case 568:
      case 569:
      case 570:
      case 571:
      case 572:
      case 573:
      case 574:
      case 575:
      case 576:
      case 577:
      case 578:
      case 579:
      case 580:
      case 581:
      case 582:
      case 583:
      case 584:
      case 585:
      case 586:
      case 587:
      case 588:
      case 589:
      case 590:
      case 591:
      case 592:
      case 593:
      case 594:
      case 595:
      case 596:
      case 597:
      case 598:
      case 599:
      case 600:
      case 618:
      case 619:
      case 620:
      case 621:
      case 622:
      case 623:
      case 624:
      case 625:
      case 626:
      case 627:
      case 628:
      case 629:
      case 630:
      case 631:
      case 632:
      case 633:
      case 634:
      case 635:
      case 636:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
      case 642:
      case 643:
      case 644:
      case 645:
      case 646:
      case 647:
      case 648:
      case 649:
      case 650:
      case 651:
      case 652:
      case 653:
      case 654:
      case 655:
      case 656:
      case 657:
      case 658:
      case 659:
      case 660:
      case 661:
      case 662:
      case 663:
      case 664:
      case 665:
      case 666:
      case 667:
      case 668:
      case 669:
      case 670:
      case 671:
      case 672:
      case 673:
      case 674:
      case 675:
      case 676:
      case 677:
      case 678:
      case 679:
      case 680:
      case 681:
      case 682:
      case 683:
      case 684:
      case 685:
      case 686:
      case 687:
      case 688:
      case 689:
      case 690:
      case 691:
      case 692:
      case 693:
      case 694:
      case 695:
      case 696:
      case 697:
      case 698:
      case 699:
      case 700:
        goto LABEL_26;
      case 401:
        *v1 = 18;
        break;
      case 402:
        *v1 = 19;
        break;
      case 403:
        *v1 = 20;
        break;
      case 404:
        *v1 = 21;
        break;
      case 405:
        *v1 = 22;
        break;
      case 407:
        *v1 = 23;
        break;
      case 408:
        *v1 = 24;
        break;
      case 409:
        *v1 = 25;
        break;
      case 410:
        *v1 = 26;
        break;
      case 501:
        *v1 = 27;
        break;
      case 502:
        *v1 = 28;
        break;
      case 503:
        *v1 = 29;
        break;
      case 504:
        *v1 = 30;
        break;
      case 601:
        *v1 = 31;
        break;
      case 602:
        *v1 = 32;
        break;
      case 603:
        *v1 = 33;
        break;
      case 604:
        *v1 = 34;
        break;
      case 605:
        *v1 = 35;
        break;
      case 606:
        *v1 = 36;
        break;
      case 607:
        *v1 = 37;
        break;
      case 608:
        *v1 = 38;
        break;
      case 609:
        *v1 = 39;
        break;
      case 610:
        *v1 = 40;
        break;
      case 611:
        *v1 = 41;
        break;
      case 612:
        *v1 = 42;
        break;
      case 613:
        *v1 = 43;
        break;
      case 614:
        *v1 = 44;
        break;
      case 615:
        *v1 = 45;
        break;
      case 616:
        *v1 = 46;
        break;
      case 617:
LABEL_23:
        *v1 = v2;
        break;
      case 701:
        *v1 = 48;
        break;
      case 702:
        *v1 = 49;
        break;
      case 703:
        *v1 = 50;
        break;
      case 704:
        *v1 = 51;
        break;
      case 705:
        *v1 = 52;
        break;
      case 706:
        *v1 = 53;
        break;
      case 707:
        *v1 = 54;
        break;
      case 708:
        *v1 = 55;
        break;
      case 709:
        *v1 = 56;
        break;
      default:
        switch(rawValue)
        {
          case 101:
            v2 = 1;
            goto LABEL_23;
          case 102:
            *v1 = 2;
            break;
          case 103:
            *v1 = 3;
            break;
          case 104:
            *v1 = 4;
            break;
          case 105:
            *v1 = 5;
            break;
          case 106:
            *v1 = 6;
            break;
          case 107:
          case 108:
          case 109:
          case 110:
          case 111:
          case 112:
          case 113:
          case 114:
          case 115:
          case 116:
          case 117:
          case 118:
          case 119:
          case 120:
          case 121:
          case 122:
          case 123:
          case 124:
          case 125:
          case 126:
          case 127:
          case 128:
          case 129:
          case 130:
          case 131:
          case 132:
          case 133:
          case 134:
          case 135:
          case 136:
          case 137:
          case 138:
          case 139:
          case 140:
          case 141:
          case 142:
          case 143:
          case 144:
          case 145:
          case 146:
          case 147:
          case 148:
          case 149:
          case 150:
          case 151:
          case 152:
          case 153:
          case 154:
          case 155:
          case 156:
          case 157:
          case 158:
          case 159:
          case 160:
          case 161:
          case 162:
          case 163:
          case 164:
          case 165:
          case 166:
          case 167:
          case 168:
          case 169:
          case 170:
          case 171:
          case 172:
          case 173:
          case 174:
          case 175:
          case 176:
          case 177:
          case 178:
          case 179:
          case 180:
          case 181:
          case 182:
          case 183:
          case 184:
          case 185:
          case 186:
          case 187:
          case 188:
          case 189:
          case 190:
          case 191:
          case 192:
          case 193:
          case 194:
          case 195:
          case 196:
          case 197:
          case 198:
          case 199:
          case 200:
            goto LABEL_26;
          case 201:
            *v1 = 7;
            break;
          case 202:
            *v1 = 8;
            break;
          case 203:
            *v1 = 9;
            break;
          case 204:
            *v1 = 10;
            break;
          case 205:
            *v1 = 11;
            break;
          case 206:
            *v1 = 12;
            break;
          case 207:
            *v1 = 13;
            break;
          case 208:
            *v1 = 14;
            break;
          default:
            if (rawValue)
            {
              goto LABEL_26;
            }

            *v1 = 0;
            break;
        }

        break;
    }
  }

  else if (rawValue > 1002)
  {
    if (rawValue > 1004)
    {
      if (rawValue == 1005)
      {
        *v1 = 63;
        return rawValue;
      }

      if (rawValue == 1006)
      {
        *v1 = 64;
        return rawValue;
      }

      goto LABEL_26;
    }

    if (rawValue == 1003)
    {
      *v1 = 61;
    }

    else
    {
      *v1 = 62;
    }
  }

  else
  {
    if (rawValue <= 1000)
    {
      if (rawValue == 801)
      {
        *v1 = 57;
        return rawValue;
      }

      if (rawValue == 802)
      {
        *v1 = 58;
        return rawValue;
      }

LABEL_26:
      *v1 = 65;
      return rawValue;
    }

    if (rawValue == 1001)
    {
      *v1 = 59;
    }

    else
    {
      *v1 = 60;
    }
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SuggestionSubType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](qword_216590EE0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionSubType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](qword_216590EE0[v1]);
  return Hasher._finalize()();
}

void *Suggestion.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_title);
  v2 = v1;
  return v1;
}

void *Suggestion.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle);
  v2 = v1;
  return v1;
}

void *Suggestion.dateRange.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange);
  v2 = v1;
  return v1;
}

void key path setter for Suggestion.ranking : Suggestion(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *Suggestion.ranking.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *Suggestion.prompt.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt);
  v2 = v1;
  return v1;
}

id Suggestion.init(suggestionID:title:subtitle:dateRange:ranking:assets:suggestionType:suggestionSubType:prompt:transferID:id:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, unsigned __int8 *a7, char *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v43 = a4;
  v44 = a5;
  v40 = a2;
  v41 = a3;
  v42 = a11;
  v39 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = *a7;
  v23 = *a8;
  v24 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
  *&v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking] = 0;
  if (v22 == 13)
  {

    outlined destroy of UUID?(v42);
    outlined destroy of UUID?(v39);
    (*(v20 + 8))(a1, v19);

    type metadata accessor for Suggestion();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v37 = a1;
    v38 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(&v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID], a1, v19);
    v26 = v41;
    *&v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_title] = v40;
    *&v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle] = v26;
    *&v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange] = v43;
    swift_beginAccess();
    *&v11[v24] = v44;
    *&v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_assets] = a6;
    v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType] = v22;
    v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType] = v23;
    *&v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt] = a9;
    outlined init with copy of UUID?(v39, &v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_transferID]);
    outlined init with copy of UUID?(v42, v18);
    v27 = *(v20 + 48);
    if (v27(v18, 1, v19) == 1)
    {
      v36 = a9;
      v28 = v40;
      v29 = v41;
      v30 = v43;
      v44 = v44;
      UUID.init()();
      if (v27(v18, 1, v19) != 1)
      {
        outlined destroy of UUID?(v18);
      }

      v31 = v42;
      v32 = v38;
      v33 = v44;
    }

    else
    {
      v32 = v38;
      (*(v20 + 32))(v38, v18, v19);
      v36 = a9;
      v28 = v40;
      v29 = v41;
      v30 = v43;
      v33 = v44;
      v31 = v42;
    }

    (*(v20 + 32))(&v11[OBJC_IVAR____TtC9MomentsUI10Suggestion_id], v32, v19);
    v34 = type metadata accessor for Suggestion();
    v45.receiver = v11;
    v45.super_class = v34;
    v35 = objc_msgSendSuper2(&v45, sel_init);

    outlined destroy of UUID?(v31);
    outlined destroy of UUID?(v39);
    (*(v20 + 8))(v37, v19);
    return v35;
  }
}

uint64_t type metadata accessor for Suggestion()
{
  result = type metadata singleton initialization cache for Suggestion;
  if (!type metadata singleton initialization cache for Suggestion)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Suggestion.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6974736567677573;
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x74706D6F7270;
    if (a1 != 8)
    {
      v6 = 0x726566736E617274;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 == 5)
    {
      v1 = 0x737465737361;
    }

    if (a1 <= 6u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656C746974627573;
    v3 = 0x676E615265746164;
    if (a1 != 3)
    {
      v3 = 0x676E696B6E6172;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Suggestion.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Suggestion.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == Suggestion.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Suggestion.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Suggestion.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Suggestion.CodingKeys()
{
  Suggestion.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Suggestion.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Suggestion.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Suggestion.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Suggestion.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Suggestion.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = Suggestion.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Suggestion.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Suggestion.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Suggestion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Suggestion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall Suggestion.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v8 = MEMORY[0x21CE91FC0](0x6974736567677573, 0xEC00000044496E6FLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v8];

  v9 = *(v2 + OBJC_IVAR____TtC9MomentsUI10Suggestion_title);
  v10 = MEMORY[0x21CE91FC0](0x656C746974, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v2 + OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle);
  v12 = MEMORY[0x21CE91FC0](0x656C746974627573, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = *(v2 + OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange);
  v14 = MEMORY[0x21CE91FC0](0x676E615265746164, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  outlined init with copy of UUID?(v2 + OBJC_IVAR____TtC9MomentsUI10Suggestion_transferID, v6);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v6, 1, v15) != 1)
  {
    v17 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v6, v15);
  }

  v18 = MEMORY[0x21CE91FC0](0x726566736E617274, 0xEA00000000004449);
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  v19 = (*((*MEMORY[0x277D85000] & *v2) + 0xA8))();
  v20 = MEMORY[0x21CE91FC0](0x676E696B6E6172, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

  v21 = *(v2 + OBJC_IVAR____TtC9MomentsUI10Suggestion_assets);
  if (v21)
  {
    type metadata accessor for Asset();
    v21 = Array._bridgeToObjectiveC()().super.isa;
  }

  v22 = MEMORY[0x21CE91FC0](0x737465737361, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();

  v23 = *(v2 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType) - 1;
  v24 = MEMORY[0x21CE91FC0](0x6974736567677573, 0xEE00657079546E6FLL);
  [(objc_class *)with.super.isa encodeInteger:v23 forKey:v24];

  v25 = *(v2 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType);
  if (v25 != 65)
  {
    v26 = qword_216590EE0[v25];
    v27 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216575490);
    [(objc_class *)with.super.isa encodeInteger:v26 forKey:v27];
  }

  v28 = *(v2 + OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt);
  v29 = MEMORY[0x21CE91FC0](0x74706D6F7270, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];
}

id Suggestion.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v50 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v52 = v47 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v47 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v54 = v47 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v47 - v18;
  v55 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
  *&v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking] = 0;
  UUID.init()();
  v20 = OBJC_IVAR____TtC9MomentsUI10Suggestion_id;
  v53 = *(v12 + 32);
  v53(&v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_id], v19, v11);
  v51 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSUUID);
  v21 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v21)
  {
    goto LABEL_6;
  }

  v22 = v21;
  v48 = *(v12 + 56);
  v49 = v12 + 56;
  v48(v10, 1, 1, v11);
  v47[2] = lazy protocol witness table accessor for type UUID and conformance UUID();
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  v23 = *(v12 + 48);
  if (v23(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  v47[0] = v23;
  v47[1] = v12 + 48;
  v24 = v53;
  v53(v15, v10, v11);
  v25 = v54;
  v24(v54, v15, v11);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v26 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v26)
  {
    (*(v12 + 8))(v25, v11);

    goto LABEL_7;
  }

  v27 = v26;
  v28 = [v26 integerValue];

  SuggestionType.init(rawValue:)(v28);
  if (v57 == 13)
  {
    (*(v12 + 8))(v54, v11);
LABEL_6:

LABEL_7:
    (*(v12 + 8))(&v2[v20], v11);
    type metadata accessor for Suggestion();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType] = v57;
  v30 = a1;
  v31 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v31 || (v32 = v31, v33 = [v31 integerValue], v32, v30 = a1, SuggestionSubType.init(rawValue:)(v33), v34 = v57, v57 == 65))
  {
    v34 = 65;
  }

  v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType] = v34;
  v35 = v54;
  (*(v12 + 16))(&v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID], v54, v11);
  type metadata accessor for Asset();
  *&v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_assets] = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  type metadata accessor for TemplatedString();
  *&v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_title] = NSCoder.decodeObject<A>(of:forKey:)();
  *&v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle] = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for DateRange();
  *&v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange] = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for SuggestionRanking();
  v36 = NSCoder.decodeObject<A>(of:forKey:)();
  v37 = 1;
  v38 = v55;
  swift_beginAccess();
  v39 = *&v2[v38];
  *&v2[v38] = v36;

  *&v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt] = NSCoder.decodeObject<A>(of:forKey:)();
  v40 = NSCoder.decodeObject<A>(of:forKey:)();
  (*(v12 + 8))(v35, v11);
  if (v40)
  {
    v37 = 1;
    v41 = v50;
    v42 = v48;
    v48(v50, 1, 1, v11);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v43 = (v47[0])(v41, 1, v11);
    v44 = v52;
    if (v43 != 1)
    {
      v53(v52, v41, v11);
      v37 = 0;
    }
  }

  else
  {
    v44 = v52;
    v42 = v48;
  }

  v42(v44, v37, 1, v11);
  outlined init with take of UUID?(v44, &v2[OBJC_IVAR____TtC9MomentsUI10Suggestion_transferID]);
  v45 = type metadata accessor for Suggestion();
  v56.receiver = v2;
  v56.super_class = v45;
  v46 = objc_msgSendSuper2(&v56, sel_init);

  return v46;
}

id Suggestion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Suggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Suggestion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall Suggestion.suppressFromRecommended()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xA8))();
  if (!v1)
  {
    return;
  }

  v2 = v1[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory];
  if (v2 == 1)
  {
    v3 = 3;
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v3 = 4;
LABEL_9:
    v23 = v3;
    v4 = *&v1[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
    v5 = v1[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore + 8];
    v6 = *&v1[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
    v7 = v1[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore + 8];
    v21 = *&v1[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    v8 = v1[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];
    v9 = v1[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive];
    v10 = *&v1[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
    v11 = v1[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab + 8];
    v22 = v1;
    v12 = type metadata accessor for SuggestionRanking();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
    *v14 = v4;
    v14[8] = v5;
    v15 = &v13[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
    *v15 = v6;
    v15[8] = v7;
    v13[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory] = v23;
    v16 = &v13[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    *v16 = v21;
    v16[8] = v8;
    v13[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive] = v9;
    v17 = &v13[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
    *v17 = v10;
    v17[8] = v11;
    v24.receiver = v13;
    v24.super_class = v12;
    v18 = objc_msgSendSuper2(&v24, sel_init);

    v19 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
    swift_beginAccess();
    v20 = *(v0 + v19);
    *(v0 + v19) = v18;

    return;
  }
}

Swift::Void __swiftcall Suggestion.suppressFromEverywhere()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xA8))();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore);
    v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore + 8);
    v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore);
    v5 = *(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore + 8);
    v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore);
    v19 = *(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8);
    v7 = *(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive);
    v8 = *(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab);
    v9 = *(v1 + OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab + 8);
    v20 = v1;
    v10 = type metadata accessor for SuggestionRanking();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
    *v12 = v2;
    v12[8] = v3;
    v13 = &v11[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
    *v13 = v4;
    v13[8] = v5;
    v11[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory] = 4;
    v14 = &v11[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    *v14 = v6;
    v14[8] = v19;
    v11[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive] = v7;
    v15 = &v11[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
    *v15 = v8;
    v15[8] = v9;
    v21.receiver = v11;
    v21.super_class = v10;
    v16 = objc_msgSendSuper2(&v21, sel_init);

    v17 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
    swift_beginAccess();
    v18 = *(v0 + v17);
    *(v0 + v17) = v16;
  }
}

unint64_t specialized Suggestion.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Suggestion.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type InterfaceType and conformance InterfaceType()
{
  result = lazy protocol witness table cache variable for type InterfaceType and conformance InterfaceType;
  if (!lazy protocol witness table cache variable for type InterfaceType and conformance InterfaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceType and conformance InterfaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InterfaceType and conformance InterfaceType;
  if (!lazy protocol witness table cache variable for type InterfaceType and conformance InterfaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceType and conformance InterfaceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionType and conformance SuggestionType()
{
  result = lazy protocol witness table cache variable for type SuggestionType and conformance SuggestionType;
  if (!lazy protocol witness table cache variable for type SuggestionType and conformance SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionType and conformance SuggestionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionType and conformance SuggestionType;
  if (!lazy protocol witness table cache variable for type SuggestionType and conformance SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionType and conformance SuggestionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionSubType and conformance SuggestionSubType()
{
  result = lazy protocol witness table cache variable for type SuggestionSubType and conformance SuggestionSubType;
  if (!lazy protocol witness table cache variable for type SuggestionSubType and conformance SuggestionSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSubType and conformance SuggestionSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionSubType and conformance SuggestionSubType;
  if (!lazy protocol witness table cache variable for type SuggestionSubType and conformance SuggestionSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSubType and conformance SuggestionSubType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys;
  if (!lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys;
  if (!lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys;
  if (!lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys;
  if (!lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Suggestion.CodingKeys and conformance Suggestion.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InterfaceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InterfaceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionSubType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC0)
  {
    goto LABEL_17;
  }

  if (a2 + 64 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 64) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 64;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x41;
  v8 = v6 - 65;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionSubType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 64) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC0)
  {
    v4 = 0;
  }

  if (a2 > 0xBF)
  {
    v5 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 64;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for Suggestion()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t getEnumTagSinglePayload for Suggestion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Suggestion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static MediaThirdPartyCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaThirdPartyCollectionbD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MediaThirdPartyCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id MediaThirdPartyCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MediaThirdPartyCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MediaThirdPartyCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaThirdPartyCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized MediaThirdPartyCollectionViewCell.init(frame:)()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v0 = static MutableMediaThirdPartyViewModel.empty;
  v10 = 2;
  v1 = objc_allocWithZone(type metadata accessor for MediaThirdPartyView());
  v2 = MediaThirdPartyView.init(viewModel:style:)(v0, &v10);
  if (v2)
  {
    v3 = v2;
    v4 = CollectionViewAssetCell.init(assetView:)(v3);
    v5 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
    v6 = v4;
    v7 = v5();

    [v7 addSubview_];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v6;
  }

  else
  {
    v9 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v9);
  }
}

uint64_t type metadata accessor for MediaThirdPartyCollectionViewCell()
{
  result = type metadata singleton initialization cache for MediaThirdPartyCollectionViewCell;
  if (!type metadata singleton initialization cache for MediaThirdPartyCollectionViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DBAssetModel.ColorScheme.subscript.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x277CDF3D0])
  {
    *a2 = 0;
  }

  else if (result == *MEMORY[0x277CDF3C0])
  {
    *a2 = 1;
  }

  else
  {
    *a2 = 2;
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t DBAssetModel.AssetDataHelper.subscript.getter(uint64_t a1)
{
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v16 = v1[1];
  v17 = v7;
  v8 = v1[2];
  v14 = v1[3];
  v15 = v8;
  (*(v4 + 16))(v6, a1, v3);
  v9 = (*(v4 + 88))(v6, v3);
  if (v9 == *MEMORY[0x277CDF3D0])
  {
    v10 = 0xE700000000000000;
    v11 = 0x746867696C2D2DLL;
  }

  else
  {
    if (v9 != *MEMORY[0x277CDF3C0])
    {
      (*(v4 + 8))(v6, v3);
      return 0;
    }

    v10 = 0xE600000000000000;
    v11 = 0x6B7261642D2DLL;
  }

  v18 = v17;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v12 = DBAssetModel.AssetDataHelper.subscript.getter(v11, v10);

  return v12;
}

id one-time initialization function for fullDateTimeFormatter()
{
  result = closure #1 in variable initialization expression of static MomentDateFormatter.fullDateTimeFormatter();
  static MomentDateFormatter.fullDateTimeFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static MomentDateFormatter.fullDateTimeFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setFormattingContext_];
  v6 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x800000021657A450);
  [v4 setLocalizedDateFormatFromTemplate_];

  return v4;
}

id one-time initialization function for yearDateTimeFormatter()
{
  result = closure #1 in variable initialization expression of static MomentDateFormatter.yearDateTimeFormatter();
  static MomentDateFormatter.yearDateTimeFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static MomentDateFormatter.yearDateTimeFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setFormattingContext_];
  v6 = MEMORY[0x21CE91FC0](0x1000000000000013, 0x800000021657A430);
  [v4 setLocalizedDateFormatFromTemplate_];

  return v4;
}

id one-time initialization function for fullDateWithTimeFormatter()
{
  result = closure #1 in variable initialization expression of static MomentDateFormatter.fullDateWithTimeFormatter();
  static MomentDateFormatter.fullDateWithTimeFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static MomentDateFormatter.fullDateWithTimeFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setFormattingContext_];
  v6 = MEMORY[0x21CE91FC0](0x1000000000000014, 0x800000021657A410);
  [v4 setLocalizedDateFormatFromTemplate_];

  return v4;
}

void one-time initialization function for dayNameFormatter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v7);
  [v11 setLocale_];

  [v11 setFormattingContext_];
  v13 = MEMORY[0x21CE91FC0](a2, a3);
  [v11 setLocalizedDateFormatFromTemplate_];

  *a4 = v11;
}

id one-time initialization function for relativeDateFormatter()
{
  result = closure #1 in variable initialization expression of static MomentDateFormatter.relativeDateFormatter();
  static MomentDateFormatter.relativeDateFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static MomentDateFormatter.relativeDateFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setUnitsStyle_];
  [v4 setDateTimeStyle_];
  [v4 setFormattingContext_];
  return v4;
}

id one-time initialization function for durationWithHourMinuteSecondFormatter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v5 setUnitsStyle_];
  [v5 setAllowedUnits_];
  result = [v5 setZeroFormattingBehavior_];
  *a3 = v5;
  return result;
}

void one-time initialization function for dayNameEnglishFormatter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v10 = MEMORY[0x21CE91FC0](a2, 0xE400000000000000);
  [v9 setDateFormat_];

  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [v9 setLocale_];

  *a3 = v9;
}

uint64_t DBSuggestion.renderAssets(qos:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for Date();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[19] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](DBSuggestion.renderAssets(qos:), 0, 0);
}

uint64_t DBSuggestion.renderAssets(qos:)()
{
  v136 = v0;
  v1 = *(v0 + 104);
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  v2 = PersistentModel.modelContext.getter();
  *(v0 + 208) = v2;
  v3 = (*(*v1 + 1112))();
  *(v0 + 216) = v3;
  if (!v3)
  {
LABEL_6:
    if (one-time initialization token for processing != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_7;
  }

  v4 = v3;
  v5 = (*(**(v0 + 104) + 1160))();
  if (!v5)
  {

    goto LABEL_6;
  }

  v6 = v5;
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  (*(**(v0 + 104) + 344))();
  if ((*(v7 + 48))(v9, 1, v8) == 1)
  {
    v10 = *(v0 + 152);

    outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd);
    goto LABEL_6;
  }

  (*(*(v0 + 168) + 32))(*(v0 + 200), *(v0 + 152), *(v0 + 160));
  v127 = v4;
  if (v6 >> 62)
  {
    v17 = __CocoaSet.count.getter();
    v129 = v2;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v129 = v2;
    if (v17)
    {
LABEL_15:
      v18 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CE93180](v18, v6);
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v18 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            swift_once();
LABEL_7:
            v11 = type metadata accessor for Logger();
            __swift_project_value_buffer(v11, static CommonLogger.processing);
            v12 = Logger.logObject.getter();
            v13 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v12, v13))
            {
              v14 = swift_slowAlloc();
              *v14 = 0;
              _os_log_impl(&dword_21607C000, v12, v13, "[DBSuggestion.render] no assets", v14, 2u);
              MEMORY[0x21CE94770](v14, -1, -1);
            }

LABEL_10:

            v15 = *(v0 + 8);

            return v15(0);
          }
        }

        type metadata accessor for DBAssetData();
        lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
        v20 = PersistentModel.modelContext.getter();
        if (v20)
        {
          *(v0 + 80) = v20;
          if (!v2)
          {

LABEL_31:
            if (one-time initialization token for processing != -1)
            {
              swift_once();
            }

            v22 = type metadata accessor for Logger();
            __swift_project_value_buffer(v22, static CommonLogger.processing);
            v23 = Logger.logObject.getter();
            v24 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_21607C000, v23, v24, "[DBSuggestion.render] unequal context", v25, 2u);
              v26 = v25;
              v2 = v129;
              MEMORY[0x21CE94770](v26, -1, -1);
            }

            goto LABEL_17;
          }

          *(v0 + 88) = v2;
          type metadata accessor for ModelContext();
          lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type ModelContext and conformance ModelContext, MEMORY[0x277CDD490]);
          v21 = dispatch thunk of static Equatable.== infix(_:_:)();

          if ((v21 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (v2)
        {
          goto LABEL_31;
        }

LABEL_17:

        ++v18;
      }

      while (v19 != v17);
    }
  }

  v27 = (v127 & 0xFFFFFFFFFFFFFF8);
  if (v127 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v29 = 0;
    v30 = *(v0 + 168);
    v31 = v127 & 0xC000000000000001;
    v124 = (v30 + 16);
    v122 = v27;
    v123 = (v30 + 8);
    v121 = i;
    while (1)
    {
      while (1)
      {
        if (v31)
        {
          v32 = MEMORY[0x21CE93180](v29, v127);
          v33 = __OFADD__(v29++, 1);
          if (v33)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v29 >= v27[2])
          {
            goto LABEL_80;
          }

          v33 = __OFADD__(v29++, 1);
          if (v33)
          {
            goto LABEL_79;
          }
        }

        v34 = *(v32 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
        if (v34)
        {
          break;
        }

        if (v29 == i)
        {
          goto LABEL_82;
        }
      }

      v131 = v32;
      v27 = MEMORY[0x277D84F90];
      v133 = MEMORY[0x277D84F90];
      v35 = *(v34 + 16);
      if (v35)
      {
        break;
      }

LABEL_54:
      v38 = *(v0 + 192);
      v125 = *(v0 + 160);
      v39 = *v124;
      (*v124)(v38, v131 + OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID);
      v40 = type metadata accessor for Asset();
      v41 = objc_allocWithZone(v40);
      v42 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
      *&v41[v42] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v43 = &v41[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
      *v43 = 0;
      v43[8] = 1;
      (v39)(&v41[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v38, v125);
      *&v41[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = v27;
      swift_beginAccess();
      *v43 = 0;
      v43[8] = 1;
      *(v0 + 40) = v41;
      *(v0 + 48) = v40;
      v27 = objc_msgSendSuper2((v0 + 40), sel_init);
      (*v123)(v38, v125);
      v44 = *(v27 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);

      if (v44)
      {
        if (v44 >> 62)
        {
          v45 = __CocoaSet.count.getter();
        }

        else
        {
          v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v46 = 0;
        while (v45 != v46)
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x21CE93180](v46, v44);
          }

          else
          {
            if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_78;
            }

            v47 = *(v44 + 8 * v46 + 32);
          }

          v27 = v47;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_77;
          }

          v48 = (*((*MEMORY[0x277D85000] & *v47) + 0x1D8))();

          ++v46;
          if ((v48 & 1) == 0)
          {

            DBSuggestion.isFresh.getter();
            v49 = 0;
            goto LABEL_89;
          }
        }
      }

      else
      {
      }

      i = v121;
      v27 = v122;
      v31 = v127 & 0xC000000000000001;
      if (v29 == v121)
      {
        goto LABEL_82;
      }
    }

    v36 = 0;
    while (v36 < *(v34 + 16))
    {
      v134 = *(v34 + 32 + 8 * v36);

      closure #1 in DBAsset.asMutableAsset.getter(&v134, &v135);

      if (v135)
      {
        MEMORY[0x21CE92260](v37);
        if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v27 = v133;
      }

      if (v35 == ++v36)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

LABEL_82:
  if (DBSuggestion.isFresh.getter())
  {

    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 200);
    v51 = *(v0 + 168);
    v52 = *(v0 + 176);
    v53 = *(v0 + 160);
    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static CommonLogger.processing);
    (*(v51 + 16))(v52, v50, v53);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 136);
      v58 = *(v0 + 120);
      v126 = *(v0 + 112);
      v59 = *(v0 + 104);
      v60 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v135 = v128;
      *v60 = 67109890;
      *(v60 + 4) = DBSuggestion.isFresh.getter();

      *(v60 + 8) = 1024;
      *(v60 + 10) = 1;
      *(v60 + 14) = 2080;
      *(v0 + 72) = v59;
      swift_getKeyPath();
      lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      lazy protocol witness table accessor for type Date? and conformance <A> A?();
      PersistentModel.getValue<A>(forKey:)();

      v61 = (*(v58 + 48))(v57, 1, v126);
      v62 = *(v0 + 136);
      if (v61)
      {
        v63 = 7104878;
        outlined destroy of UTType?(v62, &_s10Foundation4DateVSgMd);
        v64 = 0xE300000000000000;
      }

      else
      {
        v109 = *(v0 + 120);
        v110 = *(v0 + 128);
        v111 = *(v0 + 112);
        (*(v109 + 16))(v110, v62, v111);
        outlined destroy of UTType?(v62, &_s10Foundation4DateVSgMd);
        v63 = Date.debugDescription.getter();
        v64 = v112;
        (*(v109 + 8))(v110, v111);
      }

      v114 = *(v0 + 168);
      v113 = *(v0 + 176);
      v115 = *(v0 + 160);
      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v135);

      *(v60 + 16) = v116;
      *(v60 + 24) = 2080;
      v117 = UUID.uuidString.getter();
      v119 = v118;
      v89 = *(v114 + 8);
      v89(v113, v115);
      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, &v135);

      *(v60 + 26) = v120;
      _os_log_impl(&dword_21607C000, v55, v56, "[DBSuggestion.render] skipping render, suggestion isFresh=%{BOOL}d, allAssetsRendered=%{BOOL}d, modified=%s suggestionID=%s", v60, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v128, -1, -1);
      MEMORY[0x21CE94770](v60, -1, -1);
    }

    else
    {
      v87 = *(v0 + 168);
      v86 = *(v0 + 176);
      v88 = *(v0 + 160);

      v89 = *(v87 + 8);
      v89(v86, v88);
    }

    v89(*(v0 + 200), *(v0 + 160));
    goto LABEL_10;
  }

  v49 = 1;
LABEL_89:
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 184);
  v67 = *(v0 + 160);
  v68 = *(v0 + 168);
  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static CommonLogger.processing);
  (*(v68 + 16))(v66, v65, v67);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = *(v0 + 144);
    v73 = *(v0 + 120);
    v130 = *(v0 + 112);
    v74 = *(v0 + 104);
    v75 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v135 = v132;
    *v75 = 67109890;
    *(v75 + 4) = DBSuggestion.isFresh.getter();

    *(v75 + 8) = 1024;
    *(v75 + 10) = v49;
    *(v75 + 14) = 2080;
    *(v0 + 64) = v74;
    swift_getKeyPath();
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    lazy protocol witness table accessor for type Date? and conformance <A> A?();
    PersistentModel.getValue<A>(forKey:)();

    v76 = (*(v73 + 48))(v72, 1, v130);
    v77 = *(v0 + 144);
    if (v76)
    {
      v78 = 7104878;
      outlined destroy of UTType?(*(v0 + 144), &_s10Foundation4DateVSgMd);
      v79 = 0xE300000000000000;
    }

    else
    {
      v91 = *(v0 + 120);
      v90 = *(v0 + 128);
      v92 = *(v0 + 112);
      (*(v91 + 16))(v90, *(v0 + 144), v92);
      outlined destroy of UTType?(v77, &_s10Foundation4DateVSgMd);
      v78 = Date.debugDescription.getter();
      v79 = v93;
      (*(v91 + 8))(v90, v92);
    }

    v94 = *(v0 + 184);
    v95 = *(v0 + 160);
    v96 = *(v0 + 168);
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v135);

    *(v75 + 16) = v97;
    *(v75 + 24) = 2080;
    v98 = UUID.uuidString.getter();
    v100 = v99;
    v101 = *(v96 + 8);
    v84 = v96 + 8;
    v83 = v101;
    v101(v94, v95);
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &v135);

    *(v75 + 26) = v102;
    _os_log_impl(&dword_21607C000, v70, v71, "[DBSuggestion.render] proceeding with render, suggestion isFresh=%{BOOL}d, allAssetsRendered=%{BOOL}d, modified=%s suggestionID=%s", v75, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v132, -1, -1);
    MEMORY[0x21CE94770](v75, -1, -1);
  }

  else
  {
    v80 = *(v0 + 184);
    v81 = *(v0 + 160);
    v82 = *(v0 + 168);

    v85 = *(v82 + 8);
    v84 = v82 + 8;
    v83 = v85;
    v85(v80, v81);
  }

  *(v0 + 224) = v84;
  *(v0 + 232) = v83;
  v103 = *(v0 + 200);
  v104 = *(v0 + 96);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI7DBAssetCSgMd);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI7DBAssetCGMd);
  v107 = swift_task_alloc();
  *(v0 + 240) = v107;
  v107[2] = v127;
  v107[3] = v103;
  v107[4] = v104;
  v108 = swift_task_alloc();
  *(v0 + 248) = v108;
  *v108 = v0;
  v108[1] = DBSuggestion.renderAssets(qos:);
  v138 = v106;

  return MEMORY[0x282200600](v0 + 56, v105, v106, 0, 0, &async function pointer to partial apply for closure #2 in DBSuggestion.renderAssets(qos:), v107, v105);
}

{

  return MEMORY[0x2822009F8](DBSuggestion.renderAssets(qos:), 0, 0);
}

{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[20];

  v4 = v0[7];
  v1(v2, v3);

  v5 = v0[1];

  return v5(v4);
}

BOOL DBSuggestion.isFresh.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v17 = v0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v13 = v12;
    v14 = *(v5 + 8);
    v14(v8, v4);
    v15 = specialized static DefaultsManager.Processing.assetRenderFreshnessTolerance.getter();
    v14(v10, v4);
    return v13 < v15;
  }
}

uint64_t closure #2 in DBSuggestion.renderAssets(qos:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for UUID();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v5[11] = *(v7 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v5[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy9MomentsUI7DBAssetCSg_GMd);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in DBSuggestion.renderAssets(qos:), 0, 0);
}

uint64_t closure #2 in DBSuggestion.renderAssets(qos:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v65 = v3;
  v4 = v3[6];
  if (v4 >> 62)
  {
    a1 = __CocoaSet.count.getter();
    v63 = a1;
    if (!a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v63 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v63)
    {
      goto LABEL_21;
    }
  }

  if (v63 < 1)
  {
    __break(1u);
    return MEMORY[0x282200308](a1, a2, a3);
  }

  v5 = 0;
  v62 = v4 & 0xC000000000000001;
  v54 = v3[6] + 32;
  v6 = v3[10];
  v7 = (v6 + 16);
  v56 = v6;
  v55 = (v6 + 8);
  v57 = (v6 + 16);
  do
  {
    if (v62)
    {
      v21 = MEMORY[0x21CE93180](v5, v3[6]);
    }

    else
    {
      v21 = *(v54 + 8 * v5);
    }

    if (DBAsset.shouldSkipRendering.getter())
    {
      if (one-time initialization token for processing != -1)
      {
        swift_once();
      }

      v22 = v3[12];
      v23 = v3[9];
      v24 = v3[7];
      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static CommonLogger.processing);
      v26 = *v7;
      (*v7)(v22, v24, v23);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v61 = v28;
        v29 = v3[13];
        v59 = v3[12];
        v30 = v3[9];
        v31 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v64 = v60;
        *v31 = 136315650;
        v26(v29, v21 + OBJC_IVAR____TtC9MomentsUI7DBAsset_id, v30);
        lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        v35 = *v55;
        (*v55)(v29, v30);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v64);

        *(v31 + 4) = v36;
        *(v31 + 12) = 2080;
        if (*(v21 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
        {
          v37 = *(v21 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
        }

        else
        {
          v37 = MEMORY[0x277D84F90];
        }

        v38 = MEMORY[0x21CE922D0](v37, &type metadata for DBAssetModelType);
        v40 = v39;

        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v64);

        *(v31 + 14) = v41;
        *(v31 + 22) = 2080;
        v42 = UUID.uuidString.getter();
        v44 = v43;
        v35(v59, v30);
        v7 = v57;
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v64);

        *(v31 + 24) = v45;
        _os_log_impl(&dword_21607C000, v27, v61, "[DBSuggestion.render] skip asset %s, renderedAndFresh, representations=%s, suggestionID=%s", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v60, -1, -1);
        MEMORY[0x21CE94770](v31, -1, -1);
      }

      else
      {
        v46 = v3[12];
        v47 = v3[9];

        (*v55)(v46, v47);
      }

      v48 = v3[14];
      v49 = type metadata accessor for TaskPriority();
      (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v21;
      v18 = &async function pointer to partial apply for closure #1 in closure #2 in DBSuggestion.renderAssets(qos:);
      v19 = v48;
    }

    else
    {
      v9 = v3[13];
      v8 = v3[14];
      v11 = v3[8];
      v10 = v3[9];
      v12 = v3[7];
      v13 = type metadata accessor for TaskPriority();
      v58 = v21;
      v14 = *(v13 - 8);
      (*(v14 + 16))(v8, v11, v13);
      v15 = v13;
      v7 = v57;
      (*(v14 + 56))(v8, 0, 1, v15);
      (*(v56 + 16))(v9, v12, v10);
      v16 = (*(v56 + 80) + 40) & ~*(v56 + 80);
      v17 = swift_allocObject();
      *(v17 + 2) = 0;
      *(v17 + 3) = 0;
      *(v17 + 4) = v58;
      (*(v56 + 32))(&v17[v16], v9, v10);
      v18 = &async function pointer to partial apply for closure #2 in closure #2 in DBSuggestion.renderAssets(qos:);
      v19 = v8;
      v20 = v17;
    }

    _sScG7addTask8priority9operationyScPSg_xyYaYAcntF9MomentsUI7DBAssetCSg_Tg5(v19, v18, v20);
    ++v5;
    outlined destroy of UTType?(v3[14], &_sScPSgMd);
  }

  while (v63 != v5);
LABEL_21:
  v50 = MEMORY[0x277D84F90];
  v3[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI7DBAssetCSgMd);
  TaskGroup.makeAsyncIterator()();
  v3[18] = v50;
  v3[19] = v50;
  v51 = lazy protocol witness table accessor for type TaskGroup<DBAsset?>.Iterator and conformance TaskGroup<A>.Iterator();
  v52 = swift_task_alloc();
  v3[20] = v52;
  *v52 = v3;
  v52[1] = closure #2 in DBSuggestion.renderAssets(qos:);
  a2 = v3[15];
  a1 = (v3 + 3);
  a3 = v51;

  return MEMORY[0x282200308](a1, a2, a3);
}

uint64_t closure #2 in DBSuggestion.renderAssets(qos:)()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[16];
    v3 = v2[17];
    v5 = v2[15];

    (*(v4 + 8))(v3, v5);

    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = closure #2 in DBSuggestion.renderAssets(qos:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *&v0[1].f64[1];
  if (v1 == 1)
  {
    v2 = v0[9].f64[0];
    v3 = v0[2].f64[0];
    (*(*&v0[8].f64[0] + 8))(*&v0[8].f64[1], *&v0[7].f64[1]);
    **&v3 = v2;

    v4 = *&v0->f64[1];

    return v4();
  }

  else
  {
    if (v1)
    {
      f64 = v0[1].f64;

      MEMORY[0x21CE92260](v7);
      if (*((*f64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*f64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      outlined consume of DBManager??(v1);
      v8 = vld1q_dup_f64(f64);
    }

    else
    {
      v8 = v0[9];
    }

    v0[9] = v8;
    v9 = lazy protocol witness table accessor for type TaskGroup<DBAsset?>.Iterator and conformance TaskGroup<A>.Iterator();
    v10 = swift_task_alloc();
    *&v0[10].f64[0] = v10;
    *v10 = v0;
    v10[1] = closure #2 in DBSuggestion.renderAssets(qos:);
    v11 = v0[7].f64[1];

    return MEMORY[0x282200308](&v0[1].f64[1], *&v11, v9);
  }
}

uint64_t closure #1 in closure #2 in DBSuggestion.renderAssets(qos:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #2 in DBSuggestion.renderAssets(qos:), 0, 0);
}

uint64_t closure #1 in closure #2 in DBSuggestion.renderAssets(qos:)()
{
  **(v0 + 16) = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in closure #2 in DBSuggestion.renderAssets(qos:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for UUID();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for TaskPriority();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #2 in DBSuggestion.renderAssets(qos:), 0, 0);
}

uint64_t closure #2 in closure #2 in DBSuggestion.renderAssets(qos:)()
{
  static TaskPriority.background.getter();
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = closure #2 in closure #2 in DBSuggestion.renderAssets(qos:);
  v2 = v0[19];
  v3 = v0[4];

  return DBAsset.render(suggestionID:qos:)(v3, v2);
}

{
  v130 = v0;
  v1 = *(v0 + 168);
  if (v1)
  {
    if (DBAsset.fullyRendered.getter())
    {
      v2 = *(v0 + 104);
      v3 = *(v0 + 112);
      v4 = *(v0 + 96);
      DBAsset.modifiedDate.getter(v4);
      if ((*(v3 + 48))(v4, 1, v2) == 1)
      {
        outlined destroy of UTType?(*(v0 + 96), &_s10Foundation4DateVSgMd);
      }

      else
      {
        v52 = *(v0 + 120);
        v53 = *(v0 + 128);
        v54 = *(v0 + 104);
        v55 = *(v0 + 112);
        (*(v55 + 32))(v53, *(v0 + 96), v54);
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v57 = v56;
        v58 = *(v55 + 8);
        v58(v52, v54);
        v59 = specialized static DefaultsManager.Processing.assetRenderFreshnessTolerance.getter();
        v58(v53, v54);
        if (v57 < v59)
        {
LABEL_37:
          if (one-time initialization token for processing != -1)
          {
            swift_once();
          }

          v85 = *(v0 + 80);
          v86 = *(v0 + 40);
          v87 = *(v0 + 48);
          v88 = *(v0 + 32);
          v89 = type metadata accessor for Logger();
          __swift_project_value_buffer(v89, static CommonLogger.processing);
          v90 = *(v87 + 16);
          v90(v85, v88, v86);

          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.info.getter();

          v93 = os_log_type_enabled(v91, v92);
          v94 = *(v0 + 80);
          if (v93)
          {
            v124 = v92;
            v95 = *(v0 + 72);
            logc = v91;
            v97 = *(v0 + 40);
            v96 = *(v0 + 48);
            v98 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v129 = v121;
            *v98 = 136315906;
            v90(v95, v1 + OBJC_IVAR____TtC9MomentsUI7DBAsset_id, v97);
            lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v99 = dispatch thunk of CustomStringConvertible.description.getter();
            v120 = v94;
            v101 = v100;
            v102 = *(v96 + 8);
            v102(v95, v97);
            v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, &v129);

            *(v98 + 4) = v103;
            *(v98 + 12) = 2080;
            v104 = dispatch thunk of CustomStringConvertible.description.getter();
            v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v129);

            *(v98 + 14) = v106;
            *(v98 + 22) = 2080;
            if (*(v1 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
            {
              v107 = *(v1 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
            }

            else
            {
              v107 = MEMORY[0x277D84F90];
            }

            v108 = MEMORY[0x21CE922D0](v107, &type metadata for DBAssetModelType);
            v110 = v109;

            v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v129);

            *(v98 + 24) = v111;
            *(v98 + 32) = 2080;
            v112 = UUID.uuidString.getter();
            v114 = v113;
            v102(v120, v97);
            v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &v129);

            *(v98 + 34) = v115;
            _os_log_impl(&dword_21607C000, logc, v124, "[DBSuggestion.render] hash changed, using new asset %s, old %s representations=%s, suggestionID=%s", v98, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v121, -1, -1);
            MEMORY[0x21CE94770](v98, -1, -1);
          }

          else
          {
            v117 = *(v0 + 40);
            v116 = *(v0 + 48);

            (*(v116 + 8))(v94, v117);
          }

          **(v0 + 16) = *(v0 + 168);
          goto LABEL_49;
        }
      }

      if (DBAsset.fullyRendered.getter() & 1) != 0 && (DBAsset.isDeeplyTheSameAs(_:)(v1))
      {
        if (one-time initialization token for processing != -1)
        {
          swift_once();
        }

        v60 = *(v0 + 88);
        v61 = *(v0 + 40);
        v62 = *(v0 + 48);
        v63 = *(v0 + 32);
        v64 = type metadata accessor for Logger();
        __swift_project_value_buffer(v64, static CommonLogger.processing);
        (*(v62 + 16))(v60, v63, v61);

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.info.getter();

        v67 = os_log_type_enabled(v65, v66);
        v68 = *(v0 + 88);
        v70 = *(v0 + 40);
        v69 = *(v0 + 48);
        if (v67)
        {
          v71 = *(v0 + 24);
          v72 = swift_slowAlloc();
          logb = swift_slowAlloc();
          v129 = logb;
          *v72 = 136315650;
          v123 = v66;
          lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v129);

          *(v72 + 4) = v75;
          *(v72 + 12) = 2080;
          if (*(v71 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
          {
            v76 = *(v71 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
          }

          else
          {
            v76 = MEMORY[0x277D84F90];
          }

          v77 = MEMORY[0x21CE922D0](v76, &type metadata for DBAssetModelType);
          v79 = v78;

          v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v129);

          *(v72 + 14) = v80;
          *(v72 + 22) = 2080;
          v81 = UUID.uuidString.getter();
          v83 = v82;
          (*(v69 + 8))(v68, v70);
          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v129);

          *(v72 + 24) = v84;
          _os_log_impl(&dword_21607C000, v65, v123, "[DBSuggestion.render] same asset hash, reusing %s, representations=%s, suggestionID=%s", v72, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](logb, -1, -1);
          MEMORY[0x21CE94770](v72, -1, -1);
        }

        else
        {

          (*(v69 + 8))(v68, v70);
        }

LABEL_48:
        **(v0 + 16) = *(v0 + 24);

        goto LABEL_49;
      }

      goto LABEL_37;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x60))())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    if ((*(v6 + 88))(ObjectType, v6))
    {
      if (one-time initialization token for processing != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 64);
      v9 = *(v0 + 40);
      v10 = *(v0 + 48);
      v11 = *(v0 + 32);
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static CommonLogger.processing);
      (*(v10 + 16))(v8, v11, v9);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();

      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 64);
      v17 = *(v0 + 40);
      v18 = *(v0 + 48);
      if (v15)
      {
        v19 = *(v0 + 24);
        v122 = *(v0 + 40);
        v20 = swift_slowAlloc();
        log = swift_slowAlloc();
        v129 = log;
        *v20 = 136315394;
        if (*(v19 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
        {
          v21 = *(v19 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
        }

        else
        {
          v21 = MEMORY[0x277D84F90];
        }

        v22 = MEMORY[0x21CE922D0](v21, &type metadata for DBAssetModelType);
        v24 = v23;

        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v129);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2080;
        v26 = UUID.uuidString.getter();
        v28 = v27;
        (*(v18 + 8))(v16, v122);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v129);

        *(v20 + 14) = v29;
        _os_log_impl(&dword_21607C000, v13, v14, "[DBSuggestion.render] device locked, reusing previously rendered asset, representations=%s, suggestionID=%s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](log, -1, -1);
        MEMORY[0x21CE94770](v20, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v18 + 8))(v16, v17);
      }

      goto LABEL_48;
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 48);
  v30 = *(v0 + 56);
  v33 = *(v0 + 32);
  v32 = *(v0 + 40);
  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static CommonLogger.processing);
  (*(v31 + 16))(v30, v33, v32);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  v37 = os_log_type_enabled(v35, v36);
  v39 = *(v0 + 48);
  v38 = *(v0 + 56);
  v40 = *(v0 + 40);
  if (v37)
  {
    v41 = *(v0 + 24);
    v42 = swift_slowAlloc();
    loga = swift_slowAlloc();
    v129 = loga;
    *v42 = 136315394;
    if (*(v41 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
    {
      v43 = *(v41 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
    }

    v44 = MEMORY[0x21CE922D0](v43, &type metadata for DBAssetModelType);
    v46 = v45;

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v129);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v48 = UUID.uuidString.getter();
    v50 = v49;
    (*(v39 + 8))(v38, v40);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v129);

    *(v42 + 14) = v51;
    _os_log_impl(&dword_21607C000, v35, v36, "[DBSuggestion.render] deleting previously rendered asset, representations=%s, suggestionID=%s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](loga, -1, -1);
    MEMORY[0x21CE94770](v42, -1, -1);
  }

  else
  {

    (*(v39 + 8))(v38, v40);
  }

  **(v0 + 16) = 0;
LABEL_49:

  v118 = *(v0 + 8);

  return v118();
}

uint64_t closure #2 in closure #2 in DBSuggestion.renderAssets(qos:)(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 168) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](closure #2 in closure #2 in DBSuggestion.renderAssets(qos:), 0, 0);
}

uint64_t key path getter for DBSuggestion._modifiedDate : DBSuggestion()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t key path setter for DBSuggestion._modifiedDate : DBSuggestion(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  outlined init with copy of Date?(a1, &v9[-v5]);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of UTType?(v6, &_s10Foundation4DateVSgMd);
}

uint64_t partial apply for closure #2 in DBSuggestion.renderAssets(qos:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in DBSuggestion.renderAssets(qos:)(a1, a2, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #2 in DBSuggestion.renderAssets(qos:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #2 in closure #2 in DBSuggestion.renderAssets(qos:)(a1, v6, v7, v8, v1 + v5);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<DBAsset?>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<DBAsset?>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<DBAsset?>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVy9MomentsUI7DBAssetCSg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<DBAsset?>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in DBSuggestion.renderAssets(qos:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #2 in DBSuggestion.renderAssets(qos:)(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MapItem.geoMapItem()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](MapItem.geoMapItem(), 0, 0);
}

{
  v1 = (*(**(v0 + 152) + 104))();
  *(v0 + 160) = v1;
  *(v0 + 168) = v2;
  if (v2 >> 60 != 15)
  {
    v3 = v1;
    v4 = v2;
    v5 = (*(**(v0 + 152) + 128))();
    if (v5 != 2 && (v5 & 1) != 0)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D0EBD0]) init];
      *(v0 + 176) = v6;
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 184) = isa;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = MapItem.geoMapItem();
      v8 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10GEOMapItem_pSgs5Error_pGMd);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned GEOMapItem?, @unowned NSError?) -> () with result type GEOMapItem?;
      *(v0 + 104) = &block_descriptor_6;
      *(v0 + 112) = v8;
      [v6 resolveMapItemFromHandle:isa completionHandler:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    outlined consume of Data?(v3, v4);
  }

  v9 = *(v0 + 8);

  return v9(0);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = MapItem.geoMapItem();
  }

  else
  {
    v2 = MapItem.geoMapItem();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[22];
  v1 = v0[23];
  outlined consume of Data?(v0[20], v0[21]);

  v3 = v0[18];
  v4 = v0[1];

  return v4(v3);
}

{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  swift_willThrow();
  outlined consume of Data?(v5, v3);

  v6 = v0[1];

  return v6(0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned GEOMapItem?, @unowned NSError?) -> () with result type GEOMapItem?(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    swift_unknownObjectRetain();

    return MEMORY[0x282200950](v5);
  }
}

id SnowGlobeView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SnowGlobeView.init()()
{
  *&v0[OBJC_IVAR____TtC9MomentsUI13SnowGlobeView_roundViews] = MEMORY[0x277D84F90];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnowGlobeView();
  return objc_msgSendSuper2(&v2, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

Swift::Void __swiftcall SnowGlobeView.update(images:)(Swift::OpaquePointer images)
{
  v2 = v1;
  (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  v24 = MEMORY[0x277D84F90];
  if (!(images._rawValue >> 62))
  {
    v4 = *((images._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &unk_27821E000;
  do
  {
    v8 = v5;
    while (1)
    {
      if ((images._rawValue & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CE93180](v8, images._rawValue);
      }

      else
      {
        if (v8 >= *((images._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(images._rawValue + v8 + 4);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v11 = Image.uiImage.getter();
      if (v11)
      {
        break;
      }

      ++v8;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    v12 = v11;
    v23 = [objc_allocWithZone(type metadata accessor for RoundImageView()) v7[420]];
    v13 = *&v23[OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView];
    v14 = v12;
    v15 = v13;
    v16 = [v14 imageWithRenderingMode_];
    [v15 setImage_];

    MEMORY[0x21CE92260]();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v24;
    v7 = &unk_27821E000;
  }

  while (v5 != v4);
LABEL_21:
  v17 = OBJC_IVAR____TtC9MomentsUI13SnowGlobeView_roundViews;
  *&v2[OBJC_IVAR____TtC9MomentsUI13SnowGlobeView_roundViews] = v6;

  v18 = *&v2[v17];
  if (v18 >> 62)
  {
    v19 = __CocoaSet.count.getter();
    if (!v19)
    {
      return;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      return;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v19; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x21CE93180](i, v18);
      }

      else
      {
        v21 = *(v18 + 8 * i + 32);
      }

      v22 = v21;
      [v2 addSubview_];
    }
  }
}

Swift::Void __swiftcall SnowGlobeView.removeAllViews()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI13SnowGlobeView_roundViews;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI13SnowGlobeView_roundViews);
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CE93180](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 removeFromSuperview];
  }

LABEL_10:
  *(v0 + v1) = MEMORY[0x277D84F90];
}

id SnowGlobeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SnowGlobeView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI13SnowGlobeView_roundViews) = MEMORY[0x277D84F90];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SnowGlobeView.layoutSubviews()()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for SnowGlobeView();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC9MomentsUI13SnowGlobeView_roundViews;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI13SnowGlobeView_roundViews);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    while (1)
    {
      [v0 frame];
      v5 = v3;
      v6 = v4;
      v7 = *(v0 + v1);
      if (v7 >> 62)
      {
        v15 = v3;
        v16 = v4;
        v8 = __CocoaSet.count.getter();
        v6 = v16;
        v5 = v15;
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = specialized static SnowGlobeEffect.layoutRects(for:count:)(v8, v5, v6);
      v1 = *(v0 + v1);
      v10 = v1 >> 62 ? __CocoaSet.count.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v10)
      {
        break;
      }

      v0 = 0;
      v11 = (v9 + 56);
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x21CE93180](v0, v1);
        }

        else
        {
          if (v0 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v12 = *(v1 + 8 * v0 + 32);
        }

        v13 = v12;
        v14 = (v0 + 1);
        if (__OFADD__(v0, 1))
        {
          break;
        }

        if (v0 < *(v9 + 16))
        {
          [v12 setFrame_];
        }

        ++v0;
        v11 += 4;
        if (v14 == v10)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      if (__CocoaSet.count.getter() < 1)
      {
        return;
      }
    }

LABEL_17:
  }
}

id SnowGlobeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SnowGlobeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnowGlobeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

MomentsUI::DBMapModel::MapUserPlaceType_optional __swiftcall DBMapModel.MapUserPlaceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if ((rawValue + 1) < 6)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DBMapModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle);

  return v1;
}

uint64_t DBMapModel.locationName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName);

  return v1;
}

uint64_t DBMapModel.city.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city);

  return v1;
}

unint64_t DBMapModel.maps.getter()
{
  v1 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children);
  result = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  while (1)
  {
    if (v4 == v1)
    {
      if (result >> 62)
      {
        goto LABEL_13;
      }

      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return result;
      }

LABEL_10:

      return 0;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5 >> 60 == 1)
    {

      MEMORY[0x21CE92260](v6);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v9;
    }
  }

  __break(1u);
LABEL_13:
  v7 = result;
  v8 = __CocoaSet.count.getter();
  result = v7;
  if (!v8)
  {
    goto LABEL_10;
  }

  return result;
}

MomentsUI::DBMapModel::AssetDataKeys_optional __swiftcall DBMapModel.AssetDataKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMapModel.AssetDataKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBMapModel.AssetDataKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEC0000006B726144;
  }

  else
  {
    v2 = 0xED0000746867694CLL;
  }

  if (*a2)
  {
    v3 = 0xEC0000006B726144;
  }

  else
  {
    v3 = 0xED0000746867694CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBMapModel.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBMapModel.AssetDataKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBMapModel.AssetDataKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBMapModel.AssetDataKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMapModel.AssetDataKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DBMapModel.AssetDataKeys(void *a1@<X8>)
{
  v2 = 0xED0000746867694CLL;
  if (*v1)
  {
    v2 = 0xEC0000006B726144;
  }

  *a1 = 0x6870796C476E6970;
  a1[1] = v2;
}

unint64_t DBMapModel.CodingKeys.rawValue.getter(char a1)
{
  result = 0x656C746974627573;
  switch(a1)
  {
    case 1:
      result = 0x656475746974616CLL;
      break;
    case 2:
      result = 0x64757469676E6F6CLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 2037672291;
      break;
    case 6:
      result = 0x6D65744970616DLL;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
      result = 0x657079546E6970;
      break;
    case 9:
      result = 0x6567616D496E6970;
      break;
    case 10:
      result = 0x4372657473756C63;
      break;
    case 11:
      result = 0x726F6C6F436E6970;
      break;
    case 12:
      result = 0x726F6C6F436E6970;
      break;
    case 13:
      result = 0x726F6C6F436E6970;
      break;
    case 14:
      result = 0x726F6C6F436E6970;
      break;
    case 15:
      result = 0x746573734170616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBMapModel.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = DBMapModel.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == DBMapModel.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBMapModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBMapModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBMapModel.CodingKeys()
{
  DBMapModel.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBMapModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBMapModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBMapModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBMapModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DBMapModel.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = DBMapModel.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBMapModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBMapModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBMapModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBMapModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int DBMapModel.metadataHash.getter()
{
  Hasher.init()();
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_latitude);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CE937F0](*&v1);
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_longitude);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CE937F0](*&v2);
  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_horizontalUncertainty);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CE937F0](*&v3);
  String.hash(into:)();
  String.hash(into:)();
  v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapItem);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    (*(*v4 + 200))(v7);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_confidenceLevel);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CE937F0](*&v5);
  return Hasher.finalize()();
}

uint64_t DBMapModel.singularLocation.getter()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_latitude);
  v6 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_longitude);
  v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapItem);
  v8 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_confidenceLevel);
  v9 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_horizontalUncertainty);
  v10 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_clusterCount);
  v11 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName + 8);
  v24 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName);
  v12 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city + 8);
  v25 = *(v0 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city);
  v26 = v7;
  v13 = *(v2 + 16);
  v13(v4, v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval, v1);
  type metadata accessor for MapLocation();
  v14 = swift_allocObject();

  UUID.init()();
  *(v14 + OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem) = 0;
  *(v14 + OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType) = 0;
  *(v14 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) = v8;
  *(v14 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty) = v9;
  v27 = v10;
  *(v14 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) = v10;
  v15 = (v14 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
  *v15 = v24;
  v15[1] = v11;
  v16 = (v14 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
  v17 = v26;
  *v16 = v25;
  v16[1] = v12;
  *(v14 + OBJC_IVAR____TtC9MomentsUI11MapLocation_latitude) = v5;
  *(v14 + OBJC_IVAR____TtC9MomentsUI11MapLocation_longitude) = v6;
  v13((v14 + OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval), v4, v1);
  if (v17 && v8 > 0.9)
  {
    v18 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
    swift_beginAccess();
    *(v14 + v18) = v17;

    v19 = 2;
  }

  else
  {
    v20 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
    swift_beginAccess();
    *(v14 + v20) = 0;
    v19 = 3;
  }

  if (v27 <= 1)
  {
    v21 = v19;
  }

  else
  {
    v21 = 4;
  }

  v22 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  swift_beginAccess();
  *(v14 + v22) = v21;
  (*(v2 + 8))(v4, v1);
  return v14;
}

uint64_t DBMapModel.MapAssetDataHelper.string2Data.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DBMapModel.MapAssetDataHelper.subscript.getter(unsigned __int8 *a1)
{
  v2 = *a1;
  (*v1)(&v6);
  if (v2)
  {
    v3 = 0xEC0000006B726144;
  }

  else
  {
    v3 = 0xED0000746867694CLL;
  }

  v4 = DBAssetModel.AssetDataHelper.subscript.getter(0x6870796C476E6970, v3);

  outlined destroy of DBAssetModel.AssetDataHelper(&v6);
  return v4;
}

uint64_t (*DBMapModel.MapAssetDataHelper.dataFutureFor(_:)(unsigned __int8 *a1))()
{
  v2 = *a1;
  (*v1)(v7);
  if (v2)
  {
    v3 = 0xEC0000006B726144;
  }

  else
  {
    v3 = 0xED0000746867694CLL;
  }

  v4 = DBAssetModel.AssetDataHelper.dataFutureFor(_:)(0x6870796C476E6970, v3);

  v6[0] = v7[0];
  v6[1] = v7[1];
  v6[2] = v7[2];
  v6[3] = v7[3];
  outlined destroy of DBAssetModel.AssetDataHelper(v6);
  return v4;
}

uint64_t DBMapModel.MapAssetDataHelper.init(string2Data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DBMapModel.mapAssetData.getter@<X0>(void *a1@<X8>)
{
  *a1 = partial apply for closure #1 in DBMapModel.mapAssetData.getter;
  a1[1] = v1;
}

uint64_t closure #1 in DBMapModel.mapAssetData.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return outlined init with copy of DBAssetModel.AssetDataHelper(v9, v8);
}

id DBMapModel.pinGlyph.getter()
{
  v1 = v0;
  v2 = (*v0 + 544);
  v3 = *v2;
  v4 = (*v2)(v38);
  (*&v38[0])(&v41, v4);
  v5 = DBAssetModel.AssetDataHelper.dataFutureFor(_:)(0x6870796C476E6970, 0xED0000746867694CLL);
  v7 = v6;
  v40[0] = v41;
  v40[1] = v42;
  v40[2] = v43;
  v40[3] = v44;
  outlined destroy of DBAssetModel.AssetDataHelper(v40);

  v9 = (v3)(&v39, v8);
  v39(v38, v9);
  v10 = DBAssetModel.AssetDataHelper.dataFutureFor(_:)(0x6870796C476E6970, 0xEC0000006B726144);
  v12 = v11;
  v41 = v38[0];
  v42 = v38[1];
  v43 = v38[2];
  v44 = v38[3];
  outlined destroy of DBAssetModel.AssetDataHelper(&v41);

  if (v5)
  {
    v34 = *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinImageIsGlyph);
    v35 = *(v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
    v13 = type metadata accessor for Image();
    v14 = objc_allocWithZone(v13);
    UUID.init()();
    v15 = OBJC_IVAR____TtC9MomentsUI5Image__primaryURL;
    v16 = type metadata accessor for URL();
    v17 = *(*(v16 - 8) + 56);
    v17(&v14[v15], 1, 1, v16);
    v17(&v14[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v16);
    v18 = &v14[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
    *v18 = v5;
    v18[1] = v7;
    v19 = &v14[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
    *v19 = v10;
    v19[1] = v12;
    v20 = &v14[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
    *v20 = 0;
    v20[1] = 0;
    v21 = &v14[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
    *v21 = 0;
    v21[1] = 0;
    v14[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = v34 & 1;
    v14[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v35;
    v36 = v14;
    v22 = &v36;
  }

  else
  {
    if (!v10)
    {
      return 0;
    }

    v23 = *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinImageIsGlyph);
    v24 = *(v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
    v13 = type metadata accessor for Image();
    v25 = objc_allocWithZone(v13);

    UUID.init()();
    v26 = OBJC_IVAR____TtC9MomentsUI5Image__primaryURL;
    v27 = type metadata accessor for URL();
    v28 = *(*(v27 - 8) + 56);
    v28(&v25[v26], 1, 1, v27);
    v28(&v25[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v27);
    v29 = &v25[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
    *v29 = v10;
    v29[1] = v12;
    v30 = &v25[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
    *v30 = v10;
    v30[1] = v12;
    v31 = &v25[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
    *v31 = 0;
    v31[1] = 0;
    v32 = &v25[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
    *v32 = 0;
    v32[1] = 0;
    v25[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = v23 & 1;
    v25[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v24;
    v37.receiver = v25;
    v22 = &v37;
  }

  v22->super_class = v13;
  return [(objc_super *)v22 init];
}

double DBMapModel.pinColor.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorR);
  v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorG);
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorB);
  v5 = *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorA);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t DBMapModel.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI10DBMapModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for DBMapModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v28[0]) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = (v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v28[0]) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_latitude) = v13;
    LOBYTE(v28[0]) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_longitude) = v14;
    LOBYTE(v28[0]) = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_horizontalUncertainty) = v15;
    LOBYTE(v28[0]) = 4;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = (v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName);
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v28[0]) = 5;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = (v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city);
    *v20 = v19;
    v20[1] = v21;
    type metadata accessor for MapItem();
    v29 = 6;
    lazy protocol witness table accessor for type MapItem and conformance MapItem(&lazy protocol witness table cache variable for type MapItem and conformance MapItem, type metadata accessor for MapItem);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapItem) = v28[0];
    LOBYTE(v28[0]) = 7;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_confidenceLevel) = v22;
    v29 = 8;
    lazy protocol witness table accessor for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinType) = v28[0];
    LOBYTE(v28[0]) = 9;
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinImageIsGlyph) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v28[0]) = 10;
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_clusterCount) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v28[0]) = 11;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorR) = v23;
    LOBYTE(v28[0]) = 12;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorG) = v24;
    LOBYTE(v28[0]) = 13;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorB) = v25;
    LOBYTE(v28[0]) = 14;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorA) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4UUIDVGMd);
    v29 = 15;
    lazy protocol witness table accessor for type [String : UUID] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapAssetDataIDs) = v28[0];
    KeyedDecodingContainer.superDecoder()();
    v3 = DBAssetModel.init(from:)(v28);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t DBMapModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI10DBMapModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10[0]) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[0] = *(v3 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapItem);
    v11 = 6;
    type metadata accessor for MapItem();
    lazy protocol witness table accessor for type MapItem and conformance MapItem(&lazy protocol witness table cache variable for type MapItem and conformance MapItem, type metadata accessor for MapItem);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10[0]) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = *(v3 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinType);
    v11 = 8;
    lazy protocol witness table accessor for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10[0]) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[0] = *(v3 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapAssetDataIDs);
    v11 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4UUIDVGMd);
    lazy protocol witness table accessor for type [String : UUID] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    KeyedEncodingContainer.superEncoder()();
    DBAssetModel.encode(to:)(v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DBMapModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subMaps:subtitle:latitude:longitude:horizontalUncertainty:locationName:city:mapItem:confidenceLevel:pinType:pinImageIsGlyph:clusterCount:pinColorR:pinColorG:pinColorB:pinColorA:mapAssetDataIDs:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (**a23)(void, void, void), uint64_t a24, char *a25, unsigned __int8 a26, unsigned int (**a27)(uint64_t, uint64_t, uint64_t), uint64_t a28, unsigned __int8 *a29)
{
  swift_allocObject();
  v42 = specialized DBMapModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subMaps:subtitle:latitude:longitude:horizontalUncertainty:locationName:city:mapItem:confidenceLevel:pinType:pinImageIsGlyph:clusterCount:pinColorR:pinColorG:pinColorB:pinColorA:mapAssetDataIDs:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);

  return v42;
}

uint64_t DBMapModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subMaps:subtitle:latitude:longitude:horizontalUncertainty:locationName:city:mapItem:confidenceLevel:pinType:pinImageIsGlyph:clusterCount:pinColorR:pinColorG:pinColorB:pinColorA:mapAssetDataIDs:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (**a23)(void, void, void), uint64_t a24, char *a25, unsigned __int8 a26, unsigned int (**a27)(uint64_t, uint64_t, uint64_t), uint64_t a28, unsigned __int8 *a29)
{
  v30 = specialized DBMapModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subMaps:subtitle:latitude:longitude:horizontalUncertainty:locationName:city:mapItem:confidenceLevel:pinType:pinImageIsGlyph:clusterCount:pinColorR:pinColorG:pinColorB:pinColorA:mapAssetDataIDs:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);

  return v30;
}

uint64_t DBMapModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:subMaps:subtitle:mapLocation:pinColor:pinGlyph:renderState:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14, unsigned __int8 *a15)
{
  v108 = a7;
  v99 = a6;
  v100 = a5;
  v107 = a3;
  v110 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v91 = &v88 - v19;
  v90 = type metadata accessor for DateInterval();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v109 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v88 - v26;
  v28 = *a13;
  v29 = *(a13 + 8);
  v30 = *(a13 + 16);
  v31 = *(a13 + 24);
  v93 = *(a13 + 32);
  v94 = *a15;
  v106 = a14;
  v32 = specialized static DBMapModel.pinGlyph2DB(_:)(a14);
  v96 = v33;
  v104 = a8;
  v34 = specialized static DBAssetModel.baseImage2DB(_:)(a8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112[0] = v32;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v34, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v112);

  v95 = v112[0];
  v101 = v22;
  v36 = v22;
  v37 = v107;
  v38 = *(v36 + 16);
  v97 = v27;
  v105 = a1;
  v38(v27, a1, v21);
  v98 = v25;
  v102 = v21;
  v38(v25, v110, v21);
  if (v37)
  {
    v92 = v37;
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v92 = static ScreenSize.zero;
  }

  v39 = v108;
  v40 = v90;
  v41 = *(a4 + 16);
  if (v41)
  {
    v112[0] = MEMORY[0x277D84F90];
    v42 = v37;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
    v43 = v112[0];
    v44 = *(v112[0] + 16);
    v45 = 32;
    do
    {
      v46 = *(a4 + v45);
      v112[0] = v43;
      v47 = *(v43 + 24);
      if (v44 >= v47 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v44 + 1, 1);
        v43 = v112[0];
      }

      *(v43 + 16) = v44 + 1;
      *(v43 + v44 + 32) = v46;
      ++v45;
      ++v44;
      --v41;
    }

    while (v41);

    v37 = v107;
    v39 = v108;
  }

  else
  {
    v48 = v37;

    v43 = MEMORY[0x277D84F90];
  }

  v49 = v91;
  outlined init with copy of DateInterval?(v39, v91);
  v50 = v89;
  v51 = *(v89 + 48);
  v52 = v51(v49, 1, v40);
  v53 = v106;
  if (v52 != 1)
  {
    (*(v50 + 32))(v109, v49, v40);
    if (a12)
    {
      goto LABEL_17;
    }

LABEL_20:
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0xE000000000000000;
    v69 = 0.0;
    v70 = 0.0;
    v71 = 0xE000000000000000;
    v63 = 0.0;
    v60 = 0.0;
    LOBYTE(v112[0]) = 1;
    if (v53)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  DateInterval.init()();
  if (v51(v49, 1, v40) != 1)
  {
    outlined destroy of UTType?(v49, &_s10Foundation12DateIntervalVSgMd);
  }

  if (!a12)
  {
    goto LABEL_20;
  }

LABEL_17:
  v58 = *(*a12 + 168);

  v60 = v58(v59);

  v61 = *(*a12 + 192);

  v63 = v61(v62);

  if (*(a12 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8))
  {
    v64 = *(a12 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
    v107 = *(a12 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name + 8);
  }

  else
  {
    v64 = 0;
    v107 = 0xE000000000000000;
  }

  v74 = *(a12 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city + 8);
  v91 = v64;
  v75 = v39;
  if (v74)
  {
    v66 = *(a12 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
    v68 = v74;
  }

  else
  {
    v66 = 0;
    v68 = 0xE000000000000000;
  }

  v70 = *(a12 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty);
  v76 = *(*a12 + 216);

  v65 = v76(v77);

  v69 = *(a12 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel);
  v78 = *(*a12 + 240);

  v78(v112, v79);

  v39 = v75;
  v53 = v106;
  v71 = v107;
  v67 = v91;
  ++LOBYTE(v112[0]);
  if (v106)
  {
LABEL_28:
    v72 = v53[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph];
    if (a12)
    {
      goto LABEL_29;
    }

LABEL_22:
    v73 = 0;
    goto LABEL_30;
  }

LABEL_21:
  v72 = 2;
  if (!a12)
  {
    goto LABEL_22;
  }

LABEL_29:
  v73 = *(a12 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount);
LABEL_30:
  v80 = a11;
  v57.n128_u64[0] = 0;
  v56.n128_u64[0] = 0;
  v55.n128_u64[0] = 0;
  v54.n128_u64[0] = 0;
  if ((v93 & 1) == 0)
  {
    v57.n128_u64[0] = v31;
    v56.n128_u64[0] = v30;
    v55.n128_u64[0] = v29;
    v54.n128_u64[0] = v28;
  }

  if (!a11)
  {
    v80 = 0xE000000000000000;
    a10 = 0;
  }

  if (v99)
  {
    v82 = v99;
  }

  else
  {
    v82 = 0xE000000000000000;
  }

  if (v99)
  {
    v83 = v100;
  }

  else
  {
    v83 = 0;
  }

  v111[0] = v94;
  v84 = (*(v103 + 568))(v97, v98, v92, v43, v83, v82, v109, v95, v60, v63, v70, v69, v54, v55, v56, v57, a9, a10, v80, v67, v71, v66, v68, v65, v112, v72, v73, v96, v111);

  outlined destroy of UTType?(v39, &_s10Foundation12DateIntervalVSgMd);
  v85 = v102;
  v86 = *(v101 + 8);
  v86(v110, v102);
  v86(v105, v85);
  return v84;
}

uint64_t DBMapModel.__ivar_destroyer()
{
}

uint64_t DBMapModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBMapModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

BOOL specialized static DBMapModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_latitude) != *(a2 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_latitude) || *(a1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_longitude) != *(a2 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_longitude) || *(a1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_horizontalUncertainty) != *(a2 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_horizontalUncertainty))
  {
    return 0;
  }

  v2 = *(a1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName) == *(a2 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName) && *(a1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName + 8) == *(a2 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName + 8);
  if (v2 || (v3 = a1, v4 = a2, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0))
  {
    v7 = *(a1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city) == *(a2 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city) && *(a1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city + 8) == *(a2 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city + 8);
    if (v7 || (v8 = a1, v9 = a2, v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v9, v11 = v10, a1 = v8, (v11 & 1) != 0))
    {
      v12 = *(a1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapItem);
      v13 = *(a2 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapItem);
      if (v12)
      {
        if (v13)
        {
          v14 = a1;
          v15 = a2;

          v16 = specialized static MapItem.== infix(_:_:)(v12, v13);

          a1 = v14;
          a2 = v15;
          if (v16)
          {
            return *(a1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_confidenceLevel) == *(a2 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_confidenceLevel);
          }
        }
      }

      else if (!v13)
      {
        return *(a1 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_confidenceLevel) == *(a2 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_confidenceLevel);
      }
    }
  }

  return 0;
}

unint64_t specialized DBMapModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMapModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMapModel.CodingKeys and conformance DBMapModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBMapModel()
{
  result = type metadata singleton initialization cache for DBMapModel;
  if (!type metadata singleton initialization cache for DBMapModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType()
{
  result = lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType;
  if (!lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType;
  if (!lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType;
  if (!lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType;
  if (!lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMapModel.MapUserPlaceType and conformance DBMapModel.MapUserPlaceType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MapItem and conformance MapItem(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized DBMapModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subMaps:subtitle:latitude:longitude:horizontalUncertainty:locationName:city:mapItem:confidenceLevel:pinType:pinImageIsGlyph:clusterCount:pinColorR:pinColorG:pinColorB:pinColorA:mapAssetDataIDs:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (**a23)(void, void, void), uint64_t a24, char *a25, unsigned __int8 a26, unsigned int (**a27)(uint64_t, uint64_t, uint64_t), uint64_t a28, unsigned __int8 *a29)
{
  *&v160 = a8;
  v148 = a7;
  v140 = a6;
  v138 = a5;
  v137 = a4;
  v150 = a3;
  v146 = a2;
  v147 = a1;
  *&v162 = a28;
  v156 = a27;
  LODWORD(v155) = a26;
  v152 = a23;
  v38 = a17;
  v151 = *v29;
  v135 = type metadata accessor for Date();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v40 - 8);
  v159 = &v130 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v42 - 8);
  v158 = &v130 - v43;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v139 = *(v157 - 8);
  v44 = MEMORY[0x28223BE20](v157);
  v132 = &v130 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v131 = &v130 - v46;
  v145 = type metadata accessor for DateInterval();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v130 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for UUID();
  v154 = *(v161 - 8);
  v48 = MEMORY[0x28223BE20](v161);
  v153 = &v130 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v142 = &v130 - v51;
  MEMORY[0x28223BE20](v50);
  v141 = &v130 - v52;
  v53 = *a25;
  v136 = *a29;
  v54 = (v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle);
  *v54 = a18;
  v54[1] = a19;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_latitude) = a9;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_longitude) = a10;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_horizontalUncertainty) = a11;
  v55 = (v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName);
  *v55 = a20;
  v55[1] = a21;
  v56 = (v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city);
  v57 = v152;
  *v56 = a22;
  v56[1] = v57;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapItem) = a24;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_confidenceLevel) = a12;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinType) = v53;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinImageIsGlyph) = v155;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_clusterCount) = v156;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorR) = a13;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorG) = a14;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorB) = a15;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_pinColorA) = a16;
  v149 = v29;
  *(v29 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapAssetDataIDs) = v162;
  if (a17)
  {
    v58 = a17 & 0xFFFFFFFFFFFFFF8;
    if (a17 >> 62)
    {
      goto LABEL_50;
    }

    v59 = *((a17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v59)
    {
      v60 = 0;
      v61 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x21CE93180](v60, v38);
          v63 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v60 >= *(v58 + 16))
          {
            goto LABEL_49;
          }

          v62 = *(v38 + 8 * v60 + 32);

          v63 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            v59 = __CocoaSet.count.getter();
            goto LABEL_4;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
        }

        v65 = *(v61 + 2);
        v64 = *(v61 + 3);
        if (v65 >= v64 >> 1)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v61);
        }

        *(v61 + 2) = v65 + 1;
        *&v61[8 * v65 + 32] = v62 | 0x1000000000000000;
        ++v60;
        if (v63 == v59)
        {
          goto LABEL_20;
        }
      }
    }

    v61 = MEMORY[0x277D84F90];
LABEL_20:
  }

  else
  {

    v61 = 0;
  }

  v66 = *(v154 + 16);
  v67 = v141;
  v68 = v161;
  v66(v141, v147, v161);
  v69 = v142;
  v66(v142, v146, v68);
  v152 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v151, &v164);
  LODWORD(v155) = v164;
  v156 = *(v144 + 16);
  v70 = v143;
  v71 = v145;
  (v156)(v143, v148, v145);
  v72 = v149;
  v73 = v149;
  *(v149 + 16) = 0;
  *&v162 = v73 + 2;
  v151 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v66(v72 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id, v67, v68);
  v66(v72 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID, v69, v68);
  *(v72 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v155;
  v74 = v150;
  *(v72 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v150;
  v155 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles;
  *(v72 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v137;
  v75 = (v72 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v76 = v140;
  *v75 = v138;
  v75[1] = v76;
  (v156)(v72 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval, v70, v71);
  v77 = v74;
  v78 = v160;
  v79 = specialized Dictionary.compactMapValues<A>(_:)(v160);
  v137 = 0;
  v80 = MEMORY[0x277D84F90];
  *(v72 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v79;
  v140 = v80;
  if (v61)
  {
    v81 = v61;
  }

  else
  {
    v81 = v80;
  }

  *(v72 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = v81;
  v82 = v79;
  swift_beginAccess();
  *(v72 + 16) = v136;
  v83 = v78 + 64;
  v84 = 1 << *(v78 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v58 = v85 & *(v78 + 64);
  v86 = (v84 + 63) >> 6;
  v87 = (v154 + 48);
  v152 = (v154 + 32);
  v88 = (v139 + 56);
  v155 = (v139 + 48);
  v138 = v82;

  v89 = 0;
  v156 = v87;
  v151 = v86;
  v150 = v88;
  while (v58)
  {
    v38 = v89;
LABEL_32:
    v90 = __clz(__rbit64(v58)) | (v38 << 6);
    v91 = *(*(v78 + 56) + 8 * v90);
    v92 = *(*v91 + 192);
    *&v162 = *(*(v78 + 48) + 16 * v90 + 8);

    v94 = v159;
    v92(v93);
    v95 = v161;
    if ((*v87)(v94, 1, v161) == 1)
    {
      outlined destroy of UTType?(v94, &_s10Foundation4UUIDVSgMd);
      v96 = v158;
      v97 = v157;
      (*v88)(v158, 1, 1, v157);
    }

    else
    {
      v98 = *v152;
      v99 = v83;
      v100 = v153;
      (*v152)(v153, v94, v95);
      v101 = *(v157 + 48);
      v96 = v158;
      v102 = v100;
      v83 = v99;
      v86 = v151;
      v103 = v95;
      v97 = v157;
      v98(v158, v102, v103);
      v88 = v150;
      *(v96 + v101) = v91;
      (*v88)(v96, 0, 1, v97);
    }

    v58 &= v58 - 1;

    if ((*v155)(v96, 1, v97) == 1)
    {
      outlined destroy of UTType?(v96, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
      v89 = v38;
      v87 = v156;
      v78 = v160;
    }

    else
    {
      v104 = v88;
      v87 = v156;
      v105 = v131;
      outlined init with take of (UUID, DBAssetData)(v96, v131);
      outlined init with take of (UUID, DBAssetData)(v105, v132);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v140[2] + 1, 1, v140);
      }

      v78 = v160;
      v107 = v140[2];
      v106 = v140[3];
      if (v107 >= v106 >> 1)
      {
        v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v106 > 1, v107 + 1, 1, v140);
      }

      v108 = v140;
      v140[2] = v107 + 1;
      outlined init with take of (UUID, DBAssetData)(v132, v108 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v107);
      v89 = v38;
      v88 = v104;
    }
  }

  while (1)
  {
    v38 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v38 >= v86)
    {
      break;
    }

    v58 = *(v83 + 8 * v38);
    ++v89;
    if (v58)
    {
      goto LABEL_32;
    }
  }

  v109 = v149;
  if (v140[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v110 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v110 = MEMORY[0x277D84F98];
  }

  v163 = v110;

  v112 = v137;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v111, 1, &v163);
  if (v112)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v113 = v163;
    v114 = swift_allocObject();
    *(v114 + 16) = v113;
    v115 = (v109 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v115 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v115[1] = v114;
    v116 = swift_allocObject();
    *(v116 + 16) = v113;
    v117 = (v109 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v117 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v117[1] = v116;
    v118 = (v109 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v118 = closure #3 in DBAssetModel.init(from:);
    v118[1] = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v138;
    swift_beginAccess();
    v162 = *v115;
    swift_beginAccess();
    v160 = *v117;
    swift_beginAccess();
    v120 = *v118;
    v121 = v118[1];
    v122 = v109 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v122 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v122 + 8) = v119;
    v123 = v160;
    *(v122 + 16) = v162;
    *(v122 + 32) = v123;
    *(v122 + 48) = v120;
    *(v122 + 56) = v121;

    v124 = v133;
    static Date.now.getter();
    v125 = *(v144 + 8);
    v126 = v145;
    v125(v148, v145);
    v127 = *(v154 + 8);
    v128 = v161;
    v127(v146, v161);
    v127(v147, v128);
    v125(v143, v126);
    v127(v142, v128);
    v127(v141, v128);
    (*(v134 + 32))(v109 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v124, v135);
    return v109;
  }

  return result;
}

unint64_t specialized static DBMapModel.pinGlyph2DB(_:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = specialized static DBAssetModel.baseImage2DB(_:)(a1);
  v16 = MEMORY[0x277D84F90];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(v16);
  if (!*(v15 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(0x746867696C2D2DLL, 0xE700000000000000), (v19 & 1) == 0))
  {

    return v17;
  }

  v37 = v9;
  v39 = v5;
  v20 = *(*(v15 + 56) + 8 * v18);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v17;
  v22 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, 0x6870796C476E6970, 0xED0000746867694CLL, isUniquelyReferenced_nonNull_native);
  v17 = v40;
  (*(*v20 + 192))(v22);
  v38 = *(v3 + 48);
  v23 = v38(v14, 1, v2);
  v36 = v3;
  if (v23 == 1)
  {
    outlined destroy of UTType?(v14, &_s10Foundation4UUIDVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0x6870796C476E6970, 0xED0000746867694CLL, v12);
    outlined destroy of UTType?(v12, &_s10Foundation4UUIDVSgMd);
    v24 = v39;
    if (!*(v15 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = v39;
    (*(v3 + 32))(v39, v14, v2);
    v25 = v41;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v25;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x6870796C476E6970, 0xED0000746867694CLL, v26);
    v41 = v40;
    if (!*(v15 + 16))
    {
LABEL_11:

      return v17;
    }
  }

  v27 = specialized __RawDictionaryStorage.find<A>(_:)(0x6B7261642D2DLL, 0xE600000000000000);
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

  v29 = *(*(v15 + 56) + 8 * v27);
  swift_retain_n();

  v30 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v17;
  v31 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, 0x6870796C476E6970, 0xEC0000006B726144, v30);
  v17 = v40;
  v32 = v37;
  (*(*v29 + 192))(v31);
  if (v38(v32, 1, v2) == 1)
  {
    outlined destroy of UTType?(v32, &_s10Foundation4UUIDVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0x6870796C476E6970, 0xEC0000006B726144, v12);

    outlined destroy of UTType?(v12, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    (*(v36 + 32))(v24, v32, v2);
    v34 = v41;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v34;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 0x6870796C476E6970, 0xEC0000006B726144, v35);

    v41 = v40;
  }

  return v17;
}

unint64_t lazy protocol witness table accessor for type DBMapModel.AssetDataKeys and conformance DBMapModel.AssetDataKeys()
{
  result = lazy protocol witness table cache variable for type DBMapModel.AssetDataKeys and conformance DBMapModel.AssetDataKeys;
  if (!lazy protocol witness table cache variable for type DBMapModel.AssetDataKeys and conformance DBMapModel.AssetDataKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMapModel.AssetDataKeys and conformance DBMapModel.AssetDataKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DBMapModel.AssetDataKeys] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DBMapModel.AssetDataKeys] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DBMapModel.AssetDataKeys] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI10DBMapModelC13AssetDataKeysOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBMapModel.AssetDataKeys] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DBMapModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DBMapModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with take of (UUID, DBAssetData)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void one-time initialization function for BACKGROUND_COLOR()
{
  v0 = [objc_opt_self() systemIndigoColor];
  v1 = [v0 colorWithAlphaComponent_];

  static Constants.BACKGROUND_COLOR = v1;
}

void one-time initialization function for LABEL_HEIGHT()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withWeight(_:)(*MEMORY[0x277D74420]).super.isa;

  v3 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(0, 0xE000000000000000, isa, 0.0);
  static Constants.LABEL_HEIGHT = *&v3;
}

id PhotoMemoryBanner.bannerLabel.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI17PhotoMemoryBanner_bannerLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PhotoMemoryBanner.bannerLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI17PhotoMemoryBanner_bannerLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall PhotoMemoryBanner.setPublicUI(_:)(Swift::Bool a1)
{
  v3 = objc_opt_self();
  v4 = &selRef_systemBlueColor;
  if (!a1)
  {
    v4 = &selRef_systemIndigoColor;
  }

  v5 = [v3 *v4];
  v6 = [v5 colorWithAlphaComponent_];

  [v1 setBackgroundColor_];

  [v1 setNeedsDisplay];
}

id PhotoMemoryBanner.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PhotoMemoryBanner.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9MomentsUI17PhotoMemoryBanner_bannerLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for PhotoMemoryBanner();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  [v11 setCornerRadius_];

  if (one-time initialization token for BACKGROUND_COLOR != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  PhotoMemoryBanner.initBannerView()();
  return v10;
}

id PhotoMemoryBanner.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PhotoMemoryBanner.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI17PhotoMemoryBanner_bannerLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void PhotoMemoryBanner.initBannerView()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = ObjectType;
  v4 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

  v5 = v1;
  v6 = MEMORY[0x21CE91FC0](0xD000000000000019, 0x8000000216576380);
  v7 = [v4 initWithBundleIdentifier_];

  if (one-time initialization token for iconDescriptor != -1)
  {
    swift_once();
  }

  v8 = static AppIconProvider.iconDescriptor;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in PhotoMemoryBanner.initBannerView();
  *(v9 + 24) = v3;
  v11[4] = _s9MomentsUI15AppIconProviderC11getImageFor16bundleIdentifier10completionySS_ySo7UIImageCSgctFZySo10CGImageRefaSgYbcfU_TA_0;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  v11[3] = &block_descriptor_7;
  v10 = _Block_copy(v11);

  [v7 getCGImageForImageDescriptor:v8 completion:v10];
  _Block_release(v10);
}

uint64_t closure #1 in PhotoMemoryBanner.initBannerView()(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in PhotoMemoryBanner.initBannerView();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_13;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  v18 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x21CE92A50](0, v13, v10, v16);
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

void closure #1 in closure #1 in PhotoMemoryBanner.initBannerView()(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v63 = a1;
      [a3 setImage_];
      [a3 setContentMode_];
      [a3 setClipsToBounds_];
      [a3 _setCornerRadius_];
      [v6 addSubview_];
      v7 = [a3 superview];
      if (v7)
      {
        v8 = v7;
        [a3 setTranslatesAutoresizingMaskIntoConstraints_];
        v9 = [a3 leadingAnchor];
        v10 = [v8 leadingAnchor];
        v11 = [v9 constraintEqualToAnchor_];

        [v11 setConstant_];
        [v11 setActive_];
      }

      v12 = [a3 superview];
      if (v12)
      {
        v13 = v12;
        [a3 setTranslatesAutoresizingMaskIntoConstraints_];
        v14 = [a3 centerYAnchor];
        v15 = [v13 centerYAnchor];
        v16 = [v14 constraintEqualToAnchor_];

        [v16 setConstant_];
        [v16 setActive_];
      }

      v17 = [a3 heightAnchor];
      if (one-time initialization token for LABEL_HEIGHT != -1)
      {
        swift_once();
      }

      v18 = *&static Constants.LABEL_HEIGHT;
      v19 = [v17 constraintEqualToConstant_];

      [v19 setActive_];
      v20 = [a3 widthAnchor];
      v21 = [v20 constraintEqualToConstant_];

      [v21 setActive_];
      v22 = *((*MEMORY[0x277D85000] & *v6) + 0x58);
      v23 = v22();
      v24 = [objc_opt_self() preferredFontForTextStyle_];
      isa = UIFont.withWeight(_:)(*MEMORY[0x277D74420]).super.isa;

      [v23 setFont_];
      v26 = v22();
      v27 = [objc_opt_self() labelColor];
      [v26 setTextColor_];

      v28 = v22();
      [v28 setNumberOfLines_];

      v29 = v22();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = [objc_opt_self() bundleForClass_];
      v64._object = 0x800000021657A6D0;
      v32._countAndFlagsBits = 0xD00000000000001ELL;
      v32._object = 0x800000021657A6B0;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v64._countAndFlagsBits = 0xD00000000000001BLL;
      v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v64);

      MEMORY[0x21CE92100](v34._countAndFlagsBits, v34._object);

      v35 = MEMORY[0x21CE91FC0](32, 0xE100000000000000);

      [v29 setText_];

      v36 = v22();
      [v36 setAdjustsFontSizeToFitWidth_];

      v37 = v22();
      [v37 setAdjustsFontForContentSizeCategory_];

      v38 = v22();
      [v38 setMaximumContentSizeCategory_];

      v39 = v22();
      [v6 addSubview_];

      v40 = v22();
      [v40 setTranslatesAutoresizingMaskIntoConstraints_];
      v41 = [v40 leadingAnchor];
      v42 = [a3 trailingAnchor];
      v43 = [v41 constraintEqualToAnchor_];

      [v43 setConstant_];
      [v43 &selRef:1 setPrefetchDataSource:?];

      v44 = v22();
      v45 = [v44 superview];
      if (v45)
      {
        v46 = v45;
        [v44 setTranslatesAutoresizingMaskIntoConstraints_];
        v47 = [v44 topAnchor];
        v48 = [v46 topAnchor];
        v49 = [v47 &selRef_safeAreaLayoutGuide + 5];

        [v49 setConstant_];
        if (v49)
        {
          [v49 setActive_];
        }

        v50 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      }

      else
      {
        v49 = 0;
        v46 = v44;
        v50 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      }

      v51 = v22();
      v52 = [v51 superview];
      if (v52)
      {
        v53 = v52;
        [v51 setTranslatesAutoresizingMaskIntoConstraints_];
        v54 = [v51 bottomAnchor];
        v55 = [v53 bottomAnchor];
        v56 = [v54 v50[11]];

        if (v56)
        {
          [v56 setConstant_];
          [v56 setActive_];
        }
      }

      else
      {
        v56 = 0;
        v53 = v51;
      }

      v57 = v22();
      v58 = [v57 superview];
      if (v58)
      {
        v59 = v58;
        [v57 setTranslatesAutoresizingMaskIntoConstraints_];
        v60 = [v57 trailingAnchor];
        v61 = [v59 trailingAnchor];
        v62 = [v60 v50[11]];

        [v62 setConstant_];
        [v62 setActive_];

        v6 = v57;
        v57 = v59;
      }

      else
      {
        v62 = v63;
      }
    }
  }
}

id PhotoMemoryBanner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoMemoryBanner();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t DBAssetModel.AssetDataHelper.subscript.getter(_BYTE *a1)
{
  v1 = *a1 == 0;
  if (*a1)
  {
    v2 = 0x6B7261642D2DLL;
  }

  else
  {
    v2 = 0x746867696C2D2DLL;
  }

  if (v1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  v4 = DBAssetModel.AssetDataHelper.subscript.getter(v2, v3);

  return v4;
}

uint64_t DBAssetModel.AssetDataHelper.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = *(v2 + 16);
  v14 = (*v2)(v10);
  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v16 & 1) != 0))
  {
    (*(v6 + 16))(v9, *(v14 + 56) + *(v6 + 72) * v15, v5);

    (*(v6 + 32))(v12, v9, v5);
    v17 = v13(v12);
    (*(v6 + 8))(v12, v5);
    result = v17;
    if (v17)
    {
      return result;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t (*DBAssetModel.AssetDataHelper.dataFutureFor(_:)(uint64_t a1, uint64_t a2))()
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27[-v14];
  v16 = v2[1];
  v28 = *v2;
  v29 = v16;
  v17 = v2[3];
  v30 = v2[2];
  v31 = v17;
  v18 = (v28)(v13);
  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v20 & 1) != 0))
  {
    (*(v6 + 16))(v12, *(v18 + 56) + *(v6 + 72) * v19, v5);

    v21 = *(v6 + 32);
    v21(v15, v12, v5);
    v21(v9, v15, v5);
    v22 = (*(v6 + 80) + 80) & ~*(v6 + 80);
    v23 = swift_allocObject();
    v24 = v29;
    v23[1] = v28;
    v23[2] = v24;
    v25 = v31;
    v23[3] = v30;
    v23[4] = v25;
    v21(v23 + v22, v9, v5);
    outlined init with copy of DBAssetModel.AssetDataHelper(&v28, v27);
    return partial apply for closure #1 in DBAssetModel.AssetDataHelper.dataFutureFor(_:);
  }

  else
  {

    return 0;
  }
}

uint64_t DBAssetModel.assetData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return outlined init with copy of DBAssetModel.AssetDataHelper(v9, v8);
}

uint64_t DBAssetModel.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = v50 - v4;
  v54 = type metadata accessor for Date();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x28223BE20](v6);
  v55 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v58 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC10CodingKeysOGMd);
  *&v60 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v50 - v15;
  v65 = v1;
  *(v1 + 16) = 0;
  v17 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys();
  v18 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v19 = v65;
    type metadata accessor for DBAssetModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v61 = v1 + 16;
    LOBYTE(v64) = 0;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v20 = v59;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v16;
    v22 = *(v58 + 32);
    v23 = v65;
    v50[1] = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
    v59 = v22;
    (v22)(v65 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id, v20, v9);
    LOBYTE(v64) = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50[2] = v9;
    (v59)(v23 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID, v12, v9);
    v63 = 2;
    lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass();
    v50[0] = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v64 == 2)
    {
      v24 = 1;
    }

    else
    {
      v24 = v64 & 1;
    }

    *(v23 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v24;
    type metadata accessor for ScreenSize();
    v63 = 3;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ScreenSize and conformance ScreenSize, type metadata accessor for ScreenSize);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v23 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBAssetModelC5StyleOGMd);
    v63 = 4;
    lazy protocol witness table accessor for type [DBAssetModel.Style] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAssetModel.Style] and conformance <A> [A], lazy protocol witness table accessor for type DBAssetModel.Style and conformance DBAssetModel.Style);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v23 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v64;
    LOBYTE(v64) = 5;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = (v23 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v64) = 6;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    v29 = v55;
    v30 = v14;
    v31 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v57 + 32))(v23 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval, v29, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4UUIDVGMd);
    v63 = 7;
    lazy protocol witness table accessor for type [String : UUID] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v64;
    *(v23 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI16DBAssetModelTypeOGMd);
    v63 = 8;
    lazy protocol witness table accessor for type [DBAssetModelType] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAssetModelType] and conformance <A> [A], lazy protocol witness table accessor for type DBAssetModelType and conformance DBAssetModelType);

    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v64;
    if (!v64)
    {
      v33 = MEMORY[0x277D84F90];
    }

    *(v23 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = v33;
    v63 = 9;
    lazy protocol witness table accessor for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState();
    v34 = v30;
    v35 = v21;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v64;
    v37 = v61;
    swift_beginAccess();
    *v37 = v36 & 1;
    v63 = 10;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = *(v52 + 48);
    if (v38(v53, 1, v54) == 1)
    {
      static Date.distantPast.getter();
      if (v38(v53, 1, v54) != 1)
      {
        outlined destroy of UTType?(v53, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      (*(v52 + 32))(v51, v53, v54);
    }

    v19 = v65;
    (*(v52 + 32))(v65 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v51, v54);
    v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    (*(v60 + 8))(v35, v34);
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    v41 = (v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v41 = partial apply for closure #1 in DBAssetModel.init(from:);
    v41[1] = v40;
    v42 = swift_allocObject();
    *(v42 + 16) = v39;
    v43 = (v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v43 = partial apply for closure #2 in DBAssetModel.init(from:);
    v43[1] = v42;
    v44 = (v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v44 = closure #3 in DBAssetModel.init(from:);
    v44[1] = 0;
    v45 = swift_allocObject();
    *(v45 + 16) = v32;
    swift_beginAccess();
    v61 = *v41;
    swift_beginAccess();
    v60 = *v43;
    swift_beginAccess();
    v46 = *v44;
    v47 = v44[1];
    v48 = v19 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v48 = partial apply for closure #4 in DBAssetModel.init(from:);
    *(v48 + 8) = v45;
    v49 = v60;
    *(v48 + 16) = v61;
    *(v48 + 32) = v49;
    *(v48 + 48) = v46;
    *(v48 + 56) = v47;
  }

  __swift_destroy_boxed_opaque_existential_1(v62);
  return v19;
}

uint64_t DBAssetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
    v13 = 2;
    lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport);
    v13 = 3;
    type metadata accessor for ScreenSize();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ScreenSize and conformance ScreenSize, type metadata accessor for ScreenSize);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles);
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBAssetModelC5StyleOGMd);
    lazy protocol witness table accessor for type [DBAssetModel.Style] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAssetModel.Style] and conformance <A> [A], lazy protocol witness table accessor for type DBAssetModel.Style and conformance DBAssetModel.Style);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    type metadata accessor for DateInterval();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID);
    v13 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4UUIDVGMd);
    lazy protocol witness table accessor for type [String : UUID] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children);
    v13 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI16DBAssetModelTypeOGMd);
    lazy protocol witness table accessor for type [DBAssetModelType] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAssetModelType] and conformance <A> [A], lazy protocol witness table accessor for type DBAssetModelType and conformance DBAssetModelType);
    v9 = KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(*v3 + 200))(&v12, v9);
    v13 = v12;
    v11[15] = 9;
    lazy protocol witness table accessor for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 10;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t static DBAssetModelType.subscript.getter@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  type metadata accessor for DBContactModel();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4 | 0xB000000000000000;
  }

  else
  {
    type metadata accessor for DBLivePhotoModel();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v5 = v6 | 0x9000000000000000;
    }

    else
    {
      type metadata accessor for DBMapModel();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v5 = v7 | 0x1000000000000000;
      }

      else
      {
        type metadata accessor for DBMediaFirstPartyModel();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v5 = v8 | 0x5000000000000000;
        }

        else
        {
          type metadata accessor for DBMediaThirdPartyModel();
          v9 = swift_dynamicCastClass();
          if (v9)
          {
            v5 = v9 | 0x6000000000000000;
          }

          else
          {
            type metadata accessor for DBMotionActivityModel();
            v10 = swift_dynamicCastClass();
            if (v10)
            {
              v5 = v10 | 0x2000000000000000;
            }

            else
            {
              type metadata accessor for DBPhotoModel();
              v11 = swift_dynamicCastClass();
              if (v11)
              {
                v5 = v11 | 0x7000000000000000;
              }

              else
              {
                type metadata accessor for DBReflectionModel();
                v12 = swift_dynamicCastClass();
                if (v12)
                {
                  v5 = v12 | 0x8000000000000000;
                }

                else
                {
                  type metadata accessor for DBPosterModel();
                  v13 = swift_dynamicCastClass();
                  if (v13)
                  {
                    v5 = v13 | 0xC000000000000000;
                  }

                  else
                  {
                    type metadata accessor for DBStateOfMindModel();
                    v14 = swift_dynamicCastClass();
                    if (v14)
                    {
                      v5 = v14 | 0x4000000000000000;
                    }

                    else
                    {
                      type metadata accessor for DBVideoModel();
                      v15 = swift_dynamicCastClass();
                      if (v15)
                      {
                        v5 = v15 | 0xA000000000000000;
                      }

                      else
                      {
                        type metadata accessor for DBWorkoutModel();
                        v16 = swift_dynamicCastClass();
                        if (v16)
                        {
                          v5 = v16 | 0x3000000000000000;
                        }

                        else
                        {
                          v5 = a1;
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

  *a2 = v5;
}

uint64_t DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:)(uint64_t a1, uint64_t a2, char *a3, unsigned int (**a4)(uint64_t, uint64_t, uint64_t), void (**a5)(uint64_t, uint64_t, uint64_t, uint64_t), unsigned int (**a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 *a11)
{
  v12 = v11;
  v101 = a8;
  v110 = a7;
  v109 = a6;
  v108 = a5;
  v107 = a4;
  v102 = a2;
  v106 = a9;
  v98 = type metadata accessor for Date();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v85 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v105 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  *&v113 = &v85 - v23;
  *&v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v24 = *(v111 - 8);
  v25 = MEMORY[0x28223BE20](v111);
  v88 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v86 = &v85 - v27;

  v28 = *a3;
  *(v12 + 16) = 0;
  LODWORD(v104) = *a11;
  v29 = *(v20 + 16);
  v103 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v97 = a1;
  v29(v12 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id, a1, v19);
  v100 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v112 = v19;
  v29(v12 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID, v102, v19);
  *(v12 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v28;
  v30 = v107;
  *(v12 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v107;
  *(v12 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v108;
  v31 = (v12 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v32 = v110;
  *v31 = v109;
  v31[1] = v32;
  v33 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval;
  v34 = type metadata accessor for DateInterval();
  v92 = *(v34 - 8);
  v35 = *(v92 + 16);
  v110 = v33;
  v93 = v34;
  v35(v12 + v33, v101);
  v91 = v30;
  v36 = v106;
  v37 = specialized Dictionary.compactMapValues<A>(_:)(v106);
  v89 = 0;
  *(v12 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v37;
  *(v12 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = a10;
  v38 = 1;
  v39 = v37;
  swift_beginAccess();
  v99 = v12;
  *(v12 + 16) = v104;
  v40 = v36 + 64;
  v41 = 1 << *(v36 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v36 + 64);
  v44 = (v41 + 63) >> 6;
  v109 = (v20 + 48);
  v94 = v20;
  v104 = (v20 + 32);
  v108 = (v24 + 56);
  v87 = v24;
  v107 = (v24 + 48);
  v90 = v39;

  v45 = 0;
  v100 = MEMORY[0x277D84F90];
  v46 = v113;
  v110 = v36 + 64;
  v103 = v44;
LABEL_4:
  v47 = v45;
  if (!v43)
  {
    goto LABEL_6;
  }

  do
  {
    v45 = v47;
LABEL_9:
    v38 = *(*(v36 + 56) + 8 * (__clz(__rbit64(v43)) | (v45 << 6)));
    v48 = *(*v38 + 192);

    v48(v49);
    v50 = v112;
    if ((*v109)(v18, 1, v112) == 1)
    {
      outlined destroy of UTType?(v18, &_s10Foundation4UUIDVSgMd);
      v51 = v111;
      (*v108)(v46, 1, 1, v111);
    }

    else
    {
      v52 = *v104;
      v53 = v105;
      (*v104)(v105, v18, v50);
      v54 = *(v111 + 48);
      v55 = v53;
      v46 = v113;
      v56 = v50;
      v51 = v111;
      v52(v113, v55, v56);
      v44 = v103;
      v36 = v106;
      *(v46 + v54) = v38;
      (*v108)(v46, 0, 1, v51);
    }

    v43 &= v43 - 1;

    if ((*v107)(v46, 1, v51) != 1)
    {
      v57 = v86;
      outlined init with take of (UUID, DBAssetData)(v46, v86);
      outlined init with take of (UUID, DBAssetData)(v57, v88);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v100[2] + 1, 1, v100);
      }

      v59 = v100[2];
      v58 = v100[3];
      v38 = v59 + 1;
      v60 = v87;
      v40 = v110;
      if (v59 >= v58 >> 1)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1, v100);
        v60 = v87;
        v100 = v62;
      }

      v61 = v100;
      v100[2] = v38;
      outlined init with take of (UUID, DBAssetData)(v88, v61 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v59);
      goto LABEL_4;
    }

    outlined destroy of UTType?(v46, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
    v47 = v45;
    v40 = v110;
  }

  while (v43);
  while (1)
  {
LABEL_6:
    v45 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);

      v83 = *(v45 + 8);
      v84 = v112;
      v83(v44 + v103, v112);
      v83(v100 + v44, v84);

      (*(v92 + 8))(v44 + v110, v93);
      type metadata accessor for DBAssetModel();
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_26;
    }

    if (v45 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v45);
    ++v47;
    if (v43)
    {
      goto LABEL_9;
    }
  }

  if (v100[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v63 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v63 = MEMORY[0x277D84F98];
  }

  v64 = v99;
  v65 = v94;
  v114 = v63;

  v67 = v89;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v66, 1, &v114);
  if (!v67)
  {

    v68 = v114;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    v70 = (v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v70 = _s9MomentsUI12DBAssetModelC2id7assetID0F5Class24maximumSupportedViewport15supportedStyles9baseTitle0N12DateInterval0F4Data8children11renderState21renderableContentHashAC10Foundation4UUIDV_AqA0cR0C05AssetH0OAA10ScreenSizeCSayAC5StyleOGSSAO0pQ0VSDySSASGSayAA0cD4TypeOGAC06RenderU0OSSSgtcfcASSgAQcfU1_TA_0;
    v70[1] = v69;
    v71 = swift_allocObject();
    *(v71 + 16) = v68;
    v72 = (v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v72 = _s9MomentsUI12DBAssetModelC2id7assetID0F5Class24maximumSupportedViewport15supportedStyles9baseTitle0N12DateInterval0F4Data8children11renderState21renderableContentHashAC10Foundation4UUIDV_AqA0cR0C05AssetH0OAA10ScreenSizeCSayAC5StyleOGSSAO0pQ0VSDySSASGSayAA0cD4TypeOGAC06RenderU0OSSSgtcfcAO0R0VSgAQcfU2_TA_0;
    v72[1] = v71;
    v73 = (v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v73 = closure #3 in DBAssetModel.init(from:);
    v73[1] = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = v90;
    swift_beginAccess();
    v113 = *v70;
    swift_beginAccess();
    v111 = *v72;
    swift_beginAccess();
    v75 = *v73;
    v76 = v73[1];
    v77 = v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v77 = partial apply for closure #4 in DBAssetModel.init(from:);
    *(v77 + 8) = v74;
    v78 = v111;
    *(v77 + 16) = v113;
    *(v77 + 32) = v78;
    *(v77 + 48) = v75;
    *(v77 + 56) = v76;

    v79 = v95;
    static Date.now.getter();

    (*(v92 + 8))(v101, v93);
    v80 = *(v65 + 8);
    v81 = v112;
    v80(v102, v112);
    v80(v97, v81);
    (*(v96 + 32))(v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v79, v98);
    return v64;
  }

LABEL_26:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t DBAssetModel.deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID, v2);

  v4 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval;
  v5 = type metadata accessor for DateInterval();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return v0;
}

uint64_t DBAssetModel.renderState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t DBAssetModel.renderState.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t DBAssetModel.supportedViewStyles.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t (*DBAssetModel.assetDataLookup.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DBAssetModel.assetDataLookup.modify;
}

uint64_t (*DBAssetModel.assetDataGet.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DBAssetModel.assetDataGet.modify;
}

uint64_t DBAssetModel.assetDataLookup.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t DBAssetModel.assetDataLookup.setter(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  a4(v9);
}

uint64_t (*DBAssetModel.assetURLGet.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DBAssetModel.assetURLGet.modify;
}

uint64_t DBAssetModel.assetDataLookup.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

char *DBAssetModel.dumpAssetData()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0;
    *&v19[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = *&v19[0];
    v5 = (v1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      switch(v7 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v6 = v8;
          break;
        default:
          break;
      }

      v9 = *(*v6 + 328);

      v11 = v9(v10);

      *&v19[0] = v3;
      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v3 = *&v19[0];
      }

      *(v3 + 16) = v13 + 1;
      *(v3 + 8 * v13 + 32) = v11;
      --v2;
    }

    while (v2);
    v0 = v4;
  }

  (*(*v0 + 232))(v18);
  v14 = DBAssetModel.AssetDataHelper.dumpAssetData()();
  v19[0] = v18[0];
  v19[1] = v18[1];
  v19[2] = v18[2];
  v19[3] = v18[3];
  outlined destroy of DBAssetModel.AssetDataHelper(v19);
  *&v18[0] = v14;
  specialized Array.append<A>(contentsOf:)(v3);
  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11DBAssetDataC_SayAFGTt0g5Tf4g_n(*&v18[0]);

  v16 = specialized _copyCollectionToContiguousArray<A>(_:)(v15, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Sequence._copySequenceContents(initializing:));

  return v16;
}

id DBAssetModel.baseImage.getter()
{
  v1 = *(*v0 + 232);
  v1(v53);
  v56 = v53[0];
  v57 = v53[1];
  v58 = v53[2];
  v59 = v53[3];
  v2 = DBAssetModel.AssetDataHelper.dataFutureFor(_:)(0x746867696C2D2DLL, 0xE700000000000000);
  v44 = v3;
  v4 = outlined destroy of DBAssetModel.AssetDataHelper(v53);
  (v1)(v54, v4);
  v56 = v54[0];
  v57 = v54[1];
  v58 = v54[2];
  v59 = v54[3];
  v5 = DBAssetModel.AssetDataHelper.dataFutureFor(_:)(0x6B7261642D2DLL, 0xE600000000000000);
  v7 = v6;
  v8 = outlined destroy of DBAssetModel.AssetDataHelper(v54);
  (v1)(v55, v8);
  v56 = v55[0];
  v57 = v55[1];
  v58 = v55[2];
  v59 = v55[3];
  v9 = DBAssetModel.AssetDataHelper.urlFutureFor(_:)(0x746867696C2D2DLL, 0xE700000000000000);
  v11 = v10;
  v12 = outlined destroy of DBAssetModel.AssetDataHelper(v55);
  (v1)(&v56, v12);
  v49 = v56;
  v50 = v57;
  v51 = v58;
  v52 = v59;
  v13 = DBAssetModel.AssetDataHelper.urlFutureFor(_:)(0x6B7261642D2DLL, 0xE600000000000000);
  v15 = v14;
  outlined destroy of DBAssetModel.AssetDataHelper(&v56);
  v42 = v2;
  if (v2)
  {
    v16 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
    v17 = type metadata accessor for Image();
    v18 = objc_allocWithZone(v17);
    UUID.init()();
    v46 = v9;
    v19 = OBJC_IVAR____TtC9MomentsUI5Image__primaryURL;
    v40 = v15;
    v41 = v13;
    v20 = v11;
    v21 = type metadata accessor for URL();
    v22 = v5;
    v23 = *(*(v21 - 8) + 56);
    v23(&v18[v19], 1, 1, v21);
    v23(&v18[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v21);
    v24 = &v18[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
    *v24 = v42;
    v24[1] = v44;
    v25 = &v18[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
    *v25 = v22;
    v25[1] = v7;
    v26 = &v18[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
    *v26 = v46;
    v26[1] = v20;
    v27 = &v18[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
    *v27 = v41;
    v27[1] = v40;
    v18[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = 0;
    v18[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v16;
    v47.receiver = v18;
    v47.super_class = v17;
    return objc_msgSendSuper2(&v47, sel_init);
  }

  else if (v5)
  {
    v43 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
    v45 = type metadata accessor for Image();
    v29 = objc_allocWithZone(v45);
    v30 = v5;
    _sSuSgIegd_SgWOy_0(v13);
    _sSuSgIegd_SgWOy_0(v5);
    UUID.init()();
    v31 = OBJC_IVAR____TtC9MomentsUI5Image__primaryURL;
    v32 = type metadata accessor for URL();
    v33 = v7;
    v34 = *(*(v32 - 8) + 56);
    v34(&v29[v31], 1, 1, v32);
    v34(&v29[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v32);
    v35 = &v29[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
    *v35 = v30;
    v35[1] = v33;
    v36 = &v29[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
    *v36 = v30;
    v36[1] = v33;
    v37 = &v29[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
    *v37 = v13;
    v37[1] = v15;
    v38 = &v29[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
    *v38 = v13;
    v38[1] = v15;
    v29[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = 0;
    v29[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v43;
    _sSuSgIegd_SgWOy_0(v30);
    _sSuSgIegd_SgWOy_0(v13);
    _sSuSgIegd_SgWOy_0(v30);
    v48.receiver = v29;
    v48.super_class = v45;
    v39 = objc_msgSendSuper2(&v48, sel_init);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v30);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v13);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v30);
    return v39;
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v13);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
    return 0;
  }
}

Swift::Int DBAssetModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 384))(v2);
  return Hasher._finalize()();
}

uint64_t DBAssetModel.ColorScheme.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B7261642D2DLL;
  }

  else
  {
    return 0x746867696C2D2DLL;
  }
}

uint64_t DBAssetModelType.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  switch(v2 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v2 &= 0xFFFFFFFFFFFFFFFuLL;
      break;
    default:
      break;
  }

  v4 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t DBAssetModelType.toBase.getter()
{
  v1 = *v0;
  switch(*v0 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v1 = *v0 & 0xFFFFFFFFFFFFFFFLL;
      break;
    default:
      break;
  }

  return v1;
}

uint64_t DBAssetModelType.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0x63416E6F69746F6DLL;
      break;
    case 3:
      result = 0x74756F6B726F77;
      break;
    case 4:
      result = 0x4D664F6574617473;
      break;
    case 5:
      result = 0x726946616964656DLL;
      break;
    case 6:
      result = 0x696854616964656DLL;
      break;
    case 7:
      result = 0x6F746F6870;
      break;
    case 8:
      result = 0x697463656C666572;
      break;
    case 9:
      result = 0x746F68506576696CLL;
      break;
    case 10:
      result = 0x6F65646976;
      break;
    case 11:
      result = 0x746361746E6F63;
      break;
    case 12:
      result = 0x726574736F70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBAssetModelType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized DBAssetModelType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.ContactCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.ContactCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.LivePhotoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.LivePhotoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.MapCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.MapCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.MediaFirstPartyCodingKeys(uint64_t a1)
{
  PartyCoding = lazy protocol witness table accessor for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys();

  return MEMORY[0x2821FE718](a1, PartyCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.MediaFirstPartyCodingKeys(uint64_t a1)
{
  PartyCoding = lazy protocol witness table accessor for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys();

  return MEMORY[0x2821FE720](a1, PartyCoding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.MediaThirdPartyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.MediaThirdPartyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.MotionActivityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.MotionActivityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.PhotoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.PhotoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.PosterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.PosterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.ReflectionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.ReflectionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.StateOfMindCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.StateOfMindCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.VideoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.VideoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.WorkoutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.WorkoutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBAssetModelType.encode(to:)(void *a1)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO16PosterCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v31[9] = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v31 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO17ContactCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v31[8] = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v31 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO15VideoCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v31[7] = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v31 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO19LivePhotoCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v31[6] = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v31 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO20ReflectionCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v31[5] = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v31 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO15PhotoCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v31[4] = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v31 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO25MediaThirdPartyCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v31[3] = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v31 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO25MediaFirstPartyCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v31[2] = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v31 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO21StateOfMindCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v31[1] = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = v31 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO17WorkoutCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v31[0] = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v31 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO24MotionActivityCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = v31 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO13MapCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v33 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO17UnknownCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v32 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v31 - v18;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16DBAssetModelTypeO10CodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v21 = v31 - v20;
  v22 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys();
  v58 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v22 >> 60)
  {
    case 1uLL:
      LOBYTE(v63) = 1;
      lazy protocol witness table accessor for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys();
      v29 = v58;
      v28 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBMapModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBMapModel and conformance DBAssetModel, type metadata accessor for DBMapModel);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v33 + 8))(v16, v14);
      return (*(v57 + 8))(v29, v28);
    case 2uLL:
      LOBYTE(v63) = 2;
      lazy protocol witness table accessor for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys();
      v25 = v34;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBMotionActivityModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBMotionActivityModel and conformance DBAssetModel, type metadata accessor for DBMotionActivityModel);
      v26 = v36;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v64;
      goto LABEL_15;
    case 3uLL:
      LOBYTE(v63) = 3;
      lazy protocol witness table accessor for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys();
      v25 = v37;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBWorkoutModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBWorkoutModel and conformance DBAssetModel, type metadata accessor for DBWorkoutModel);
      v26 = v38;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v54;
      goto LABEL_15;
    case 4uLL:
      LOBYTE(v63) = 4;
      lazy protocol witness table accessor for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys();
      v25 = v39;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBStateOfMindModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBStateOfMindModel and conformance DBAssetModel, type metadata accessor for DBStateOfMindModel);
      v26 = v40;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v55;
      goto LABEL_15;
    case 5uLL:
      LOBYTE(v63) = 5;
      lazy protocol witness table accessor for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys();
      v25 = v41;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBMediaFirstPartyModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBMediaFirstPartyModel and conformance DBAssetModel, type metadata accessor for DBMediaFirstPartyModel);
      v26 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v56;
      goto LABEL_15;
    case 6uLL:
      LOBYTE(v63) = 6;
      lazy protocol witness table accessor for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys();
      v25 = v43;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBMediaThirdPartyModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBMediaThirdPartyModel and conformance DBAssetModel, type metadata accessor for DBMediaThirdPartyModel);
      v26 = v44;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v57;
      goto LABEL_15;
    case 7uLL:
      LOBYTE(v63) = 7;
      lazy protocol witness table accessor for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys();
      v25 = v45;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBPhotoModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBPhotoModel and conformance DBAssetModel, type metadata accessor for DBPhotoModel);
      v26 = v46;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v58;
      goto LABEL_15;
    case 8uLL:
      LOBYTE(v63) = 8;
      lazy protocol witness table accessor for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys();
      v25 = v47;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBReflectionModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBReflectionModel and conformance DBAssetModel, type metadata accessor for DBReflectionModel);
      v26 = v48;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v59;
      goto LABEL_15;
    case 9uLL:
      LOBYTE(v63) = 9;
      lazy protocol witness table accessor for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys();
      v25 = v49;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBLivePhotoModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBLivePhotoModel and conformance DBAssetModel, type metadata accessor for DBLivePhotoModel);
      v26 = v50;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v60;
      goto LABEL_15;
    case 0xAuLL:
      LOBYTE(v63) = 10;
      lazy protocol witness table accessor for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys();
      v25 = v51;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBVideoModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBVideoModel and conformance DBAssetModel, type metadata accessor for DBVideoModel);
      v26 = v52;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v61;
      goto LABEL_15;
    case 0xBuLL:
      LOBYTE(v63) = 11;
      lazy protocol witness table accessor for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys();
      v25 = v53;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBContactModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBContactModel and conformance DBAssetModel, type metadata accessor for DBContactModel);
      v26 = v54;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v62;
      goto LABEL_15;
    case 0xCuLL:
      LOBYTE(v63) = 12;
      lazy protocol witness table accessor for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys();
      v25 = v55;
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22 & 0xFFFFFFFFFFFFFFFLL;
      type metadata accessor for DBPosterModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBPosterModel and conformance DBAssetModel, type metadata accessor for DBPosterModel);
      v26 = v56;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = &v63;
LABEL_15:
      (*(*(v27 - 32) + 8))(v25, v26);
      break;
    default:
      LOBYTE(v63) = 0;
      lazy protocol witness table accessor for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys();
      v24 = v58;
      v23 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = v22;
      type metadata accessor for DBAssetModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetModel and conformance DBAssetModel, type metadata accessor for DBAssetModel);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v32 + 8))(v19, v17);
      break;
  }

  return (*(v57 + 8))(v24, v23);
}

uint64_t DBAssetModelType.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v163 = a2;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI16DBAssetModelTypeO16UnknownCodingKey33_FD191C5A56C656085764A699ABC762EBLLVGMd);
  v168 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  *&v188 = &v154 - v3;
  v162 = type metadata accessor for Date();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v185 = &v154 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v184 = &v154 - v8;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v164 = *(v183 - 8);
  v9 = MEMORY[0x28223BE20](v183);
  v156 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v154 - v11;
  v178 = type metadata accessor for DateInterval();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v166 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v169 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v175 = &v154 - v16;
  v189 = type metadata accessor for UUID();
  v176 = *(v189 - 8);
  v17 = MEMORY[0x28223BE20](v189);
  v170 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v174 = &v154 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v173 = &v154 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v182 = &v154 - v24;
  MEMORY[0x28223BE20](v23);
  v172 = &v154 - v25;
  v26 = type metadata accessor for DecodingError.Context();
  v179 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI16DBAssetModelTypeO11_0CodingKey33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v167 = *(v181 - 1);
  v29 = MEMORY[0x28223BE20](v181);
  *&v186 = &v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = (&v154 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI16DBAssetModelTypeO10CodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v154 - v35;
  v37 = a1[3];
  v171 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  lazy protocol witness table accessor for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys();
  v38 = v180;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v39 = v38;
  if (!v38)
  {
    v180 = v32;
    v40 = *(KeyedDecodingContainer.allKeys.getter() + 16);

    v41 = v179;
    if (v40 == 1)
    {
      v42 = KeyedDecodingContainer.allKeys.getter();
      if (*(v42 + 16))
      {
        v43 = *(v42 + 32);

        LOBYTE(v190) = v43;
        lazy protocol witness table accessor for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v44 = v36;
        v50 = v188;
        v51 = v171;
        v62 = v33;
        v64 = v44;
        v49 = v181;
        switch(v43)
        {
          case 1:
            type metadata accessor for DBMapModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBMapModel and conformance DBAssetModel, type metadata accessor for DBMapModel);
            v148 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v148, v49);
            (*(v34 + 8))(v64, v62);
            v136 = v190 | 0x1000000000000000;
            goto LABEL_46;
          case 2:
            type metadata accessor for DBMotionActivityModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBMotionActivityModel and conformance DBAssetModel, type metadata accessor for DBMotionActivityModel);
            v145 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v145, v49);
            (*(v34 + 8))(v64, v62);
            v136 = v190 | 0x2000000000000000;
            goto LABEL_46;
          case 3:
            type metadata accessor for DBWorkoutModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBWorkoutModel and conformance DBAssetModel, type metadata accessor for DBWorkoutModel);
            v146 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v146, v49);
            (*(v34 + 8))(v64, v62);
            v136 = v190 | 0x3000000000000000;
            goto LABEL_46;
          case 4:
            type metadata accessor for DBStateOfMindModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBStateOfMindModel and conformance DBAssetModel, type metadata accessor for DBStateOfMindModel);
            v142 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v142, v49);
            (*(v34 + 8))(v64, v62);
            v136 = v190 | 0x4000000000000000;
            goto LABEL_46;
          case 5:
            type metadata accessor for DBMediaFirstPartyModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBMediaFirstPartyModel and conformance DBAssetModel, type metadata accessor for DBMediaFirstPartyModel);
            v149 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v149, v49);
            (*(v34 + 8))(v64, v62);
            v140 = v190;
            v141 = 0x5000000000000000;
            goto LABEL_63;
          case 6:
            type metadata accessor for DBMediaThirdPartyModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBMediaThirdPartyModel and conformance DBAssetModel, type metadata accessor for DBMediaThirdPartyModel);
            v150 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v150, v49);
            (*(v34 + 8))(v64, v62);
            v136 = v190 | 0x6000000000000000;
            goto LABEL_46;
          case 7:
            type metadata accessor for DBPhotoModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBPhotoModel and conformance DBAssetModel, type metadata accessor for DBPhotoModel);
            v147 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v147, v49);
            (*(v34 + 8))(v64, v62);
            v136 = v190 | 0x7000000000000000;
            goto LABEL_46;
          case 8:
            type metadata accessor for DBReflectionModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBReflectionModel and conformance DBAssetModel, type metadata accessor for DBReflectionModel);
            v60 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            goto LABEL_67;
          case 9:
            type metadata accessor for DBLivePhotoModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBLivePhotoModel and conformance DBAssetModel, type metadata accessor for DBLivePhotoModel);
            v144 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v144, v49);
            (*(v34 + 8))(v64, v62);
            v140 = v190;
            v141 = 0x9000000000000000;
            goto LABEL_63;
          case 10:
            type metadata accessor for DBVideoModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBVideoModel and conformance DBAssetModel, type metadata accessor for DBVideoModel);
            v151 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v151, v49);
            (*(v34 + 8))(v64, v62);
            v140 = v190;
            v141 = 0xA000000000000000;
            goto LABEL_63;
          case 11:
            goto LABEL_51;
          case 12:
            type metadata accessor for DBPosterModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBPosterModel and conformance DBAssetModel, type metadata accessor for DBPosterModel);
            v143 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v143, v49);
            (*(v34 + 8))(v64, v62);
            v136 = v190 | 0xC000000000000000;
            goto LABEL_46;
          default:
            type metadata accessor for DBAssetModel();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetModel and conformance DBAssetModel, type metadata accessor for DBAssetModel);
            v138 = v180;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v167 + 8))(v138, v49);
            (*(v34 + 8))(v64, v62);
            v136 = v190;
            goto LABEL_46;
        }
      }
    }

    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v45 = type metadata accessor for DecodingError();
    v39 = swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd) + 48);
    *v47 = &type metadata for DBAssetModelType;
    (*(v41 + 16))(&v47[v48], v28, v26);
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    (*(v41 + 8))(v28, v26);
    (*(v34 + 8))(v36, v33);
  }

  v49 = 0;
  v50 = v188;
  v51 = v171;
  while (2)
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static CommonLogger.processing);
    v53 = v39;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      v58 = v39;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v59;
      *v57 = v59;
      _os_log_impl(&dword_21607C000, v54, v55, "Failed to decode DBAssetModel, error=%@", v56, 0xCu);
      outlined destroy of UTType?(v57, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v57, -1, -1);
      MEMORY[0x21CE94770](v56, -1, -1);
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1(v51, *(v51 + 24));
    lazy protocol witness table accessor for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    v60 = v50;
    v61 = KeyedDecodingContainer.allKeys.getter();
    v62 = v61;
    v34 = *(v61 + 16);
    v63 = v182;
    if (v34)
    {
      v180 = (v167 + 8);
      v51 = v61 + 56;
      v64 = &unk_2828E0238;
      v65 = v186;
      if (*(v61 + 16))
      {
        v67 = *(v61 + 48);
        v66 = *v51;
        v68 = *(v61 + 40);
        v190 = *(v61 + 32);
        v191 = v68;
        v192 = v67;
        v193 = v66;
        lazy protocol witness table accessor for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for DBAssetModel();
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetModel and conformance DBAssetModel, type metadata accessor for DBAssetModel);
        v69 = v181;
        KeyedDecodingContainer.decode<A>(_:forKey:)();

        (*(v168 + 8))(v188, v187);
        (*v180)(v65, v69);
        v136 = v190;
        v51 = v171;
        v137 = v163;
LABEL_47:
        *v137 = v136;
        return __swift_destroy_boxed_opaque_existential_1(v51);
      }

      __break(1u);
LABEL_67:
      (*(v167 + 8))(v60, v49);
      (*(v34 + 8))(v64, v62);
      v136 = v190 | 0x8000000000000000;
LABEL_46:
      v137 = v163;
      goto LABEL_47;
    }

    (*(v168 + 8))(v188, v187);
    v70 = v189;
    v71 = v172;
    UUID.init()();
    v72 = type metadata accessor for DBAssetModel();
    static DBAssetModel.subscript.getter(v72, &v195);
    LODWORD(v188) = v195;
    v73 = v177;
    v74 = v178;
    (*(v177 + 56))(v175, 1, 1, v178);
    UUID.init()();
    v75 = MEMORY[0x277D84F90];
    v76 = v63;
    v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v165 = v75;
    v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(v75);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v190 = v77;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v78, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v190);
    v187 = 0;

    v179 = v190;
    v80 = *(v176 + 16);
    v80(v173, v76, v70);
    v80(v174, v71, v70);
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v81 = static ScreenSize.zero;
    v82 = v169;
    outlined init with copy of DateInterval?(v175, v169, &_s10Foundation12DateIntervalVSgMd);
    v83 = *(v73 + 48);
    if (v83(v82, 1, v74) == 1)
    {
      v84 = v81;
      v85 = v166;
      DateInterval.init()();
      if (v83(v82, 1, v74) != 1)
      {
        outlined destroy of UTType?(v82, &_s10Foundation12DateIntervalVSgMd);
      }
    }

    else
    {
      v86 = *(v73 + 32);
      v85 = v166;
      v86(v166, v82, v74);
      v87 = v81;
    }

    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    *&v186 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
    v88 = v189;
    v80((v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id), v173, v189);
    v181 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
    v80((v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID), v174, v88);
    *(v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v188;
    v89 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport;
    *(v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v81;
    *(v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = MEMORY[0x277D84F90];
    v90 = (v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
    *v90 = 0;
    v90[1] = 0xE000000000000000;
    v91 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval;
    (*(v177 + 16))(v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval, v85, v178);
    v159 = v81;
    v92 = v179;
    v93 = v187;
    v94 = specialized Dictionary.compactMapValues<A>(_:)(v179);
    v157 = v93;
    if (!v93)
    {
      *(v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v94;
      *(v64 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
      v95 = v94;
      swift_beginAccess();
      v187 = v64;
      *(v64 + 16) = 0;
      v39 = (v92 + 64);
      v96 = 1 << *(v92 + 32);
      v97 = -1;
      if (v96 < 64)
      {
        v97 = ~(-1 << v96);
      }

      v49 = v97 & *(v92 + 64);
      v98 = (v96 + 63) >> 6;
      v181 = (v176 + 48);
      v168 = v176 + 32;
      v34 = v164 + 56;
      v180 = (v164 + 48);
      v158 = v95;

      v99 = 0;
      v62 = v189;
      v50 = v92;
      *&v186 = v98;
      v169 = (v92 + 64);
      v167 = v34;
      while (v49)
      {
        v51 = v99;
LABEL_31:
        v100 = __clz(__rbit64(v49)) | (v51 << 6);
        v101 = *(*(v50 + 56) + 8 * v100);
        v102 = *(*v101 + 192);
        *&v188 = *(*(v50 + 48) + 16 * v100 + 8);

        v104 = v185;
        v102(v103);
        if ((*v181)(v104, 1, v62) == 1)
        {
          outlined destroy of UTType?(v104, &_s10Foundation4UUIDVSgMd);
          v105 = v184;
          v64 = v183;
          (*v34)(v184, 1, 1, v183);
        }

        else
        {
          v106 = *v168;
          v107 = v170;
          (*v168)(v170, v104, v62);
          v64 = v183;
          v108 = *(v183 + 48);
          v105 = v184;
          v109 = v107;
          v50 = v179;
          v106(v184, v109, v189);
          v34 = v167;
          v39 = v169;
          *(v105 + v108) = v101;
          v62 = v189;
          (*v34)(v105, 0, 1, v64);
        }

        v49 &= v49 - 1;

        if ((*v180)(v105, 1, v64) == 1)
        {
          outlined destroy of UTType?(v105, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
          v99 = v51;
          v98 = v186;
        }

        else
        {
          v110 = v105;
          v111 = v155;
          outlined init with take of (UUID, DBAssetData)(v110, v155);
          outlined init with take of (UUID, DBAssetData)(v111, v156);
          v112 = v34;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v165[2] + 1, 1, v165);
          }

          v114 = v165[2];
          v113 = v165[3];
          if (v114 >= v113 >> 1)
          {
            v165 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v113 > 1, v114 + 1, 1, v165);
          }

          v115 = v165;
          v165[2] = v114 + 1;
          outlined init with take of (UUID, DBAssetData)(v156, v115 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v114);
          v99 = v51;
          v98 = v186;
          v34 = v112;
        }
      }

      while (1)
      {
        v51 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          break;
        }

        if (v51 >= v98)
        {

          if (v165[2])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
            v116 = static _DictionaryStorage.allocate(capacity:)();
          }

          else
          {
            v116 = MEMORY[0x277D84F98];
          }

          v51 = v171;
          v117 = v166;
          v118 = v187;
          v194 = v116;

          v120 = v157;
          specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v119, 1, &v194);
          if (!v120)
          {

            v121 = v194;
            v122 = swift_allocObject();
            *(v122 + 16) = v121;
            v123 = (v118 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
            *v123 = partial apply for closure #1 in DBAssetModel.init(from:);
            v123[1] = v122;
            v124 = swift_allocObject();
            *(v124 + 16) = v121;
            v125 = (v187 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
            *v125 = partial apply for closure #2 in DBAssetModel.init(from:);
            v125[1] = v124;
            v126 = (v187 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
            *v126 = closure #3 in DBAssetModel.init(from:);
            v126[1] = 0;
            v127 = swift_allocObject();
            *(v127 + 16) = v158;
            swift_beginAccess();
            v188 = *v123;
            swift_beginAccess();
            v186 = *v125;
            swift_beginAccess();
            v128 = *v126;
            v129 = v126[1];
            v130 = v187 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
            *v130 = partial apply for closure #4 in DBAssetModel.init(from:);
            *(v130 + 8) = v127;
            v131 = v186;
            *(v130 + 16) = v188;
            *(v130 + 32) = v131;
            *(v130 + 48) = v128;
            *(v130 + 56) = v129;

            v132 = v160;
            static Date.now.getter();

            (*(v177 + 8))(v117, v178);
            v133 = *(v176 + 8);
            v134 = v189;
            v133(v174, v189);
            v133(v173, v134);
            v133(v182, v134);
            outlined destroy of UTType?(v175, &_s10Foundation12DateIntervalVSgMd);
            v133(v172, v134);
            v136 = v187;
            (*(v161 + 32))(v187 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v132, v162);
            goto LABEL_46;
          }

          goto LABEL_69;
        }

        v49 = *(v39 + v51);
        ++v99;
        if (v49)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_51:
      type metadata accessor for DBContactModel();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBContactModel and conformance DBAssetModel, type metadata accessor for DBContactModel);
      v139 = v180;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      if (v39)
      {
        (*(v167 + 8))(v139, v49);
        (*(v34 + 8))(v64, v62);
        v49 = 0;
        continue;
      }

      (*(v167 + 8))(v139, v49);
      (*(v34 + 8))(v64, v62);
      v140 = v190;
      v141 = 0xB000000000000000;
LABEL_63:
      v136 = v140 | v141;
      goto LABEL_46;
    }

    break;
  }

  v152 = *(v176 + 8);
  v153 = v189;
  v152((v64 + v186), v189);
  v152(&v181[v64], v153);

  (*(v177 + 8))(v64 + v91, v178);
  swift_deallocPartialClassInstance();
  __break(1u);
LABEL_69:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance DBAssetModelType@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  switch(v2 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v2 &= 0xFFFFFFFFFFFFFFFuLL;
      break;
    default:
      break;
  }

  v4 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBAssetModelType.ContactCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType._0CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType._0CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DBAssetModelType.UnknownCodingKey()
{
  v1 = *(v0 + 16);

  return v1;
}

double protocol witness for CodingKey.init(stringValue:) in conformance DBAssetModelType.UnknownCodingKey@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = xmmword_2165916F0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

double protocol witness for CodingKey.init(intValue:) in conformance DBAssetModelType.UnknownCodingKey@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModelType.UnknownCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModelType.UnknownCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBAssetModel.__allocating_init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:previousAssetData:children:renderState:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12)
{
  v66 = a8;
  v63 = a7;
  v64 = a6;
  v71 = a4;
  v72 = a2;
  v69 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v53 - v15;
  v59 = type metadata accessor for DateInterval();
  v68 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v62 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  LODWORD(v54) = *a3;
  v56 = *a12;
  v65 = a9;
  v24 = specialized static DBAssetModel.baseImage2DB(_:)(a9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74[0] = a10;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v24, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v74);

  v26 = v74[0];
  v27 = *(v18 + 16);
  v28 = v69;
  v27(v23, v69, v17);
  v27(v21, v72, v17);
  v73[0] = v54;
  v29 = v71;
  v30 = v28;
  v60 = v21;
  v61 = v18;
  v57 = v17;
  v58 = v23;
  v55 = v26;
  if (!v71)
  {
    v32 = v70;
    v33 = v68;
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v31 = v30;
    v54 = static ScreenSize.zero;
    v34 = *(a5 + 16);
    if (v34)
    {
      goto LABEL_3;
    }

LABEL_11:
    v41 = v29;

    v36 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v31 = v28;
  v54 = v71;
  v32 = v70;
  v33 = v68;
  v34 = *(a5 + 16);
  if (!v34)
  {
    goto LABEL_11;
  }

LABEL_3:
  v74[0] = MEMORY[0x277D84F90];
  v35 = v29;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
  v32 = v70;
  v36 = v74[0];
  v37 = *(v74[0] + 16);
  v38 = 32;
  do
  {
    v39 = *(a5 + v38);
    v74[0] = v36;
    v40 = *(v36 + 24);
    if (v37 >= v40 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v37 + 1, 1);
      v32 = v70;
      v36 = v74[0];
    }

    *(v36 + 16) = v37 + 1;
    *(v36 + v37 + 32) = v39;
    ++v38;
    ++v37;
    --v34;
  }

  while (v34);

  v33 = v68;
  v31 = v69;
LABEL_12:
  v42 = v66;
  outlined init with copy of DateInterval?(v66, v32, &_s10Foundation12DateIntervalVSgMd);
  v43 = *(v33 + 48);
  v44 = v59;
  v45 = v43(v32, 1, v59);
  v46 = v62;
  if (v45 == 1)
  {
    DateInterval.init()();
    if (v43(v32, 1, v44) != 1)
    {
      outlined destroy of UTType?(v32, &_s10Foundation12DateIntervalVSgMd);
    }
  }

  else
  {
    (*(v33 + 32))(v62, v32, v44);
  }

  if (v63)
  {
    v47 = v63;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  if (v63)
  {
    v48 = v64;
  }

  else
  {
    v48 = 0;
  }

  LOBYTE(v74[0]) = v56;
  v49 = (*(v67 + 360))(v58, v60, v73, v54, v36, v48, v47, v46, v55, a11, v74, 0, 0);

  outlined destroy of UTType?(v42, &_s10Foundation12DateIntervalVSgMd);
  v50 = *(v61 + 8);
  v51 = v57;
  v50(v72, v57);
  v50(v31, v51);
  return v49;
}

uint64_t DBAssetModelEnum.rawValue.getter(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x746F68506576696CLL;
      break;
    case 2:
      result = 7364973;
      break;
    case 3:
      result = 0x69746C754D70616DLL;
      break;
    case 4:
      result = 0x726946616964656DLL;
      break;
    case 5:
      result = 0x696854616964656DLL;
      break;
    case 6:
      result = 0x63416E6F69746F6DLL;
      break;
    case 7:
      result = 0x6F746F6870;
      break;
    case 8:
      result = 0x697463656C666572;
      break;
    case 9:
      result = 0x726574736F70;
      break;
    case 10:
      result = 0x4D664F6574617473;
      break;
    case 11:
      result = 0x6F65646976;
      break;
    case 12:
      result = 0x74756F6B726F77;
      break;
    case 13:
      result = 0x4774756F6B726F77;
      break;
    case 14:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}